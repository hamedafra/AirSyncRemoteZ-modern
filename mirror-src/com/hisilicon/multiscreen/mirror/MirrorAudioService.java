package com.hisilicon.multiscreen.mirror;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.media.MediaMetadata;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.PowerManager;
import android.util.Log;

/**
 * Keeps the mirror's sound playing while the app is in the background or the screen is off, like a music app:
 * a foreground service with a notification (pause/play, stop; also on the lock screen), a CPU wake lock
 * and a Wi-Fi lock. Pauses for calls and other players (audio focus) and when headphones are unplugged.
 * A media session receives the play/pause buttons of headphones and Bluetooth devices.
 * The stream itself keeps running in {@link MirrorStream}; "pause" mutes it, since it is live.
 */
public class MirrorAudioService extends Service {
    private static final String TAG = "MirrorAudioService";
    private static final String CHANNEL = "mirror_audio";
    private static final int NOTIFICATION_ID = 0x4d41;
    private static final String ACTION_PAUSE = "com.aloys.formuler.airsyncremote.mirror.PAUSE";
    private static final String ACTION_PLAY = "com.aloys.formuler.airsyncremote.mirror.PLAY";
    private static final String ACTION_STOP = "com.aloys.formuler.airsyncremote.mirror.STOP";
    /** Stop when the STB has sent no sound for this long (it was switched off or stopped mirroring). */
    private static final long SILENT_STOP_MS = 15_000;

    private static MirrorAudioService sInstance;

    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private PowerManager.WakeLock mWakeLock;
    private WifiManager.WifiLock mWifiLock;
    private AudioManager mAudioManager;
    private AudioFocusRequest mFocusRequest;
    private boolean mHasFocus;
    private boolean mResumeOnFocusGain;
    private boolean mNoisyRegistered;
    private boolean mFinished;
    private MediaSession mSession;
    private int mLastStartId;

    /** Starts the service (from the mirror screen's onPause, i.e. while the app is still in the foreground). */
    static void start(Context ctx) {
        Intent i = new Intent(ctx, MirrorAudioService.class);
        if (Build.VERSION.SDK_INT >= 26) {
            ctx.startForegroundService(i);
        } else {
            ctx.startService(i);
        }
    }

    /**
     * Ends the service. Never calls Context.stopService: a service started with startForegroundService must
     * reach startForeground first, so a service that is not created yet stops itself once it sees that the
     * background playback is over.
     */
    static void finish() {
        if (sInstance != null) {
            sInstance.shutdown();
        }
    }

    /** Creates the notification channel early (Android 13+ then asks for the notification permission). */
    public static void createChannel(Context ctx) {
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        try {
            NotificationChannel ch = new NotificationChannel(CHANNEL, "Mirror audio", NotificationManager.IMPORTANCE_LOW);
            ch.setDescription("Sound from the receiver while the app is in the background");
            ch.setShowBadge(false);
            ((NotificationManager) ctx.getSystemService(Context.NOTIFICATION_SERVICE)).createNotificationChannel(ch);
        } catch (Throwable t) {
            Log.w(TAG, "createChannel failed", t);
        }
    }

    @Override
    public void onCreate() {
        super.onCreate();
        setup();
    }

