package com.hisilicon.multiscreen.mirror;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import android.view.View;
import android.widget.TextView;

import java.io.ByteArrayOutputStream;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.LinkedBlockingDeque;

/**
 * Pure-Java replacement for the 32-bit libmirror50_jni.so, so the mirror works on 64-bit-only phones.
 *
 * The STB streams to UDP 8888 (H.264) and 8890 (AAC/ADTS). Every datagram starts with a 12-byte header:
 *   [1] bit 0x80 = last datagram of a frame, [2..3] sequence number (little endian).
 * The first datagram of each frame then carries a 12-byte frame header (little endian ints):
 *   type (1 = P frame, 5 = IDR, 7 = SPS/PPS, 10 = AAC), timestamp in ms, frame length.
 * The frame is the first {@code length} bytes of the concatenated datagram payloads.
 *
 * Playback: audio is played from a jitter buffer and is the master clock; each video frame is shown when the
 * audio with the same STB timestamp is playing, so lip sync holds for any buffer size. The buffer ("delay") is
 * small by default and grows automatically when the network delivers the stream with gaps ("smooth mode").
 */
public final class MirrorStream {
    private static final String TAG = "MirrorStream";
    private static final int VIDEO_PORT = 8888;
    private static final int AUDIO_PORT = 8890;

    private static final int TYPE_P = 1;
    private static final int TYPE_IDR = 5;
    private static final int TYPE_SPS_PPS = 7;
    private static final int TYPE_AAC = 10;

    /** Smooth-mode setting, stored in the app's existing settings file. */
    static final int MODE_AUTO = 0;
    static final int MODE_ON = 1;
    static final int MODE_OFF = 2;
    private static final String PREFS = "Setting_Status";
    private static final String KEY_SMOOTH = "mirror_smooth_mode";

    static final int DELAY_LOW_MS = 150;
    static final int DELAY_SMOOTH_MS = 300;
    static final int DELAY_MAX_MS = 450;

    private static final String KEY_BACKGROUND = "mirror_background_audio";

    private static VideoReceiver sVideo;
    private static AudioReceiver sAudio;
    static volatile boolean sAudioEnabled = true;
    static final PlaybackClock sClock = new PlaybackClock();

    /** The mirror screen is in the background and the stream keeps running for its sound. */
    private static volatile boolean sBackground;
    /** Paused from the notification / audio focus / headphones unplugged (live stream, so: muted). */
    static volatile boolean sPaused;
    /** The stream survived a trip to the background; the mirror screen must not start it again. */
    private static boolean sKeptStream;

    private MirrorStream() {
    }

    public static synchronized void startVideo(Surface surface) {
        if (surface == null || !surface.isValid()) {
            Log.w(TAG, "startVideo: no valid surface");
            stopVideo();
            return;
        }
        if (sVideo != null && sVideo.isAlive()) {
            // Back from the background: the stream is still running, just show it again.
            sVideo.attach(surface);
            return;
        }
        stopVideo();
        holdWifi(true);
        sClock.reset(readMode());
        sVideo = new VideoReceiver(surface);
        sVideo.start();
    }

    public static synchronized void stopVideo() {
        if (sBackground && sVideo != null) {
            // The screen went away but we keep playing the sound: keep receiving, stop drawing.
            sVideo.detach();
            return;
        }
        if (sVideo != null) {
            sVideo.shutdown();
            sVideo = null;
        }
        holdWifi(false);
    }

    public static synchronized void startAudio() {
        if (sAudio != null && sAudio.isAlive()) {
            return; // still playing from the background
        }
        stopAudio();
        sAudio = new AudioReceiver();
        sAudio.start();
    }

    public static synchronized void stopAudio() {
        if (sBackground) {
            return;
        }
        if (sAudio != null) {
            sAudio.shutdown();
            sAudio = null;
        }
        sClock.invalidateAudio();
    }

    public static void configAudio(int play) {
        sAudioEnabled = play != 0;
    }

    // ---------------------------------------------------------------- background audio

    /**
     * Called by the mirror screen's onPause instead of stopping the mirror. Returns true if the stream keeps
     * running in the background (sound only, with a media notification); false to stop it as before.
     */
    public static synchronized boolean enterBackground(Activity activity) {
        try {
            if (activity.isFinishing() || activity.isChangingConfigurations() || !readBackgroundSetting() || !sAudioEnabled || sAudio == null || !sAudio.isAlive()) {
                return false;
            }
            sBackground = true;
            sKeptStream = false;
            sPaused = false;
            sClock.setBackground(true);
            stat("background audio: on");
            MirrorAudioService.start(activity);
            return true;
        } catch (Throwable t) {
            Log.w(TAG, "enterBackground failed", t);
            sBackground = false;
            return false;
        }
    }

    /** Called when the mirror screen comes back (onResume). */
    public static synchronized void leaveBackground() {
        if (!sBackground) {
            return;
        }
        sBackground = false;
        sPaused = false;
        sClock.setBackground(false);
        MirrorAudioService.finish();
        sKeptStream = sAudio != null && sAudio.isAlive();
        if (!sKeptStream) {
            stopVideo();
            stopAudio();
        }
        stat("background audio: off (stream " + (sKeptStream ? "kept" : "lost") + ")");
    }

    /** True once after the stream survived the background: the mirror screen then skips StartMirror. */
    public static synchronized boolean takeKeptStream() {
        boolean k = sKeptStream;
        sKeptStream = false;
        return k;
    }

    /** The mirror screen was destroyed while in the background (e.g. by the system): stop everything. */
    public static void onMirrorScreenDestroyed() {
        stopBackground(true);
    }

    static synchronized boolean isBackground() {
        return sBackground;
    }

    /** Stops background playback (notification "Stop", app swiped away, stream gone) and the STB's mirror. */
    static void stopBackground(boolean stopStb) {
        synchronized (MirrorStream.class) {
            if (!sBackground) {
                return;
            }
            sBackground = false;
            sKeptStream = false;
            sPaused = false;
            sClock.setBackground(false);
            stopVideo();
            stopAudio();
            MirrorAudioService.finish();
            stat("background audio: stopped");
        }
        if (stopStb) {
            stopStbMirror();
        }
    }

    /** Asks the STB to stop mirroring, like the mirror screen's onPause did. */
    private static void stopStbMirror() {
        Thread t = new Thread("MirrorStop") {
            @Override
            public void run() {
                try {
                    Class<?> c = Class.forName("com.aloys.formuler.airsyncremote.MultiScreenControlService");
                    Object service = c.getMethod("getInstance").invoke(null);
                    if (service != null) {
                        c.getMethod("stopMirror", int.class).invoke(service, 1);
                    }
                } catch (Throwable t) {
                    Log.w(TAG, "stop mirror failed", t);
                }
            }
        };
        t.start();
        try {
            t.join(3000);
        } catch (InterruptedException ignored) {
        }
    }

