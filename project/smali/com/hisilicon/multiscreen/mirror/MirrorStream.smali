.class public final Lcom/hisilicon/multiscreen/mirror/MirrorStream;
.super Ljava/lang/Object;
.source "MirrorStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;,
        Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;,
        Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;,
        Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;,
        Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;,
        Lcom/hisilicon/multiscreen/mirror/MirrorStream$Held;,
        Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;
    }
.end annotation


# static fields
.field private static final AUDIO_PORT:I = 0x22ba

.field static final DELAY_LOW_MS:I = 0x96

.field static final DELAY_MAX_MS:I = 0x1c2

.field static final DELAY_SMOOTH_MS:I = 0x12c

.field private static final KEY_BACKGROUND:Ljava/lang/String; = "mirror_background_audio"

.field private static final KEY_SMOOTH:Ljava/lang/String; = "mirror_smooth_mode"

.field static final MODE_AUTO:I = 0x0

.field static final MODE_OFF:I = 0x2

.field static final MODE_ON:I = 0x1

.field private static final PREFS:Ljava/lang/String; = "Setting_Status"

.field private static final TAG:Ljava/lang/String; = "MirrorStream"

.field private static final TYPE_AAC:I = 0xa

.field private static final TYPE_IDR:I = 0x5

.field private static final TYPE_P:I = 0x1

.field private static final TYPE_SPS_PPS:I = 0x7

.field private static final VIDEO_PORT:I = 0x22b8

.field private static sAudio:Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

.field static volatile sAudioEnabled:Z

.field private static volatile sBackground:Z

.field static final sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

.field private static sKeptStream:Z

.field static volatile sPaused:Z

.field private static sVideo:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