    /** Acquires everything; also used when a stopping instance is started again before it was destroyed. */
    private void setup() {
        mFinished = false;
        sInstance = this;
        createChannel(this);
        mAudioManager = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
        try {
            mWakeLock = ((PowerManager) getSystemService(Context.POWER_SERVICE))
                    .newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "AirSync:mirrorAudio");
            mWakeLock.setReferenceCounted(false);
            mWakeLock.acquire();
        } catch (Throwable t) {
            Log.w(TAG, "wake lock failed", t);
        }
        try {
            WifiManager wm = (WifiManager) getApplicationContext().getSystemService(Context.WIFI_SERVICE);
            mWifiLock = wm.createWifiLock(WifiManager.WIFI_MODE_FULL_HIGH_PERF, "AirSyncMirrorAudio");
            mWifiLock.setReferenceCounted(false);
            mWifiLock.acquire();
        } catch (Throwable t) {
            Log.w(TAG, "wifi lock failed", t);
        }
        try {
            registerReceiver(mNoisy, new IntentFilter(AudioManager.ACTION_AUDIO_BECOMING_NOISY));
            mNoisyRegistered = true;
        } catch (Throwable t) {
            Log.w(TAG, "noisy receiver failed", t);
        }
        createSession();
        requestFocus();
        mHandler.postDelayed(mWatchdog, 2000);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        // Always go foreground first (required after startForegroundService), even if we stop right away.
        try {
            startForeground(NOTIFICATION_ID, buildNotification());
        } catch (Throwable t) {
            Log.w(TAG, "startForeground failed", t);
        }
        mLastStartId = startId;
        if (!MirrorStream.isBackground()) {
            shutdown();
            try {
                stopForeground(true);
            } catch (Throwable ignored) {
            }
            stopSelfResult(startId);
            return START_NOT_STICKY;
        }
        if (mFinished) {
            setup(); // background again before this instance was destroyed
        }
        String action = intent == null ? null : intent.getAction();
        if (ACTION_PAUSE.equals(action)) {
            setPaused(true);
        } else if (ACTION_PLAY.equals(action)) {
            setPaused(false);
        } else if (ACTION_STOP.equals(action)) {
            stopPlayback();
        } else {
            updateState();
        }
        return START_NOT_STICKY;
    }

    @Override
    public void onTaskRemoved(Intent rootIntent) {
        // The app was swiped away from recents: stop like closing the mirror screen would.
        stopPlayback();
        super.onTaskRemoved(rootIntent);
    }

    @Override
    public void onDestroy() {
        shutdown();
        super.onDestroy();
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    private void stopPlayback() {
        MirrorStream.stopBackground(true);
        shutdown(); // in case the background state was already gone
    }

    private void setPaused(boolean paused) {
        if (mFinished) {
            return;
        }
        MirrorStream.sPaused = paused;
        mResumeOnFocusGain = false;
        if (!paused && !mHasFocus) {
            requestFocus();
        }
        updateState();
    }

    private void updateState() {
        if (mFinished) {
            return;
        }
        boolean paused = MirrorStream.sPaused;
        if (mSession != null) {
            try {
                // No position, duration or seek action: it is a live stream.
                mSession.setPlaybackState(new PlaybackState.Builder()
                        .setActions(PlaybackState.ACTION_PLAY | PlaybackState.ACTION_PAUSE | PlaybackState.ACTION_PLAY_PAUSE
                                | PlaybackState.ACTION_STOP)
                        .setState(paused ? PlaybackState.STATE_PAUSED : PlaybackState.STATE_PLAYING,
                                PlaybackState.PLAYBACK_POSITION_UNKNOWN, paused ? 0f : 1f)
                        .build());
            } catch (Throwable t) {
                Log.w(TAG, "playback state failed", t);
            }
        }
        try {
            ((NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE)).notify(NOTIFICATION_ID, buildNotification());
        } catch (Throwable t) {
            Log.w(TAG, "notify failed", t);
        }
    }

    @SuppressWarnings("deprecation")
    private Notification buildNotification() {
        boolean paused = MirrorStream.sPaused;
        Notification.Builder b = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(this, CHANNEL) : new Notification.Builder(this);
        b.setSmallIcon(paused ? android.R.drawable.ic_media_pause : android.R.drawable.ic_media_play)
                .setContentTitle("TV sound")
                .setContentText(paused ? "Paused" : "Playing from the receiver")
                .setLargeIcon(appIcon())
                .setContentIntent(openMirrorIntent())
                .setDeleteIntent(serviceIntent(ACTION_STOP, 3))
                .setOngoing(!paused)
                .setShowWhen(false)
                .setVisibility(Notification.VISIBILITY_PUBLIC)
                .setCategory(Notification.CATEGORY_TRANSPORT);
        b.addAction(new Notification.Action.Builder(
                paused ? android.R.drawable.ic_media_play : android.R.drawable.ic_media_pause,
                paused ? "Play" : "Pause",
                serviceIntent(paused ? ACTION_PLAY : ACTION_PAUSE, paused ? 1 : 2)).build());
        b.addAction(new Notification.Action.Builder(android.R.drawable.ic_menu_close_clear_cancel, "Stop",
                serviceIntent(ACTION_STOP, 3)).build());
        // Media layout (buttons visible when collapsed) but deliberately not linked to the media session: with
        // the link, Android shows a media player with a progress bar, which is meaningless for a live stream.
        b.setStyle(new Notification.MediaStyle().setShowActionsInCompactView(0, 1));
        if (Build.VERSION.SDK_INT >= 31) {
            b.setForegroundServiceBehavior(Notification.FOREGROUND_SERVICE_IMMEDIATE);
        }
        return b.build();
    }

    private PendingIntent serviceIntent(String action, int code) {
        Intent i = new Intent(this, MirrorAudioService.class).setAction(action);
        return PendingIntent.getService(this, code, i, PendingIntent.FLAG_UPDATE_CURRENT | pendingImmutable());
    }

    /** Tapping the notification returns to the mirror screen (it is still in the app's task). */
    private PendingIntent openMirrorIntent() {
        Intent i = new Intent();
        i.setClassName(this, "com.aloys.formuler.airsyncremote.MultiScreenActivity");
        i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        return PendingIntent.getActivity(this, 0, i, PendingIntent.FLAG_UPDATE_CURRENT | pendingImmutable());
    }

    private static int pendingImmutable() {
        return Build.VERSION.SDK_INT >= 23 ? PendingIntent.FLAG_IMMUTABLE : 0;
    }

    /** Media session for headphone / Bluetooth buttons only (not linked to the notification). */
    @SuppressWarnings("deprecation")
    private void createSession() {
        try {
            mSession = new MediaSession(this, "AirSyncMirror");
            mSession.setFlags(MediaSession.FLAG_HANDLES_MEDIA_BUTTONS | MediaSession.FLAG_HANDLES_TRANSPORT_CONTROLS);
            mSession.setCallback(new MediaSession.Callback() {
                @Override
                public void onPlay() {
                    setPaused(false);
                }

                @Override
                public void onPause() {
                    setPaused(true);
                }

                @Override
                public void onStop() {
                    stopPlayback();
                }
            });
            mSession.setMetadata(new MediaMetadata.Builder()
                    .putString(MediaMetadata.METADATA_KEY_TITLE, "TV sound")
                    .build());
            mSession.setActive(true);
        } catch (Throwable t) {
            Log.w(TAG, "media session failed", t);
            mSession = null;
        }
    }

    private Bitmap appIcon() {
        try {
            Drawable d = getApplicationInfo().loadIcon(getPackageManager());
            return d instanceof BitmapDrawable ? ((BitmapDrawable) d).getBitmap() : null;
        } catch (Throwable t) {
            return null;
        }
    }

    // ---------------------------------------------------------------- audio focus & headphones

    @SuppressWarnings("deprecation")
    private void requestFocus() {
        try {
            int r;
            if (Build.VERSION.SDK_INT >= 26) {
                if (mFocusRequest == null) {
                    mFocusRequest = new AudioFocusRequest.Builder(AudioManager.AUDIOFOCUS_GAIN)
                            .setAudioAttributes(new AudioAttributes.Builder()
                                    .setUsage(AudioAttributes.USAGE_MEDIA)
                                    .setContentType(AudioAttributes.CONTENT_TYPE_MOVIE)
                                    .build())
                            .setOnAudioFocusChangeListener(mFocusListener, mHandler)
                            .build();
                }
                r = mAudioManager.requestAudioFocus(mFocusRequest);
            } else {
                r = mAudioManager.requestAudioFocus(mFocusListener, AudioManager.STREAM_MUSIC, AudioManager.AUDIOFOCUS_GAIN);
            }
            mHasFocus = r == AudioManager.AUDIOFOCUS_REQUEST_GRANTED;
        } catch (Throwable t) {
            Log.w(TAG, "audio focus failed", t);
        }
    }

    @SuppressWarnings("deprecation")
    private void abandonFocus() {
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                if (mFocusRequest != null) {
                    mAudioManager.abandonAudioFocusRequest(mFocusRequest);
                }
            } else {
                mAudioManager.abandonAudioFocus(mFocusListener);
            }
        } catch (Throwable ignored) {
        }
        mHasFocus = false;
    }

    private final AudioManager.OnAudioFocusChangeListener mFocusListener = new AudioManager.OnAudioFocusChangeListener() {
        @Override
        public void onAudioFocusChange(int change) {
            if (mFinished) {
                return;
            }
            switch (change) {
                case AudioManager.AUDIOFOCUS_LOSS:
                    // Another player started: pause like music apps do.
                    mHasFocus = false;
                    MirrorStream.sPaused = true;
                    mResumeOnFocusGain = false;
                    updateState();
                    break;
                case AudioManager.AUDIOFOCUS_LOSS_TRANSIENT:
                    // A call or a voice prompt: pause and continue afterwards.
                    mHasFocus = false;
                    if (!MirrorStream.sPaused) {
                        MirrorStream.sPaused = true;
                        mResumeOnFocusGain = true;
                        updateState();
                    }
                    break;
                case AudioManager.AUDIOFOCUS_GAIN:
                    mHasFocus = true;
                    if (mResumeOnFocusGain) {
                        mResumeOnFocusGain = false;
                        MirrorStream.sPaused = false;
                        updateState();
                    }
                    break;
                default:
                    break; // LOSS_TRANSIENT_CAN_DUCK: the system lowers our volume itself
            }
        }
    };

    private final BroadcastReceiver mNoisy = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (AudioManager.ACTION_AUDIO_BECOMING_NOISY.equals(intent.getAction())) {
                setPaused(true); // headphones unplugged / Bluetooth disconnected: don't blast the speaker
            }
        }
    };

    private final Runnable mWatchdog = new Runnable() {
        @Override
        public void run() {
            if (mFinished) {
                return;
            }
            if (!MirrorStream.isBackground()) {
                shutdown();
                return;
            }
            if (MirrorStream.msSinceAudio() > SILENT_STOP_MS) {
                Log.i(TAG, "no sound from the receiver for " + SILENT_STOP_MS / 1000 + " s, stopping");
                stopPlayback();
                return;
            }
            mHandler.postDelayed(this, 2000);
        }
    };

    // ---------------------------------------------------------------- teardown

    @SuppressWarnings("deprecation")
    private void shutdown() {
        if (mFinished) {
            return;
        }
        mFinished = true;
        if (sInstance == this) {
            sInstance = null;
        }
        mHandler.removeCallbacks(mWatchdog);
        abandonFocus();
        if (mSession != null) {
            try {
                mSession.setActive(false);
                mSession.release();
            } catch (Throwable ignored) {
            }
            mSession = null;
        }
        if (mNoisyRegistered) {
            try {
                unregisterReceiver(mNoisy);
            } catch (Throwable ignored) {
            }
            mNoisyRegistered = false;
        }
        if (mWakeLock != null && mWakeLock.isHeld()) {
            mWakeLock.release();
        }
        if (mWifiLock != null && mWifiLock.isHeld()) {
            mWifiLock.release();
        }
        try {
            stopForeground(true);
        } catch (Throwable ignored) {
        }
        stopSelfResult(mLastStartId); // a newer start request (back in the background) keeps the service
    }
}