    /** Milliseconds since the last audio datagram (Long.MAX_VALUE if none). */
    static long msSinceAudio() {
        AudioReceiver a = sAudio;
        long last = a == null ? 0 : a.sLastArrival;
        return last == 0 ? Long.MAX_VALUE : (System.nanoTime() - last) / 1_000_000L;
    }

    static boolean readBackgroundSetting() {
        Context ctx = appContext();
        return ctx == null || ctx.getSharedPreferences(PREFS, 0).getBoolean(KEY_BACKGROUND, true);
    }

    // ---------------------------------------------------------------- settings

    static Context appContext() {
        try {
            return (Context) Class.forName("com.aloys.formuler.airsyncremote.MyApp").getMethod("getApplication").invoke(null);
        } catch (Throwable t) {
            return null;
        }
    }

    static int readMode() {
        Context ctx = appContext();
        if (ctx == null) {
            return MODE_AUTO;
        }
        int m = ctx.getSharedPreferences(PREFS, 0).getInt(KEY_SMOOTH, MODE_AUTO);
        return m >= MODE_AUTO && m <= MODE_OFF ? m : MODE_AUTO;
    }

    private static String modeLabel(int m) {
        return m == MODE_ON ? "On" : m == MODE_OFF ? "Off" : "Auto";
    }

