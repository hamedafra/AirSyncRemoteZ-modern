.class public Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;
.super Landroid/app/Service;
.source "MirrorAudioService.java"


# static fields
.field private static final ACTION_PAUSE:Ljava/lang/String; = "com.aloys.formuler.airsyncremote.mirror.PAUSE"

.field private static final ACTION_PLAY:Ljava/lang/String; = "com.aloys.formuler.airsyncremote.mirror.PLAY"

.field private static final ACTION_STOP:Ljava/lang/String; = "com.aloys.formuler.airsyncremote.mirror.STOP"

.field private static final CHANNEL:Ljava/lang/String; = "mirror_audio"

.field private static final NOTIFICATION_ID:I = 0x4d41

.field private static final SILENT_STOP_MS:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "MirrorAudioService"

.field private static sInstance:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mFinished:Z

.field private final mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mFocusRequest:Landroid/media/AudioFocusRequest;

.field private final mHandler:Landroid/os/Handler;

.field private mHasFocus:Z

.field private mLastStartId:I

.field private final mNoisy:Landroid/content/BroadcastReceiver;

.field private mNoisyRegistered:Z

.field private mResumeOnFocusGain:Z

.field private mSession:Landroid/media/session/MediaSession;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWatchdog:Ljava/lang/Runnable;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mHandler:Landroid/os/Handler;

    .line 357
    new-instance v0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;-><init>(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 394
    new-instance v0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$3;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$3;-><init>(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mNoisy:Landroid/content/BroadcastReceiver;

    .line 403
    new-instance v0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$4;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$4;-><init>(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWatchdog:Ljava/lang/Runnable;

    return-void
.end method

.method private abandonFocus()V
    .locals 2

    .line 345
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_1
    :goto_0
    goto :goto_1

    .line 352
    :catchall_0
    move-exception v0

    .line 354
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mHasFocus:Z

    .line 355
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->setPaused(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->stopPlayback()V

    return-void
.end method

.method static synthetic access$200(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFinished:Z

    return p0
.end method

.method static synthetic access$302(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mHasFocus:Z

    return p1
.end method

.method static synthetic access$400(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mResumeOnFocusGain:Z

    return p0
.end method

.method static synthetic access$402(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mResumeOnFocusGain:Z

    return p1
.end method

.method static synthetic access$500(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->updateState()V

    return-void
.end method

.method static synthetic access$600(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->shutdown()V

    return-void
.end method

.method static synthetic access$700(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private appIcon()Landroid/graphics/Bitmap;
    .locals 3

    .line 309
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 310
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    .line 311
    :catchall_0
    move-exception v1

    .line 312
    return-object v0
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 10

    .line 231
    sget-boolean v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sPaused:Z

    .line 232
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "mirror_audio"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    :goto_0
    const v2, 0x1080023

    const v3, 0x1080024

    if-eqz v0, :cond_1

    const v4, 0x1080023

    goto :goto_1

    :cond_1
    const v4, 0x1080024

    :goto_1
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 234
    const-string v5, "TV sound"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 235
    if-eqz v0, :cond_2

    const-string v5, "Paused"

    goto :goto_2

    :cond_2
    const-string v5, "Playing from the receiver"

    :goto_2
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 236
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->appIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 237
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->openMirrorIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 238
    const-string v5, "com.aloys.formuler.airsyncremote.mirror.STOP"

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->serviceIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 239
    xor-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 240
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 241
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 242
    const-string v9, "transport"

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 243
    new-instance v4, Landroid/app/Notification$Action$Builder;

    .line 244
    if-eqz v0, :cond_3

    const v2, 0x1080024

    .line 245
    :cond_3
    if-eqz v0, :cond_4

    const-string v3, "Play"

    goto :goto_3

    :cond_4
    const-string v3, "Pause"

    .line 246
    :goto_3
    if-eqz v0, :cond_5

    const-string v9, "com.aloys.formuler.airsyncremote.mirror.PLAY"

    goto :goto_4

    :cond_5
    const-string v9, "com.aloys.formuler.airsyncremote.mirror.PAUSE"

    :goto_4
    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x2

    :goto_5
    invoke-direct {p0, v9, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->serviceIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v4, v2, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 243
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 247
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 248
    invoke-direct {p0, v5, v6}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->serviceIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    const v3, 0x1080038

    const-string v4, "Stop"

    invoke-direct {v0, v3, v4, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 247
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 251
    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    filled-new-array {v7, v8}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_7

    .line 253
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;

    .line 255
    :cond_7
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public static createChannel(Landroid/content/Context;)V
    .locals 4

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 84
    return-void

    .line 87
    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "mirror_audio"

    const-string v2, "Mirror audio"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 88
    const-string v1, "Sound from the receiver while the app is in the background"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 90
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    const-string v0, "MirrorAudioService"

    const-string v1, "createChannel failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :goto_0
    return-void
.end method

.method private createSession()V
    .locals 4

    .line 279
    :try_start_0
    new-instance v0, Landroid/media/session/MediaSession;

    const-string v1, "AirSyncMirror"

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mSession:Landroid/media/session/MediaSession;

    .line 280
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 281
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mSession:Landroid/media/session/MediaSession;

    new-instance v1, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$1;-><init>(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 297
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mSession:Landroid/media/session/MediaSession;

    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v2, "android.media.metadata.TITLE"

    const-string v3, "TV sound"

    .line 298
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 300
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    .line 302
    const-string v1, "MirrorAudioService"

    const-string v2, "media session failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mSession:Landroid/media/session/MediaSession;

    .line 305
    :goto_0
    return-void
.end method

.method static finish()V
    .locals 1

    .line 76
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->sInstance:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->sInstance:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->shutdown()V

    .line 79
    :cond_0
    return-void
.end method

.method private openMirrorIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 266
    const-string v1, "com.aloys.formuler.airsyncremote.MultiScreenActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    const/high16 v1, 0x8000000

    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->pendingImmutable()I

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static pendingImmutable()I
    .locals 2

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x4000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private requestFocus()V
    .locals 4

    .line 322
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 326
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 327
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mHandler:Landroid/os/Handler;

    .line 329
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFocusRequest:Landroid/media/AudioFocusRequest;

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 336
    :goto_0
    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mHasFocus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    goto :goto_2

    .line 337
    :catchall_0
    move-exception v0

    .line 338
    const-string v1, "MirrorAudioService"

    const-string v2, "audio focus failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    :goto_2
    return-void
.end method

.method private serviceIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 2

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 260
    const/high16 v0, 0x8000000

    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->pendingImmutable()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private setPaused(Z)V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFinished:Z

    if-eqz v0, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    sput-boolean p1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sPaused:Z

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mResumeOnFocusGain:Z

    .line 198
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mHasFocus:Z

    if-nez p1, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->requestFocus()V

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->updateState()V

    .line 202
    return-void
.end method

.method private setup()V
    .locals 6

    .line 104
    const-string v0, "MirrorAudioService"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFinished:Z

    .line 105
    sput-object p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->sInstance:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    .line 106
    invoke-static {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->createChannel(Landroid/content/Context;)V

    .line 107
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const-string v4, "AirSync:mirrorAudio"

    .line 110
    invoke-virtual {v3, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 112
    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v3

    .line 114
    const-string v4, "wake lock failed"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 118
    const-string v4, "AirSyncMirrorAudio"

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 119
    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 120
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    goto :goto_1

    .line 121
    :catchall_1
    move-exception v1

    .line 122
    const-string v3, "wifi lock failed"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mNoisy:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    iput-boolean v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mNoisyRegistered:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 129
    goto :goto_2

    .line 127
    :catchall_2
    move-exception v1

    .line 128
    const-string v2, "noisy receiver failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_2
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->createSession()V

    .line 131
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->requestFocus()V

    .line 132
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWatchdog:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    return-void
.end method

.method private shutdown()V
    .locals 4

    .line 426
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFinished:Z

    if-eqz v0, :cond_0

    .line 427
    return-void

    .line 429
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFinished:Z

    .line 430
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->sInstance:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_1

    .line 431
    sput-object v2, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->sInstance:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWatchdog:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 434
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->abandonFocus()V

    .line 435
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mSession:Landroid/media/session/MediaSession;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v3}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 438
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    goto :goto_0

    .line 439
    :catchall_0
    move-exception v1

    .line 441
    :goto_0
    iput-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mSession:Landroid/media/session/MediaSession;

    .line 443
    :cond_2
    iget-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mNoisyRegistered:Z

    if-eqz v1, :cond_3

    .line 445
    :try_start_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mNoisy:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 447
    goto :goto_1

    .line 446
    :catchall_1
    move-exception v1

    .line 448
    :goto_1
    iput-boolean v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mNoisyRegistered:Z

    .line 450
    :cond_3
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 451
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 453
    :cond_4
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 454
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 457
    :cond_5
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->stopForeground(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 459
    goto :goto_2

    .line 458
    :catchall_2
    move-exception v0

    .line 460
    :goto_2
    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mLastStartId:I

    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->stopSelfResult(I)Z

    .line 461
    return-void
.end method

.method static start(Landroid/content/Context;)V
    .locals 3

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    :goto_0
    return-void
.end method

.method private stopPlayback()V
    .locals 1

    .line 188
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stopBackground(Z)V

    .line 189
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->shutdown()V

    .line 190
    return-void
.end method

.method private updateState()V
    .locals 7

    .line 205
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFinished:Z

    if-eqz v0, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    sget-boolean v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sPaused:Z

    .line 209
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mSession:Landroid/media/session/MediaSession;

    const-string v2, "MirrorAudioService"

    if-eqz v1, :cond_3

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mSession:Landroid/media/session/MediaSession;

    new-instance v3, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v3}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 213
    const-wide/16 v4, 0x207

    invoke-virtual {v3, v4, v5}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v3

    .line 215
    if-eqz v0, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    .line 216
    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 215
    :goto_1
    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    .line 212
    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    goto :goto_2

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    const-string v1, "playback state failed"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    :cond_3
    :goto_2
    :try_start_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->buildNotification()Landroid/app/Notification;

    move-result-object v1

    const/16 v3, 0x4d41

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    goto :goto_3

    .line 224
    :catchall_1
    move-exception v0

    .line 225
    const-string v1, "notify failed"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    :goto_3
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 184
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 98
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 99
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->setup()V

    .line 100
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 178
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->shutdown()V

    .line 179
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 180
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 139
    :try_start_0
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->buildNotification()Landroid/app/Notification;

    move-result-object p2

    const/16 v0, 0x4d41

    invoke-virtual {p0, v0, p2}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    goto :goto_0

    .line 140
    :catchall_0
    move-exception p2

    .line 141
    const-string v0, "MirrorAudioService"

    const-string v1, "startForeground failed"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :goto_0
    iput p3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mLastStartId:I

    .line 144
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->isBackground()Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->shutdown()V

    .line 147
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->stopForeground(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    goto :goto_1

    .line 148
    :catchall_1
    move-exception p1

    .line 150
    :goto_1
    invoke-virtual {p0, p3}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->stopSelfResult(I)Z

    .line 151
    return v0

    .line 153
    :cond_0
    iget-boolean p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->mFinished:Z

    if-eqz p2, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->setup()V

    .line 156
    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 157
    :goto_2
    const-string p2, "com.aloys.formuler.airsyncremote.mirror.PAUSE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 158
    invoke-direct {p0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->setPaused(Z)V

    goto :goto_3

    .line 159
    :cond_3
    const-string p2, "com.aloys.formuler.airsyncremote.mirror.PLAY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 160
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->setPaused(Z)V

    goto :goto_3

    .line 161
    :cond_4
    const-string p2, "com.aloys.formuler.airsyncremote.mirror.STOP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 162
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->stopPlayback()V

    goto :goto_3

    .line 164
    :cond_5
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->updateState()V

    .line 166
    :goto_3
    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->stopPlayback()V

    .line 173
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 174
    return-void
.end method