.field private static sWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudioEnabled:Z

    .line 68
    new-instance v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;-><init>()V

    sput-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->modeLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100([BII)Z
    .locals 0

    .line 42
    invoke-static {p0, p1, p2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->looksLikeFrameStartImpl([BII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400([B)[B
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->withStartCode([B)[B

    move-result-object p0

    return-object p0
.end method

.method static appContext()Landroid/content/Context;
    .locals 5

    .line 252
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.aloys.formuler.airsyncremote.MyApp"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 253
    :catchall_0
    move-exception v1

    .line 254
    return-object v0
.end method

.method public static attachSettings(Landroid/app/Activity;)V
    .locals 7

    .line 277
    const-string v0, "drawable"

    const-string v1, "id"

    :try_start_0
    const-string v2, "Setting_Status"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 278
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "set_smooth"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 279
    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 280
    :goto_0
    if-eqz v3, :cond_1

    .line 281
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->readMode()I

    move-result v5

    invoke-static {v5}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->modeLabel(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    new-instance v5, Lcom/hisilicon/multiscreen/mirror/MirrorStream$2;

    invoke-direct {v5, v2, v3}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$2;-><init>(Landroid/content/SharedPreferences;Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "set_bgaudio"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v1, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 292
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 293
    :goto_1
    if-eqz v4, :cond_4

    .line 294
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "mybox_setting_on"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v0, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 295
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "mybox_setting_off"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v5, v0, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 296
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->readBackgroundSetting()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, p0

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 297
    new-instance v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$3;

    invoke-direct {v0, v2, v4, v1, p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$3;-><init>(Landroid/content/SharedPreferences;Landroid/view/View;II)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_4
    goto :goto_3

    .line 306
    :catchall_0
    move-exception p0

    .line 307
    const-string v0, "MirrorStream"

    const-string v1, "attachSettings failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    :goto_3
    return-void
.end method

.method public static configAudio(I)V
    .locals 0

    .line 132
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudioEnabled:Z

    .line 133
    return-void
.end method

.method public static declared-synchronized enterBackground(Landroid/app/Activity;)Z
    .locals 4

    const-class v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;

    monitor-enter v0

    .line 143
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->readBackgroundSetting()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudioEnabled:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudio:Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudio:Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sBackground:Z

    .line 147
    sput-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sKeptStream:Z

    .line 148
    sput-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sPaused:Z

    .line 149
    sget-object v3, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {v3, v2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->setBackground(Z)V

    .line 150
    const-string v3, "background audio: on"

    invoke-static {v3}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stat(Ljava/lang/String;)V

    .line 151
    invoke-static {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->start(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit v0

    return v2

    .line 144
    :cond_1
    :goto_0
    monitor-exit v0

    return v1

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    :try_start_1
    const-string v2, "MirrorStream"

    const-string v3, "enterBackground failed"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    sput-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sBackground:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    monitor-exit v0

    return v1

    .line 142
    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method static findNal([BII)[B
    .locals 6

    .line 1036
    const/4 v0, 0x0

    .line 1037
    :goto_0
    add-int/lit8 v1, v0, 0x3

    const/4 v2, 0x0

    if-ge v1, p1, :cond_7

    .line 1038
    aget-byte v3, p0, v0

    if-nez v3, :cond_6

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_6

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1039
    nop

    .line 1040
    aget-byte v0, p0, v1

    and-int/lit8 v0, v0, 0x1f

    .line 1041
    if-eq v0, v4, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    :cond_0
    if-eq p2, v0, :cond_1

    .line 1042
    return-object v2

    .line 1044
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 1045
    :goto_1
    add-int/lit8 v3, v2, 0x2

    if-ge v3, p1, :cond_3

    aget-byte v5, p0, v2

    if-nez v5, :cond_2

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_2

    aget-byte v5, p0, v3

    if-eq v5, v4, :cond_3

    aget-byte v5, p0, v3

    if-nez v5, :cond_2

    add-int/lit8 v5, v2, 0x3

    if-ge v5, p1, :cond_2

    aget-byte v5, p0, v5

    if-eq v5, v4, :cond_3

    .line 1047
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1049
    :cond_3
    if-lt v3, p1, :cond_4

    .line 1050
    move v2, p1

    .line 1052
    :cond_4
    if-ne v0, p2, :cond_5

    .line 1053
    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    .line 1055
    :cond_5
    nop

    .line 1056
    move v0, v2

    goto :goto_0

    .line 1057
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1060
    :cond_7
    return-object v2
.end method

.method static hasNal([BII)Z
    .locals 5

    .line 1019
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x3

    if-ge v2, p1, :cond_4

    .line 1020
    aget-byte v3, p0, v1

    const/4 v4, 0x1

    if-nez v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_3

    .line 1021
    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x1f

    .line 1022
    if-ne v1, p2, :cond_0

    .line 1023
    return v4

    .line 1025
    :cond_0
    if-eq v1, v4, :cond_2

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 1028
    :cond_1
    move v1, v2

    goto :goto_2

    .line 1026
    :cond_2
    :goto_1
    return v0

    .line 1019
    :cond_3
    :goto_2
    add-int/2addr v1, v4

    goto :goto_0

    .line 1031
    :cond_4
    return v0
.end method

.method private static holdWifi(Z)V
    .locals 2

    .line 318
    if-eqz p0, :cond_2

    .line 319
    :try_start_0
    sget-object p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez p0, :cond_1

    .line 320
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->appContext()Landroid/content/Context;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    .line 322
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 324
    :cond_0
    const/4 v0, 0x3

    .line 325
    :goto_0
    const-string v1, "AirSyncMirror"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p0

    sput-object p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 326
    sget-object p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 328
    :cond_1
    sget-object p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result p0

    if-nez p0, :cond_3

    .line 329
    sget-object p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_1

    .line 331
    :cond_2
    sget-object p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 332
    sget-object p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_3
    :goto_1
    goto :goto_2

    .line 334
    :catchall_0
    move-exception p0

    .line 335
    const-string v0, "MirrorStream"

    const-string v1, "wifi lock failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    :goto_2
    return-void
.end method

.method static declared-synchronized isBackground()Z
    .locals 2

    const-class v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;

    monitor-enter v0

    .line 190
    :try_start_0
    sget-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 190
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static le32([BI)I
    .locals 2

    .line 681
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static declared-synchronized leaveBackground()V
    .locals 3

    const-class v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 163
    monitor-exit v0

    return-void

    .line 165
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sBackground:Z

    .line 166
    sput-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sPaused:Z

    .line 167
    sget-object v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {v2, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->setBackground(Z)V

    .line 168
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->finish()V

    .line 169
    sget-object v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudio:Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudio:Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sKeptStream:Z

    .line 170
    sget-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sKeptStream:Z

    if-nez v1, :cond_2

    .line 171
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stopVideo()V

    .line 172
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stopAudio()V

    .line 174
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background audio: off (stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sKeptStream:Z

    if-eqz v2, :cond_3

    const-string v2, "kept"

    goto :goto_0

    :cond_3
    const-string v2, "lost"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stat(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    monitor-exit v0

    return-void

    .line 161
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static looksLikeFrameStartImpl([BII)Z
    .locals 6

    .line 670
    const/16 v0, 0x18

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 671
    return v1

    .line 673
    :cond_0
    const/16 p1, 0xc

    invoke-static {p0, p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->le32([BI)I

    move-result p1

    .line 674
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->le32([BI)I

    move-result v0

    .line 675
    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->le32([BI)I

    move-result p0

    int-to-long v2, p0

    int-to-long v4, p2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 676
    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_2

    :cond_1
    if-lez v0, :cond_2

    const/high16 p1, 0x800000

    if-gt v0, p1, :cond_2

    const-wide/16 p1, 0x2710

    cmp-long v0, v2, p1

    if-gez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static modeLabel(I)Ljava/lang/String;
    .locals 1

    .line 268
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "On"

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "Off"

    goto :goto_0

    :cond_1
    const-string p0, "Auto"

    :goto_0
    return-object p0
.end method

.method static msSinceAudio()J
    .locals 5

    .line 238
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudio:Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

    .line 239
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->sLastArrival:J

    .line 240
    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    :goto_1
    return-wide v0
.end method

.method public static onMirrorScreenDestroyed()V
    .locals 1

    .line 186
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stopBackground(Z)V

    .line 187
    return-void
.end method

.method static readBackgroundSetting()Z
    .locals 4

    .line 244
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->appContext()Landroid/content/Context;

    move-result-object v0

    .line 245
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "Setting_Status"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "mirror_background_audio"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static readMode()I
    .locals 3

    .line 259
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->appContext()Landroid/content/Context;

    move-result-object v0

    .line 260
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 261
    return v1

    .line 263
    :cond_0
    const-string v2, "Setting_Status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "mirror_smooth_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 264
    if-ltz v0, :cond_1

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public static declared-synchronized startAudio()V
    .locals 2

    const-class v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudio:Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudio:Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->isAlive()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 113
    monitor-exit v0

    return-void

    .line 115
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stopAudio()V

    .line 116
    new-instance v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;-><init>()V

    sput-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudio:Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

    .line 117
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudio:Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit v0

    return-void

    .line 111
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static declared-synchronized startVideo(Landroid/view/Surface;)V
    .locals 3

    const-class v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;

    monitor-enter v0

    .line 81
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sVideo:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sVideo:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sVideo:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-virtual {v1, p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->attach(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit v0

    return-void

    .line 91
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stopVideo()V

    .line 92
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->holdWifi(Z)V

    .line 93
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->readMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->reset(I)V

    .line 94
    new-instance v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-direct {v1, p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;-><init>(Landroid/view/Surface;)V

    sput-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sVideo:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    .line 95
    sget-object p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sVideo:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit v0

    return-void

    .line 82
    :cond_2
    :goto_0
    :try_start_2
    const-string p0, "MirrorStream"

    const-string v1, "startVideo: no valid surface"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stopVideo()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    monitor-exit v0

    return-void

    .line 80
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method static stat(Ljava/lang/String;)V
    .locals 1

    .line 1462
    const-string v0, "MirrorStream"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    return-void
.end method

.method public static declared-synchronized stopAudio()V
    .locals 2

    const-class v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sBackground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 122
    monitor-exit v0

    return-void

    .line 124
    :cond_0
    :try_start_1
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudio:Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

    if-eqz v1, :cond_1

    .line 125
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudio:Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->shutdown()V

    .line 126
    const/4 v1, 0x0

    sput-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudio:Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;

    .line 128
    :cond_1
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->invalidateAudio()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    monitor-exit v0

    return-void

    .line 120
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static stopBackground(Z)V
    .locals 3

    .line 195
    const-class v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;

    monitor-enter v0

    .line 196
    :try_start_0
    sget-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sBackground:Z

    if-nez v1, :cond_0

    .line 197
    monitor-exit v0

    return-void

    .line 199
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sBackground:Z

    .line 200
    sput-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sKeptStream:Z

    .line 201
    sput-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sPaused:Z

    .line 202
    sget-object v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {v2, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->setBackground(Z)V

    .line 203
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stopVideo()V

    .line 204
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stopAudio()V

    .line 205
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->finish()V

    .line 206
    const-string v1, "background audio: stopped"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stat(Ljava/lang/String;)V

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    if-eqz p0, :cond_1

    .line 209
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stopStbMirror()V

    .line 211
    :cond_1
    return-void

    .line 207
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static stopStbMirror()V
    .locals 3

    .line 215
    new-instance v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$1;

    const-string v1, "MirrorStop"

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$1;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 231
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 234
    :goto_0
    return-void
.end method

.method public static declared-synchronized stopVideo()V
    .locals 2

    const-class v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sBackground:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sVideo:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sVideo:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v0

    return-void

    .line 104
    :cond_0
    :try_start_1
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sVideo:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    if-eqz v1, :cond_1

    .line 105
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sVideo:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->shutdown()V

    .line 106
    const/4 v1, 0x0

    sput-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sVideo:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    .line 108
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->holdWifi(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit v0

    return-void

    .line 98
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static declared-synchronized takeKeptStream()Z
    .locals 3

    const-class v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;

    monitor-enter v0

    .line 179
    :try_start_0
    sget-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sKeptStream:Z

    .line 180
    const/4 v2, 0x0

    sput-boolean v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sKeptStream:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit v0

    return v1

    .line 178
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static withStartCode([B)[B
    .locals 4

    .line 1011
    array-length v0, p0

    const/4 v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1012
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    .line 1013
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1014
    return-object v0
.end method