    /**
     * Hooks the added rows of the settings screen: "Smooth mirroring" (id set_smooth, tap cycles Auto/On/Off)
     * and "Background audio" (id set_bgaudio, an on/off switch like the app's own).
     */
    public static void attachSettings(final Activity activity) {
        try {
            final SharedPreferences prefs = activity.getSharedPreferences(PREFS, 0);
            int id = activity.getResources().getIdentifier("set_smooth", "id", activity.getPackageName());
            final TextView v = id == 0 ? null : (TextView) activity.findViewById(id);
            if (v != null) {
                v.setText(modeLabel(readMode()));
                v.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        int next = (readMode() + 1) % 3;
                        prefs.edit().putInt(KEY_SMOOTH, next).apply();
                        v.setText(modeLabel(next));
                    }
                });
            }
            id = activity.getResources().getIdentifier("set_bgaudio", "id", activity.getPackageName());
            final View b = id == 0 ? null : activity.findViewById(id);
            if (b != null) {
                final int on = activity.getResources().getIdentifier("mybox_setting_on", "drawable", activity.getPackageName());
                final int off = activity.getResources().getIdentifier("mybox_setting_off", "drawable", activity.getPackageName());
                b.setBackgroundResource(readBackgroundSetting() ? on : off);
                b.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        boolean next = !readBackgroundSetting();
                        prefs.edit().putBoolean(KEY_BACKGROUND, next).apply();
                        b.setBackgroundResource(next ? on : off);
                    }
                });
            }
        } catch (Throwable t) {
            Log.w(TAG, "attachSettings failed", t);
        }
    }

    // ---------------------------------------------------------------- wifi

    private static android.net.wifi.WifiManager.WifiLock sWifiLock;

    /** Keeps Wi-Fi out of power save while mirroring. */
    private static void holdWifi(boolean hold) {
        try {
            if (hold) {
                if (sWifiLock == null) {
                    Context ctx = appContext();
                    android.net.wifi.WifiManager wm = (android.net.wifi.WifiManager) ctx.getApplicationContext()
                            .getSystemService(Context.WIFI_SERVICE);
                    int mode = Build.VERSION.SDK_INT >= 29 ? android.net.wifi.WifiManager.WIFI_MODE_FULL_LOW_LATENCY
                            : android.net.wifi.WifiManager.WIFI_MODE_FULL_HIGH_PERF;
                    sWifiLock = wm.createWifiLock(mode, "AirSyncMirror");
                    sWifiLock.setReferenceCounted(false);
                }
                if (!sWifiLock.isHeld()) {
                    sWifiLock.acquire();
                }
            } else if (sWifiLock != null && sWifiLock.isHeld()) {
                sWifiLock.release();
            }
        } catch (Throwable t) {
            Log.w(TAG, "wifi lock failed", t);
        }
    }

    // ---------------------------------------------------------------- clock

    /**
     * Shared playback clock on the STB's timeline (ms). Audio is the master when it plays; otherwise a wall
     * clock derived from video arrival times is used. Also decides the buffer delay (smooth mode).
     */
    static final class PlaybackClock {
        private int mMode = MODE_AUTO;
        private volatile int mDelayMs = DELAY_LOW_MS;
        private boolean mDecided;
        private long mFirstArrivalMs = -1;
        private int mMaxGapMs;
        private int mBigGaps;
        private long mBigGapWindowStart;

        private long mOffsetMs = Long.MIN_VALUE; // minimum (arrival - pts) seen: network transit floor
        private long mOffsetCheckedMs;

        private boolean mAudioValid;
        private double mAudioPts;
        private long mAudioAtNs;
        private long mAudioSeenMs = -1;

        synchronized void reset(int mode) {
            mMode = mode;
            mDelayMs = mode == MODE_ON ? DELAY_SMOOTH_MS : DELAY_LOW_MS;
            mDecided = mode != MODE_AUTO;
            mFirstArrivalMs = -1;
            mMaxGapMs = 0;
            mBigGaps = 0;
            mOffsetMs = Long.MIN_VALUE;
            mAudioValid = false;
            mAudioSeenMs = -1;
            mForegroundDelayMs = -1;
            stat("smooth mode " + modeLabel(mode) + ", delay " + mDelayMs + " ms");
        }

        int delayMs() {
            return mDelayMs;
        }

        private int mForegroundDelayMs = -1;

        /**
         * With the screen off Wi-Fi power saving delivers packets in bursts, and without a picture latency does
         * not matter: in Auto mode use the larger buffer while in the background, and go back afterwards (the
         * audio level control then trims the extra latency within a few seconds).
         */
        synchronized void setBackground(boolean background) {
            if (background) {
                if (mMode == MODE_AUTO && mDelayMs < DELAY_SMOOTH_MS) {
                    mForegroundDelayMs = mDelayMs;
                    raise(DELAY_SMOOTH_MS, "background");
                }
            } else if (mForegroundDelayMs >= 0) {
                if (mDelayMs == DELAY_SMOOTH_MS) { // not raised further by real gaps meanwhile
                    mDelayMs = mForegroundDelayMs;
                    stat("smooth auto: delay -> " + mDelayMs + " ms (foreground again)");
                }
                mForegroundDelayMs = -1;
            }
        }

        synchronized void onVideoArrival(long pts) {
            long now = SystemClock.elapsedRealtime();
            if (mFirstArrivalMs < 0) {
                mFirstArrivalMs = now;
            }
            long transit = now - pts;
            if (mOffsetMs == Long.MIN_VALUE || transit < mOffsetMs) {
                mOffsetMs = transit;
                mOffsetCheckedMs = now;
            } else if (now - mOffsetCheckedMs > 2000) {
                mOffsetMs++; // follow slow clock drift between STB and phone
                mOffsetCheckedMs = now;
            }
        }

        synchronized void setAudioPosition(double pts, long atNs) {
            mAudioPts = pts;
            mAudioAtNs = atNs;
            mAudioValid = true;
        }

        synchronized void invalidateAudio() {
            mAudioValid = false;
        }

        synchronized boolean audioMaster() {
            return mAudioValid && System.nanoTime() - mAudioAtNs < 400_000_000L;
        }

        /** STB timestamp (ms) that should be on screen / in the speaker right now; NaN until known. */
        synchronized double nowPts() {
            long nowNs = System.nanoTime();
            if (mAudioValid && nowNs - mAudioAtNs < 400_000_000L) {
                return mAudioPts + (nowNs - mAudioAtNs) / 1e6;
            }
            if (mOffsetMs == Long.MIN_VALUE) {
                return Double.NaN;
            }
            return SystemClock.elapsedRealtime() - mOffsetMs - mDelayMs;
        }

        synchronized void onAudioArrival() {
            mAudioSeenMs = SystemClock.elapsedRealtime();
        }

        /**
         * A pause in packet arrival (or an audio underrun) of this length was seen. The audio stream never
         * pauses on its own, so it is the judge while it flows; video gaps only count without audio (a still
         * picture may legitimately send fewer video frames).
         */
        synchronized void onGap(int gapMs, boolean fromAudio) {
            if (mMode != MODE_AUTO || mFirstArrivalMs < 0) {
                return;
            }
            long now = SystemClock.elapsedRealtime();
            if (!fromAudio && mAudioSeenMs >= 0 && now - mAudioSeenMs < 1000) {
                return;
            }
            if (now - mFirstArrivalMs < 1000) {
                return; // stream start-up hiccups are normal
            }
            if (!mDecided) {
                mMaxGapMs = Math.max(mMaxGapMs, gapMs);
                return;
            }
            // Later on: only grow if gaps keep exceeding the cushion.
            if (gapMs > mDelayMs - 40 && mDelayMs < DELAY_MAX_MS) {
                if (now - mBigGapWindowStart > 20_000) {
                    mBigGapWindowStart = now;
                    mBigGaps = 0;
                }
                if (++mBigGaps >= 3) {
                    raise(Math.min(DELAY_MAX_MS, gapMs + 100), "gaps keep exceeding the buffer");
                    mBigGaps = 0;
                }
            }
        }

        /** Called regularly by the video receiver; makes the one-time automatic decision after 4 s. */
        synchronized void tick() {
            if (mDecided || mFirstArrivalMs < 0) {
                return;
            }
            if (SystemClock.elapsedRealtime() - mFirstArrivalMs >= 4000) {
                mDecided = true;
                if (mMaxGapMs >= 100) {
                    raise(Math.max(DELAY_LOW_MS + 50, Math.min(DELAY_MAX_MS, mMaxGapMs + 80)), "max gap " + mMaxGapMs + " ms in first seconds");
                } else {
                    stat("smooth auto: network steady (max gap " + mMaxGapMs + " ms), keeping " + mDelayMs + " ms");
                }
            }
        }

        private void raise(int delay, String why) {
            if (delay <= mDelayMs) {
                return;
            }
            mDelayMs = delay;
            stat("smooth auto: delay -> " + delay + " ms (" + why + ")");
        }
    }

    // ---------------------------------------------------------------- receiver base

    /** Receives datagrams on a port and reassembles them into frames. */
    abstract static class Receiver extends Thread {
        private final int mPort;
        volatile boolean mRunning = true;
        private DatagramSocket mSocket;

        private final ByteArrayOutputStream mFrame = new ByteArrayOutputStream(256 * 1024);
        private boolean mInFrame;
        private boolean mFrameBroken;
        private int mFrameType;
        private int mFrameTs;
        private int mFrameLen;
        private int mLastSeq = -1;

        long sLastArrival;

        Receiver(String name, int port) {
            super(name);
            mPort = port;
        }

        abstract void onFrame(int type, int timestampMs, byte[] data, int length);

        abstract void onIdle();

        abstract void release();

        /** {@code n} datagrams went missing; {@code midFrame} if they belonged to the frame being assembled. */
        void onDatagramsLost(int n, boolean midFrame) {
        }

        /** A frame was incomplete and dropped ({@code type} -1 if unknown). */
        void onBrokenFrame(int type) {
        }

        int threadPriority() {
            return Process.THREAD_PRIORITY_DISPLAY;
        }

        void shutdown() {
            mRunning = false;
            DatagramSocket s = mSocket;
            if (s != null) {
                s.close();
            }
            try {
                join(2000);
            } catch (InterruptedException ignored) {
            }
        }

        @Override
        public void run() {
            try {
                Process.setThreadPriority(threadPriority());
            } catch (Throwable ignored) {
            }
            byte[] buf = new byte[65536];
            DatagramPacket packet = new DatagramPacket(buf, buf.length);
            try {
                mSocket = new DatagramSocket(null);
                mSocket.setReuseAddress(true);
                mSocket.setReceiveBufferSize(4 * 1024 * 1024);
                mSocket.bind(new InetSocketAddress(mPort));
                mSocket.setSoTimeout(20);
                Log.i(TAG, getName() + " listening on UDP " + mPort);
                while (mRunning) {
                    try {
                        packet.setLength(buf.length);
                        mSocket.receive(packet);
                    } catch (java.net.SocketTimeoutException e) {
                        onIdle();
                        continue;
                    }
                    long arrival = System.nanoTime();
                    if (sLastArrival != 0) {
                        long gapNs = arrival - sLastArrival;
                        if (gapNs >= 60_000_000L) {
                            sClock.onGap((int) (gapNs / 1_000_000), mPort == AUDIO_PORT);
                        }
                    }
                    sLastArrival = arrival;
                    handleDatagram(buf, packet.getLength());
                    onIdle();
                }
            } catch (Exception e) {
                if (mRunning) {
                    Log.e(TAG, getName() + " stopped", e);
                }
            } finally {
                if (mSocket != null) {
                    mSocket.close();
                }
                release();
                Log.i(TAG, getName() + " finished");
            }
        }

        private boolean looksLikeFrameStart(byte[] b, int n) {
            return looksLikeFrameStartImpl(b, n, mFrameTs);
        }

        private void handleDatagram(byte[] b, int n) {
            if (n < 12) {
                return;
            }
            int seq = (b[2] & 0xff) | ((b[3] & 0xff) << 8);
            boolean last = (b[1] & 0x80) != 0;
            if (mLastSeq >= 0 && seq != ((mLastSeq + 1) & 0xffff)) {
                int missing = (seq - mLastSeq - 1) & 0xffff;
                if (missing > 1000) {
                    missing = 1; // sender restarted
                }
                boolean wasInFrame = mInFrame;
                if (mInFrame) {
                    mFrameBroken = true;
                    if (looksLikeFrameStart(b, n)) {
                        // The end of the current frame was lost and this datagram starts the next one.
                        mInFrame = false;
                        onBrokenFrame(mFrameType);
                    }
                }
                onDatagramsLost(missing, wasInFrame);
            }
            mLastSeq = seq;
            if (!mInFrame) {
                if (n < 24) {
                    return;
                }
                mFrameType = le32(b, 12);
                mFrameTs = le32(b, 16);
                mFrameLen = le32(b, 20);
                boolean knownType = mFrameType == TYPE_P || mFrameType == TYPE_IDR || mFrameType == TYPE_SPS_PPS || mFrameType == TYPE_AAC;
                if (!knownType || mFrameLen <= 0 || mFrameLen > 8 * 1024 * 1024) {
                    // Not a frame start (we joined mid-frame or lost the start); wait for the next frame boundary.
                    mFrameType = -1;
                    mInFrame = !last;
                    mFrameBroken = true;
                    if (last) {
                        onBrokenFrame(-1);
                    }
                    return;
                }
                mFrame.reset();
                mFrame.write(b, 24, n - 24);
                mInFrame = true;
                mFrameBroken = false;
            } else {
                mFrame.write(b, 12, n - 12);
            }
            if (last) {
                mInFrame = false;
                if (!mFrameBroken && mFrame.size() >= mFrameLen) {
                    onFrame(mFrameType, mFrameTs, mFrame.toByteArray(), mFrameLen);
                } else {
                    onBrokenFrame(mFrameType);
                }
                mFrameBroken = false;
            }
        }
    }

    /** A datagram that starts a frame: known type, sane length, timestamp near the previous frame's. */
    private static boolean looksLikeFrameStartImpl(byte[] b, int n, int lastTs) {
        if (n < 24) {
            return false;
        }
        int type = le32(b, 12);
        int len = le32(b, 20);
        long dt = Math.abs((long) le32(b, 16) - lastTs);
        return (type == TYPE_P || type == TYPE_IDR || type == TYPE_SPS_PPS || type == TYPE_AAC)
                && len > 0 && len <= 8 * 1024 * 1024 && dt < 10_000;
    }

    static int le32(byte[] b, int o) {
        return (b[o] & 0xff) | ((b[o + 1] & 0xff) << 8) | ((b[o + 2] & 0xff) << 16) | ((b[o + 3] & 0xff) << 24);
    }

    // ---------------------------------------------------------------- video

    /** A decoded video frame (codec output buffer) waiting for its display time. */
    static final class Held {
        final int index;
        final long pts;

        Held(int index, long pts) {
            this.index = index;
            this.pts = pts;
        }
    }

    static final class Frame {
        final int type;
        final long pts;
        final byte[] data;
        final int len;
        final boolean key;

        Frame(int type, long pts, byte[] data, int len, boolean key) {
            this.type = type;
            this.pts = pts;
            this.data = data;
            this.len = len;
            this.key = key;
        }
    }

    /**
     * Receives video frames; a separate decode thread feeds MediaCodec and renders frames on the shared clock.
     * Like the original HiSilicon library, a damaged frame is just dropped and decoding continues: the decoder
     * conceals the missing reference until the STB's next periodic key frame (~1 s), instead of freezing.
     */
    static final class VideoReceiver extends Receiver {
        /** Feed the decoder this far ahead of the frame's display time (covers decoder latency). */
        private static final int FEED_AHEAD_MS = 150;
        /** Release frames to the display at most this far ahead (rendered at their exact time by the system). */
        private static final int RENDER_AHEAD_MS = 40;
        /** Frames later than this are decoded (they are references) but not shown. */
        private static final int LATE_MS = 120;

        /** Null while in the background: frames are received (the STB keeps sending) but discarded. */
        private volatile Surface mSurface;
        private final LinkedBlockingDeque<Frame> mQueue = new LinkedBlockingDeque<>(240);
        private final DecodeThread mDecoder = new DecodeThread();
        private boolean mWaitKey = true;

        VideoReceiver(Surface surface) {
            super("MirrorVideo", VIDEO_PORT);
            mSurface = surface;
        }

        @Override
        public synchronized void start() {
            super.start();
            mDecoder.start();
        }

        @Override
        void shutdown() {
            super.shutdown();
            mDecoder.shutdown();
        }

        /** The surface is going away: stop decoding into it before returning (the surface dies after this). */
        void detach() {
            mSurface = null;
            mQueue.clear();
            mDecoder.awaitReleased();
        }

        /** Shows the stream on a new surface; decoding restarts at the next key frame (sent about every second). */
        void attach(Surface surface) {
            mQueue.clear();
            mSurface = surface;
        }

        @Override
        void onFrame(int type, int ts, byte[] data, int len) {
            long pts = ts & 0xffffffffL;
            sClock.onVideoArrival(pts);
            if (mSurface == null) {
                mWaitKey = true; // background: nothing to show
                return;
            }
            boolean key = type == TYPE_IDR || hasNal(data, len, 5);
            if (type != TYPE_SPS_PPS && mWaitKey) {
                if (!key) {
                    return;
                }
                mWaitKey = false;
            }
            if (!mQueue.offerLast(new Frame(type, pts, data, len, key))) {
                mQueue.clear();
                mWaitKey = true;
            }
        }

        @Override
        void onIdle() {
            sClock.tick();
        }

        @Override
        void release() {
        }

        final class DecodeThread extends Thread {
            private volatile boolean mRun = true;
            private MediaCodec mCodec;
            private byte[] mSps;
            private byte[] mPps;
            private boolean mNeedKey = true;
            private final MediaCodec.BufferInfo mInfo = new MediaCodec.BufferInfo();
            private final ArrayList<Held> mHeld = new ArrayList<>(); // decoded frames waiting for their time
            private long mLastShownNs = System.nanoTime();
            private Surface mCodecSurface; // the surface mCodec renders to
            private volatile boolean mIdle = true; // no codec (safe to destroy the surface)

            DecodeThread() {
                super("MirrorVideoDecode");
            }

            void shutdown() {
                mRun = false;
                interrupt();
                try {
                    join(2000);
                } catch (InterruptedException ignored) {
                }
            }

            /** Waits (up to 1 s) until the decoder has let go of the surface after mSurface became null. */
            void awaitReleased() {
                long end = SystemClock.elapsedRealtime() + 1000;
                while (!mIdle && isAlive() && SystemClock.elapsedRealtime() < end) {
                    try {
                        Thread.sleep(2);
                    } catch (InterruptedException e) {
                        return;
                    }
                }
            }

            @Override
            public void run() {
                try {
                    Process.setThreadPriority(Process.THREAD_PRIORITY_DISPLAY);
                } catch (Throwable ignored) {
                }
                try {
                    while (mRun) {
                        boolean busy = false;
                        if (mCodec != null && mCodecSurface != mSurface) {
                            releaseCodec(); // surface gone or replaced; reconfigure at the next SPS/PPS
                        }
                        if (mSurface == null) {
                            mQueue.clear();
                            Thread.sleep(20);
                            continue;
                        }
                        try {
                            busy |= feed();
                            busy |= drainAndRender();
                        } catch (IllegalStateException e) {
                            Log.e(TAG, "video decoder error, resetting", e);
                            releaseCodec();
                        }
                        if (!busy) {
                            Thread.sleep(4);
                        }
                    }
                } catch (InterruptedException ignored) {
                } finally {
                    releaseCodec();
                }
            }

            /** Feeds the next queued frame when it is due. Returns true if it did something. */
            private boolean feed() {
                Frame f = mQueue.peekFirst();
                if (f == null) {
                    return false;
                }
                byte[] sps = findNal(f.data, f.len, 7);
                byte[] pps = findNal(f.data, f.len, 8);
                if (sps != null && pps != null && (mCodec == null || !Arrays.equals(sps, mSps) || !Arrays.equals(pps, mPps))) {
                    configure(sps, pps);
                }
                if (f.type == TYPE_SPS_PPS || mCodec == null) {
                    mQueue.pollFirst();
                    return true;
                }
                if (mNeedKey && !f.key) {
                    mQueue.pollFirst();
                    return true;
                }
                double now = sClock.nowPts();
                // Feed when due; with a growing backlog (clock not running yet / stalled) feed anyway.
                boolean due = !Double.isNaN(now) && f.pts - now <= FEED_AHEAD_MS;
                if (!due && mQueue.size() < 60) {
                    return false;
                }
                int idx = mCodec.dequeueInputBuffer(0);
                if (idx < 0) {
                    return false;
                }
                ByteBuffer in = mCodec.getInputBuffer(idx);
                in.clear();
                if (in.capacity() < f.len) {
                    Log.w(TAG, "frame larger than input buffer: " + f.len);
                    mCodec.queueInputBuffer(idx, 0, 0, 0, 0);
                    mQueue.pollFirst();
                    mNeedKey = true;
                    return true;
                }
                in.put(f.data, 0, f.len);
                mCodec.queueInputBuffer(idx, 0, f.len, f.pts * 1000L, 0);
                mQueue.pollFirst();
                mNeedKey = false;
                return true;
            }

            /** Collects decoded frames and releases them to the display at their time. */
            private boolean drainAndRender() {
                if (mCodec == null) {
                    return false;
                }
                boolean did = false;
                while (true) {
                    int out = mCodec.dequeueOutputBuffer(mInfo, 0);
                    if (out >= 0) {
                        mHeld.add(new Held(out, mInfo.presentationTimeUs / 1000));
                        did = true;
                    } else if (out == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                        Log.i(TAG, "video format " + mCodec.getOutputFormat());
                    } else if (out != MediaCodec.INFO_OUTPUT_BUFFERS_CHANGED) {
                        break;
                    }
                }
                while (!mHeld.isEmpty()) {
                    Held h = mHeld.get(0);
                    double now = sClock.nowPts();
                    long nowNs = System.nanoTime();
                    if (Double.isNaN(now)) {
                        mCodec.releaseOutputBuffer(h.index, true);
                        mHeld.remove(0);
                        mLastShownNs = nowNs;
                        did = true;
                        continue;
                    }
                    double ahead = h.pts - now;
                    if (ahead > RENDER_AHEAD_MS && mHeld.size() < 6) {
                        break; // not yet; keep holding (bounded so the decoder never runs out of buffers)
                    }
                    boolean starving = nowNs - mLastShownNs > 300_000_000L;
                    if (ahead < -LATE_MS && !starving && mHeld.size() > 1) {
                        mCodec.releaseOutputBuffer(h.index, false);
                    } else {
                        long renderNs = nowNs + (long) (Math.max(0, ahead) * 1_000_000L);
                        mCodec.releaseOutputBuffer(h.index, renderNs);
                        mLastShownNs = nowNs;
                    }
                    mHeld.remove(0);
                    did = true;
                }
                return did;
            }

            private void configure(byte[] sps, byte[] pps) {
                releaseCodec();
                int[] wh = SpsParser.size(sps);
                int w = wh != null ? wh[0] : 1280;
                int h = wh != null ? wh[1] : 720;
                try {
                    MediaFormat f = MediaFormat.createVideoFormat(MediaFormat.MIMETYPE_VIDEO_AVC, w, h);
                    f.setByteBuffer("csd-0", ByteBuffer.wrap(withStartCode(sps)));
                    f.setByteBuffer("csd-1", ByteBuffer.wrap(withStartCode(pps)));
                    f.setInteger(MediaFormat.KEY_MAX_INPUT_SIZE, Math.max(w * h * 3 / 2, 1024 * 1024));
                    f.setInteger("low-latency", 1);
                    f.setInteger(MediaFormat.KEY_PRIORITY, 0);
                    mIdle = false; // before reading mSurface, so detach() waits for us if it races with this
                    Surface surface = mSurface;
                    if (surface == null) {
                        mIdle = true;
                        return;
                    }
                    mCodec = MediaCodec.createDecoderByType(MediaFormat.MIMETYPE_VIDEO_AVC);
                    mCodecSurface = surface;
                    mCodec.configure(f, surface, null, 0);
                    mCodec.setVideoScalingMode(MediaCodec.VIDEO_SCALING_MODE_SCALE_TO_FIT);
                    mCodec.start();
                    stat("decoder " + mCodec.getName() + " " + w + "x" + h + " on " + Build.MANUFACTURER + " " + Build.MODEL
                            + " Android " + Build.VERSION.RELEASE + " (SDK " + Build.VERSION.SDK_INT + ")");
                    mSps = sps;
                    mPps = pps;
                    mNeedKey = true;
                } catch (Exception e) {
                    Log.e(TAG, "cannot start H.264 decoder", e);
                    releaseCodec();
                }
            }

            private void releaseCodec() {
                mHeld.clear();
                if (mCodec != null) {
                    try {
                        mCodec.stop();
                    } catch (Exception ignored) {
                    }
                    try {
                        mCodec.release();
                    } catch (Exception ignored) {
                    }
                    mCodec = null;
                }
                mCodecSurface = null;
                mIdle = true;
                mSps = null;
                mPps = null;
                mNeedKey = true;
            }
        }
    }

    private static byte[] withStartCode(byte[] nal) {
        byte[] r = new byte[nal.length + 4];
        r[3] = 1;
        System.arraycopy(nal, 0, r, 4, nal.length);
        return r;
    }

    /** True if the frame contains a NAL unit of this type (scans start codes only, no copying). */
    static boolean hasNal(byte[] d, int len, int wanted) {
        for (int i = 0; i + 3 < len; i++) {
            if (d[i] == 0 && d[i + 1] == 0 && d[i + 2] == 1) {
                int type = d[i + 3] & 0x1f;
                if (type == wanted) {
                    return true;
                }
                if (type == 1 || type == 5) {
                    return false; // slice data follows; nothing else after it in practice
                }
                i += 3;
            }
        }
        return false;
    }

    /** Returns the first NAL unit of the given type (without start code), or null. */
    static byte[] findNal(byte[] d, int len, int wanted) {
        int i = 0;
        while (i + 3 < len) {
            if (d[i] == 0 && d[i + 1] == 0 && d[i + 2] == 1) {
                int start = i + 3;
                int type = d[start] & 0x1f;
                if ((type == 1 || type == 5) && wanted != type) {
                    return null; // slice data runs to the end of the frame
                }
                int end = start + 1;
                while (end + 2 < len && !(d[end] == 0 && d[end + 1] == 0 && (d[end + 2] == 1
                        || (d[end + 2] == 0 && end + 3 < len && d[end + 3] == 1)))) {
                    end++;
                }
                if (end + 2 >= len) {
                    end = len;
                }
                if (type == wanted) {
                    return Arrays.copyOfRange(d, start, end);
                }
                i = end;
            } else {
                i++;
            }
        }
        return null;
    }

    // ---------------------------------------------------------------- audio

    /**
     * Receives and decodes AAC, plays it from a jitter buffer of {@link PlaybackClock#delayMs()} and publishes
     * the playback position as the master clock. Lost frames are replaced by silence so the timeline stays exact.
     */
    static final class AudioReceiver extends Receiver {
        private static final int[] RATES = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
        private static final int AAC_FRAME = 1024;

        private MediaCodec mCodec;
        private AudioTrack mTrack;
        private int mConfig = -1;
        private final MediaCodec.BufferInfo mInfo = new MediaCodec.BufferInfo();
        private byte[] mPcm = new byte[16384];
        private byte[] mSilence = new byte[0];
        private int mRate = 48000;
        private int mChannels = 2;
        private int mBytesPerFrame = 4;
        private long mWrittenFrames;
        private boolean mPlaying;
        private int mLastDelay;
        private double mBasePts = Double.NaN; // STB pts of written frame 0, smoothed
        private long mPendingSilence;         // frames to insert for lost datagrams
        private long mLastAudioNs;
        private final AudioTimestamp mTs = new AudioTimestamp();
        private int mUnderrunsSeen;
        private long mLastHead = -1;
        private long mLastHeadChangeNs;
        // Level control: the buffer's peak fill per second should sit at the target delay.
        private long mPeakFrames = -1;
        private long mPeakWindowStartNs;
        private long mTrimPendingFrames;
        private byte[] mLastPcm = new byte[0];
        private int mLastPcmFrames;
        private int mFadeInFrames;

        AudioReceiver() {
            super("MirrorAudio", AUDIO_PORT);
        }

        @Override
        int threadPriority() {
            return Process.THREAD_PRIORITY_URGENT_AUDIO;
        }

        @Override
        void onDatagramsLost(int n, boolean midFrame) {
            if (n < 100) {
                mPendingSilence += (long) n * AAC_FRAME; // one AAC frame per datagram
            }
        }

        @Override
        void onFrame(int type, int ts, byte[] data, int len) {
            mLastAudioNs = System.nanoTime();
            sClock.onAudioArrival();
            int pos = 0;
            while (pos + 7 <= len) {
                if ((data[pos] & 0xff) != 0xff || (data[pos + 1] & 0xf0) != 0xf0) {
                    pos++;
                    continue;
                }
                boolean noCrc = (data[pos + 1] & 1) != 0;
                int profile = ((data[pos + 2] & 0xff) >> 6) + 1;
                int sfi = ((data[pos + 2] & 0xff) >> 2) & 0xf;
                int ch = ((data[pos + 2] & 1) << 2) | ((data[pos + 3] & 0xff) >> 6);
                int flen = ((data[pos + 3] & 3) << 11) | ((data[pos + 4] & 0xff) << 3) | ((data[pos + 5] & 0xff) >> 5);
                int hlen = noCrc ? 7 : 9;
                if (flen < hlen || pos + flen > len || sfi >= RATES.length || ch == 0) {
                    return;
                }
                int config = (profile << 8) | (sfi << 4) | ch;
                if (config != mConfig) {
                    configure(profile, sfi, ch);
                    mConfig = config;
                }
                if (mCodec != null) {
                    decode(data, pos + hlen, flen - hlen, (ts & 0xffffffffL) * 1000L);
                }
                pos += flen;
            }
        }

        private void configure(int profile, int sfi, int ch) {
            releaseCodec();
            int rate = RATES[sfi];
            try {
                MediaFormat f = MediaFormat.createAudioFormat(MediaFormat.MIMETYPE_AUDIO_AAC, rate, ch);
                byte[] asc = {(byte) ((profile << 3) | (sfi >> 1)), (byte) (((sfi & 1) << 7) | (ch << 3))};
                f.setByteBuffer("csd-0", ByteBuffer.wrap(asc));
                mCodec = MediaCodec.createDecoderByType(MediaFormat.MIMETYPE_AUDIO_AAC);
                mCodec.configure(f, null, null, 0);
                mCodec.start();
            } catch (Exception e) {
                Log.e(TAG, "cannot start AAC decoder", e);
                releaseCodec();
            }
        }

        private void decode(byte[] data, int off, int len, long ptsUs) {
            try {
                int idx = mCodec.dequeueInputBuffer(20000);
                if (idx >= 0) {
                    ByteBuffer in = mCodec.getInputBuffer(idx);
                    in.clear();
                    in.put(data, off, len);
                    mCodec.queueInputBuffer(idx, 0, len, ptsUs, 0);
                }
                drain();
            } catch (Exception e) {
                Log.e(TAG, "audio decode error, resetting decoder", e);
                releaseCodec();
                mConfig = -1;
            }
        }

        private void drain() {
            while (true) {
                int out = mCodec.dequeueOutputBuffer(mInfo, 0);
                if (out >= 0) {
                    if (mInfo.size > 0) {
                        ByteBuffer o = mCodec.getOutputBuffer(out);
                        if (mPcm.length < mInfo.size) {
                            mPcm = new byte[mInfo.size];
                        }
                        o.position(mInfo.offset);
                        o.get(mPcm, 0, mInfo.size);
                        play(mPcm, mInfo.size, mInfo.presentationTimeUs / 1000.0);
                    }
                    mCodec.releaseOutputBuffer(out, false);
                } else if (out == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                    MediaFormat f = mCodec.getOutputFormat();
                    openTrack(f.getInteger(MediaFormat.KEY_SAMPLE_RATE), f.getInteger(MediaFormat.KEY_CHANNEL_COUNT));
                } else if (out != MediaCodec.INFO_OUTPUT_BUFFERS_CHANGED) {
                    return;
                }
            }
        }

        private void openTrack(int rate, int channels) {
            closeTrack();
            int mask = channels == 1 ? AudioFormat.CHANNEL_OUT_MONO : AudioFormat.CHANNEL_OUT_STEREO;
            int min = AudioTrack.getMinBufferSize(rate, mask, AudioFormat.ENCODING_PCM_16BIT);
            if (min <= 0) {
                Log.e(TAG, "unsupported audio format " + rate + "/" + channels);
                return;
            }
            mRate = rate;
            mChannels = channels;
            mBytesPerFrame = 2 * channels;
            // Room for the largest buffer delay plus margin.
            int size = Math.max(min * 2, (DELAY_MAX_MS + 300) * rate / 1000 * mBytesPerFrame);
            try {
                mTrack = new AudioTrack(AudioManager.STREAM_MUSIC, rate, mask, AudioFormat.ENCODING_PCM_16BIT,
                        size, AudioTrack.MODE_STREAM);
                if (Build.VERSION.SDK_INT >= 31) {
                    // Android 12+ otherwise waits until the whole (large) buffer is full before starting or
                    // resuming after an underrun. Our own prebuffering decides when to start.
                    try {
                        mTrack.setStartThresholdInFrames(Math.max(1, rate / 100));
                    } catch (Throwable t) {
                        Log.w(TAG, "setStartThresholdInFrames failed", t);
                    }
                }
                mWrittenFrames = 0;
                mPlaying = false;
                mBasePts = Double.NaN;
                mPendingSilence = 0;
                mUnderrunsSeen = 0;
                mPeakFrames = -1;
                mTrimPendingFrames = 0;
                mLastDelay = sClock.delayMs();
                mLastHead = -1;
            stat("audio track " + rate + "Hz x" + channels + " capacity " + (size * 1000L / (rate * mBytesPerFrame)) + " ms");
            } catch (Exception e) {
                Log.e(TAG, "cannot open audio track", e);
                mTrack = null;
            }
        }

        private long playedFrames() {
            long head = mTrack.getPlaybackHeadPosition() & 0xffffffffL;
            if (mPlaying && mTrack.getTimestamp(mTs)) {
                long extrapolated = mTs.framePosition + (System.nanoTime() - mTs.nanoTime) * mRate / 1_000_000_000L;
                return Math.max(0, Math.min(extrapolated, head));
            }
            return head;
        }

        private long levelFrames() {
            return mWrittenFrames - (mTrack.getPlaybackHeadPosition() & 0xffffffffL);
        }

        private void writeFrames(byte[] pcm, int frames) {
            int bytes = frames * mBytesPerFrame;
            int written = mTrack.write(pcm, 0, bytes, AudioTrack.WRITE_NON_BLOCKING);
            if (written > 0) {
                mWrittenFrames += written / mBytesPerFrame;
            }
        }

        /**
         * Fills a hole (lost packets or a drift top-up) with the last decoded sound mirrored backwards from its
         * end (so the waveform continues without a jump) and faded out to silence; the next real chunk fades in.
         * Much less audible than inserting hard silence.
         */
        private void conceal(long frames) {
            int n = (int) frames;
            int bytes = n * mBytesPerFrame;
            if (mSilence.length < bytes) {
                mSilence = new byte[bytes];
            }
            int len = mLastPcmFrames;
            if (len == 0) {
                Arrays.fill(mSilence, 0, bytes, (byte) 0);
            } else {
                for (int f = 0; f < n; f++) {
                    int p = f % (2 * len);
                    int src = (p < len ? len - 1 - p : p - len) * mBytesPerFrame;
                    float gain = 1f - (float) (f + 1) / n;
                    for (int c = 0; c < mChannels; c++) {
                        int o = src + 2 * c;
                        int v = (int) ((short) ((mLastPcm[o] & 0xff) | (mLastPcm[o + 1] << 8)) * gain);
                        int d = f * mBytesPerFrame + 2 * c;
                        mSilence[d] = (byte) v;
                        mSilence[d + 1] = (byte) (v >> 8);
                    }
                }
            }
            writeFrames(mSilence, n);
            mFadeInFrames = Math.max(1, mRate / 200); // ~5 ms fade-in of the next real chunk
        }

        private void fadeIn(byte[] pcm, int frames) {
            int n = Math.min(mFadeInFrames, frames);
            for (int f = 0; f < n; f++) {
                float gain = (float) (f + 1) / (n + 1);
                for (int c = 0; c < mChannels; c++) {
                    int o = f * mBytesPerFrame + 2 * c;
                    int v = (int) ((short) ((pcm[o] & 0xff) | (pcm[o + 1] << 8)) * gain);
                    pcm[o] = (byte) v;
                    pcm[o + 1] = (byte) (v >> 8);
                }
            }
            mFadeInFrames = 0;
        }

        private void play(byte[] pcm, int len, double ptsMs) {
            if (mTrack == null) {
                return;
            }
            int frames = len / mBytesPerFrame;
            long delayFrames = (long) sClock.delayMs() * mRate / 1000;
            if (mPendingSilence > 0) {
                conceal(Math.min(mPendingSilence, mRate / 2));
                mPendingSilence = 0;
            }
            // Keep latency at the target: drop chunks while a trim is pending (see controlLevel), and always when
            // far above the target.
            if (mPlaying && (mTrimPendingFrames > 0 || levelFrames() > delayFrames + mRate * 250 / 1000)) {
                mTrimPendingFrames = Math.max(0, mTrimPendingFrames - frames);
                return;
            }
            long before = mWrittenFrames;
            if (mFadeInFrames > 0) {
                fadeIn(pcm, frames);
            }
            writeFrames(pcm, frames);
            if (mLastPcm.length < len) {
                mLastPcm = new byte[len];
            }
            System.arraycopy(pcm, 0, mLastPcm, 0, len);
            mLastPcmFrames = frames;
            // Map the written timeline to STB time (STB audio timestamps jitter, so smooth them).
            double est = ptsMs - before * 1000.0 / mRate;
            mBasePts = Double.isNaN(mBasePts) || Math.abs(est - mBasePts) > 500 ? est : mBasePts + 0.02 * (est - mBasePts);
            sAudioEnabledApply();
            maybeStart(delayFrames);
        }

        private boolean mMuted;

        private void sAudioEnabledApply() {
            boolean mute = !sAudioEnabled || sPaused;
            if (mute != mMuted) {
                mTrack.setVolume(mute ? 0f : 1f);
                mMuted = mute;
            }
        }

        private void maybeStart(long delayFrames) {
            int delay = sClock.delayMs();
            if (mPlaying && delay > mLastDelay + 20) {
                // The buffer delay was raised: pause once to let the buffer fill up to the new target.
                mTrack.pause();
                mPlaying = false;
                sClock.invalidateAudio();
            }
            mLastDelay = delay;
            if (!mPlaying && levelFrames() >= delayFrames) {
                mTrack.play();
                mPlaying = true;
            }
        }

        /**
         * Once per second, compare the buffer's peak fill (right after packets arrived) with the target delay
         * and correct slowly: insert a little silence when short (sender clock slower than ours), trim when
         * well above. Gap dips don't count since only the peak is used.
         */
        private void controlLevel() {
            long nowNs = System.nanoTime();
            long levelFrames = levelFrames();
            if (!mPlaying) {
                mPeakFrames = -1;
                mPeakWindowStartNs = nowNs;
                return;
            }
            mPeakFrames = Math.max(mPeakFrames, levelFrames);
            if (nowNs - mPeakWindowStartNs < 1_000_000_000L) {
                return;
            }
            long target = (long) sClock.delayMs() * mRate / 1000;
            long deficit = target - mPeakFrames;
            if (deficit > mRate * 30 / 1000) {
                conceal(Math.min(deficit - mRate * 15 / 1000, mRate * 25 / 1000)); // at most ~25 ms per second
            } else if (-deficit > mRate * 80 / 1000) {
                mTrimPendingFrames = AAC_FRAME; // drop at most one ~21 ms chunk per second
            }
            mPeakFrames = -1;
            mPeakWindowStartNs = nowNs;
        }

        @Override
        void onIdle() {
            if (mTrack == null) {
                return;
            }
            controlLevel();
            if (Build.VERSION.SDK_INT >= 24) {
                int u = mTrack.getUnderrunCount();
                if (u > mUnderrunsSeen) {
                    mUnderrunsSeen = u;
                    sClock.onGap(sClock.delayMs(), true); // the buffer ran dry: it is too small for this network
                }
            }
            long nowNs = System.nanoTime();
            long head = mTrack.getPlaybackHeadPosition() & 0xffffffffL;
            if (head != mLastHead) {
                mLastHead = head;
                mLastHeadChangeNs = nowNs;
            }
            boolean advancing = mPlaying && nowNs - mLastHeadChangeNs < 150_000_000L;
            if (advancing && !Double.isNaN(mBasePts) && nowNs - mLastAudioNs < 300_000_000L) {
                sClock.setAudioPosition(mBasePts + playedFrames() * 1000.0 / mRate, nowNs);
            } else {
                // Audio stalled, paused or not arriving: video falls back to the wall clock instead of freezing.
                sClock.invalidateAudio();
            }
        }

        private void releaseCodec() {
            if (mCodec != null) {
                try {
                    mCodec.stop();
                } catch (Exception ignored) {
                }
                try {
                    mCodec.release();
                } catch (Exception ignored) {
                }
                mCodec = null;
            }
        }

        private void closeTrack() {
            if (mTrack != null) {
                try {
                    mTrack.stop();
                } catch (Exception ignored) {
                }
                mTrack.release();
                mTrack = null;
            }
            mPlaying = false;
        }

        @Override
        void release() {
            releaseCodec();
            closeTrack();
        }
    }

    // ---------------------------------------------------------------- log

    /** Logs a playback event (buffer decisions, decoder, background playback). */
    static void stat(String line) {
        Log.i(TAG, line);
    }

    // ---------------------------------------------------------------- SPS

    /** Minimal H.264 SPS parser, only for the coded picture size. */
    static final class SpsParser {
        private final byte[] mData;
        private int mBit;

        private SpsParser(byte[] rbsp) {
            mData = rbsp;
        }

        static int[] size(byte[] sps) {
            try {
                return new SpsParser(unescape(sps)).parse();
            } catch (Exception e) {
                return null;
            }
        }

        private static byte[] unescape(byte[] nal) {
            ByteArrayOutputStream o = new ByteArrayOutputStream(nal.length);
            int zeros = 0;
            for (byte b : nal) {
                if (zeros >= 2 && b == 3) {
                    zeros = 0;
                    continue;
                }
                o.write(b);
                zeros = b == 0 ? zeros + 1 : 0;
            }
            return o.toByteArray();
        }

        private int bit() {
            int v = (mData[mBit >> 3] >> (7 - (mBit & 7))) & 1;
            mBit++;
            return v;
        }

        private int bits(int n) {
            int v = 0;
            for (int i = 0; i < n; i++) {
                v = (v << 1) | bit();
            }
            return v;
        }

        private int ue() {
            int zeros = 0;
            while (bit() == 0) {
                zeros++;
            }
            return (1 << zeros) - 1 + bits(zeros);
        }

        private int se() {
            int v = ue();
            return (v & 1) != 0 ? (v + 1) / 2 : -(v / 2);
        }

        private void skipScalingList(int size) {
            int last = 8;
            int next = 8;
            for (int j = 0; j < size; j++) {
                if (next != 0) {
                    next = (last + se() + 256) % 256;
                }
                last = next == 0 ? last : next;
            }
        }

        private int[] parse() {
            bits(8); // NAL header
            int profile = bits(8);
            bits(16); // constraint flags + level
            ue(); // sps id
            int chromaFormat = 1;
            if (profile == 100 || profile == 110 || profile == 122 || profile == 244 || profile == 44
                    || profile == 83 || profile == 86 || profile == 118 || profile == 128 || profile == 138) {
                chromaFormat = ue();
                if (chromaFormat == 3) {
                    bit();
                }
                ue();
                ue();
                bit();
                if (bit() == 1) {
                    for (int i = 0; i < (chromaFormat != 3 ? 8 : 12); i++) {
                        if (bit() == 1) {
                            skipScalingList(i < 6 ? 16 : 64);
                        }
                    }
                }
            }
            ue(); // log2_max_frame_num
            int pocType = ue();
            if (pocType == 0) {
                ue();
            } else if (pocType == 1) {
                bit();
                se();
                se();
                int n = ue();
                for (int i = 0; i < n; i++) {
                    se();
                }
            }
            ue(); // max_num_ref_frames
            bit();
            int wMbs = ue() + 1;
            int hMapUnits = ue() + 1;
            int frameMbsOnly = bit();
            if (frameMbsOnly == 0) {
                bit();
            }
            bit(); // direct_8x8_inference
            int w = wMbs * 16;
            int h = (2 - frameMbsOnly) * hMapUnits * 16;
            if (bit() == 1) { // frame cropping
                int l = ue();
                int r = ue();
                int t = ue();
                int b = ue();
                int cx = chromaFormat == 0 ? 1 : 2;
                int cy = (chromaFormat == 1 ? 2 : 1) * (2 - frameMbsOnly);
                w -= (l + r) * cx;
                h -= (t + b) * cy;
            }
            return new int[]{w, h};
        }
    }
}
