.class public Lcom/hisilicon/multiscreen/mirror/MirrorView;
.super Landroid/view/SurfaceView;
.source "MirrorView.java"


# static fields
.field private static mAudioTrack:Landroid/media/AudioTrack;

.field private static sLastSurfaceType:Ljava/lang/String;


# instance fields
.field private ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

.field private mAccessIp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mIsOnWhilePlaying:Z

.field private mNativeContext:I

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field public mSurface:Landroid/view/Surface;

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mViewLayout:Landroid/widget/LinearLayout;

.field private useHME:Z

.field private viERunning:Z

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAudioTrack:Landroid/media/AudioTrack;

    .line 66
    sput-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->sLastSurfaceType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 41
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mIsOnWhilePlaying:Z

    .line 46
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurface:Landroid/view/Surface;

    .line 51
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAccessIp:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mContext:Landroid/content/Context;

    .line 83
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    .line 84
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 85
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->viERunning:Z

    .line 86
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mViewLayout:Landroid/widget/LinearLayout;

    .line 91
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->useHME:Z

    .line 167
    new-instance v0, Lcom/hisilicon/multiscreen/mirror/MirrorView$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView$1;-><init>(Lcom/hisilicon/multiscreen/mirror/MirrorView;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 101
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->initSurfaceView(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 41
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mIsOnWhilePlaying:Z

    .line 46
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurface:Landroid/view/Surface;

    .line 51
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAccessIp:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mContext:Landroid/content/Context;

    .line 83
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    .line 84
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 85
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->viERunning:Z

    .line 86
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mViewLayout:Landroid/widget/LinearLayout;

    .line 91
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->useHME:Z

    .line 167
    new-instance v0, Lcom/hisilicon/multiscreen/mirror/MirrorView$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView$1;-><init>(Lcom/hisilicon/multiscreen/mirror/MirrorView;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 112
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->initSurfaceView(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 41
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mIsOnWhilePlaying:Z

    .line 46
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurface:Landroid/view/Surface;

    .line 51
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAccessIp:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mContext:Landroid/content/Context;

    .line 83
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    .line 84
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 85
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->viERunning:Z

    .line 86
    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mViewLayout:Landroid/widget/LinearLayout;

    .line 91
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->useHME:Z

    .line 167
    new-instance v0, Lcom/hisilicon/multiscreen/mirror/MirrorView$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView$1;-><init>(Lcom/hisilicon/multiscreen/mirror/MirrorView;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 124
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->initSurfaceView(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method private GetLocalIpAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 205
    const-string v1, "127.0.0.1"

    .line 206
    .local v1, "localIP":Ljava/lang/String;
    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 207
    .local v2, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 208
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->int2Ip(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    :cond_0
    return-object v1

    .line 207
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private StopVideo()V
    .locals 2

    .prologue
    .line 271
    const-string v0, "StopVideo begin"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    if-eqz v0, :cond_0

    .line 274
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->viERunning:Z

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->viERunning:Z

    .line 279
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    invoke-virtual {v0}, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->Terminate()I

    .line 280
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mViewLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 281
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-static {v0}, Lcom/huawei/videoengine/ViERenderer;->setSurfaceNull(Landroid/view/SurfaceView;)V

    .line 282
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->FreeLocalRenderResource()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 286
    :cond_0
    const-string v0, "StopVideo end"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/multiscreen/mirror/MirrorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/mirror/MirrorView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->openSurface()V

    return-void
.end method

.method static synthetic access$100(Lcom/hisilicon/multiscreen/mirror/MirrorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/mirror/MirrorView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->destroySurface()V

    return-void
.end method

.method private static configATrack(IIIII)I
    .locals 10
    .param p0, "streamType"    # I
    .param p1, "sampleRate"    # I
    .param p2, "channelConfig"    # I
    .param p3, "bytesPerSample"    # I
    .param p4, "trackMode"    # I

    .prologue
    const/4 v3, 0x2

    .line 432
    const/4 v9, 0x0

    .line 433
    .local v9, "latency":I
    if-ne p2, v3, :cond_1

    .line 436
    .local v3, "chanConfig":I
    :goto_0
    invoke-static {p1, v3, p3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    .line 437
    .local v7, "iMinBufSize":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iMinBufSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 438
    const/4 v0, -0x2

    if-eq v7, v0, :cond_0

    const/4 v0, -0x1

    if-ne v7, v0, :cond_2

    .line 440
    :cond_0
    const/4 v0, 0x0

    .line 457
    :goto_1
    return v0

    .line 433
    .end local v3    # "chanConfig":I
    .end local v7    # "iMinBufSize":I
    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    .line 445
    .restart local v3    # "chanConfig":I
    .restart local v7    # "iMinBufSize":I
    :cond_2
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    mul-int/lit8 v5, v7, 0x4

    move v1, p0

    move v2, p1

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAudioTrack:Landroid/media/AudioTrack;

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioTrack OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit8 v1, v7, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 449
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 450
    int-to-double v0, v7

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    int-to-double v4, p3

    div-double/2addr v0, v4

    int-to-double v4, p1

    div-double/2addr v0, v4

    int-to-double v4, p2

    div-double/2addr v0, v4

    double-to-int v9, v0

    .line 451
    const-string v0, "mAudioTrack play OK"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v9

    .line 457
    goto :goto_1

    .line 453
    :catch_0
    move-exception v8

    .line 455
    .local v8, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new AudioTrack Exceeption:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private destroySurface()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    :wrap_try_start_0
    const/4 v2, 0x0

    .line 351
    const-string v0, "destroySurface begin"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 352
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 354
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 355
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 356
    sput-object v2, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAudioTrack:Landroid/media/AudioTrack;

    .line 359
    :cond_0
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->sLastSurfaceType:Ljava/lang/String;

    const-string v1, "h264"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    const-string v0, "StopVideo begin"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 363
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->useHME:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 364
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->StopVideo()V

    .line 367
    :goto_0
    const-string v0, "StopVideo end"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->stopAudio()V

    .line 376
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 377
    iput-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurface:Landroid/view/Surface;

    .line 378
    const-string v0, "destroySurface end"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 379
    :goto_1
    return-void

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->destroyH264Surface()V

    goto :goto_0

    .line 371
    :cond_2
    const-string v0, "wrong type: just support H264 now."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1
    :wrap_try_end_0
    .catchall {:wrap_try_start_0 .. :wrap_try_end_0} :wrap_handler_0

    :wrap_handler_0
    return-void
.end method

.method private openSurface()V
    .locals 6

    .prologue
    :wrap_try_start_1
    const/4 v5, 0x1

    .line 295
    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurface:Landroid/view/Surface;

    .line 303
    :goto_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 304
    .local v0, "osVersion":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "osVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getSupportVideoType()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "type":Ljava/lang/String;
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getSupportHME()Z

    move-result v2

    iput-boolean v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->useHME:Z

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useHME: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->useHME:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 310
    const-string v2, "h264"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    iget-boolean v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->useHME:Z

    if-ne v2, v5, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->startVideo()V

    .line 328
    :goto_1
    sput-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorView;->sLastSurfaceType:Ljava/lang/String;

    .line 331
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->startAudio(Ljava/lang/Object;)V

    .line 332
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isAudioPlay()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 334
    invoke-virtual {p0, v5}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->configAudio(I)V

    .line 341
    :goto_2
    invoke-direct {p0, v5}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->setScreenOnWhilePlaying(Z)V

    .line 342
    :goto_3
    return-void

    .line 301
    .end local v0    # "osVersion":Ljava/lang/String;
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurface:Landroid/view/Surface;

    goto :goto_0

    .line 319
    .restart local v0    # "osVersion":Ljava/lang/String;
    .restart local v1    # "type":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurface:Landroid/view/Surface;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAccessIp:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->startH264Surface(Landroid/view/Surface;ILjava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_2
    const-string v2, "wrong type: just support H264 now."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 338
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->configAudio(I)V

    goto :goto_2
    :wrap_try_end_1
    .catchall {:wrap_try_start_1 .. :wrap_try_end_1} :wrap_handler_1

    :wrap_handler_1
    return-void
.end method

.method private setScreenOnWhilePlaying(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mIsOnWhilePlaying:Z

    if-eq v0, p1, :cond_0

    .line 390
    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mIsOnWhilePlaying:Z

    .line 391
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->updateSurfaceScreenOn()V

    .line 393
    :cond_0
    return-void
.end method

.method private startVideo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 218
    const-string v0, "startVideo start"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 219
    const/4 v6, 0x0

    .line 220
    .local v6, "ret":I
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAccessIp:Ljava/lang/String;

    sput-object v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->szRemoteIP:Ljava/lang/String;

    .line 221
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->GetLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->szLocalIP:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalIP  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->szLocalIP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",RemoteIP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->szRemoteIP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    sget v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->logLevel:I

    invoke-virtual {v0, v1}, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->Init(I)I

    move-result v6

    .line 229
    if-eqz v6, :cond_1

    .line 231
    const-string v0, "ViEAndroidAPI Init err.."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    sget v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiLocalPort:I

    sget-object v2, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->szLocalIP:Ljava/lang/String;

    .line 234
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->SetLocalReceiver(I[B)I

    move-result v6

    .line 235
    if-eqz v6, :cond_2

    .line 237
    const-string v0, "ViEAndroidAPI SetLocalReceiver err.."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    sget v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiRemotePort:I

    sget-object v2, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->szRemoteIP:Ljava/lang/String;

    .line 240
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 239
    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->SetSendDestination(I[B)I

    move-result v6

    .line 241
    if-eqz v6, :cond_3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetSendDestination err.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/huawei/videoengine/ViERenderer;->CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 246
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_4

    .line 248
    const-string v0, "ViEAndroidAPI CreateRenderer err.."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    sget v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiBitRate:I

    sget v2, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiWidth:I

    sget v3, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiHeight:I

    sget v4, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->fFrameRate:I

    sget-boolean v5, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->eCipherType:Z

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->SetReceiveCodec(IIIIZ)I

    .line 253
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->StartReceive(Ljava/lang/Object;)I

    move-result v6

    .line 254
    if-eqz v6, :cond_5

    .line 256
    const-string v0, "ViEAndroidAPI StartReceive err.."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 258
    :cond_5
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    sget v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiBitRate:I

    sget-boolean v2, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->eCipherType:Z

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->SetSendCodec(IZ)I

    .line 259
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->ViEAndroidAPI:Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;

    invoke-virtual {v0}, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->StartSend()I

    move-result v6

    .line 260
    if-eqz v6, :cond_6

    .line 262
    const-string v0, "ViEAndroidAPI StartSend err.."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 264
    :cond_6
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mViewLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    iput-boolean v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->viERunning:Z

    .line 266
    const-string v0, "startVideo end"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mIsOnWhilePlaying:Z

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 405
    :cond_0
    return-void
.end method

.method private static writePCM([B)V
    .locals 3
    .param p0, "byteArray"    # [B

    .prologue
    .line 414
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 415
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioTrack;->write([BII)I

    .line 417
    :cond_0
    return-void
.end method


# virtual methods
.method public configAudio(I)V
    .locals 0

    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->configAudio(I)V

    return-void
.end method

.method public destroyH264Surface()V
    .locals 0

    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stopVideo()V

    return-void
.end method

.method public initSurfaceView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getHiDevice()Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    move-result-object v0

    .line 135
    .local v0, "device":Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAccessIp:Ljava/lang/String;

    .line 143
    :goto_0
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mContext:Landroid/content/Context;

    .line 144
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :ns_try_start
    invoke-virtual {p0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->nativeSetup(Ljava/lang/Object;)V
    :ns_try_end
    .catchall {:ns_try_start .. :ns_try_end} :ns_after

    :ns_after

    .line 145
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 146
    return-void

    .line 141
    :cond_0
    const-string v1, "127.0.0.1"

    iput-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mAccessIp:Ljava/lang/String;

    goto :goto_0
.end method

.method public nativeSetup(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setViewLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "mLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mViewLayout:Landroid/widget/LinearLayout;

    .line 201
    return-void
.end method

.method public setViewSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->viewWidth:I

    .line 151
    iput p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->viewHeight:I

    .line 152
    return-void
.end method

.method public startAudio(Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->startAudio()V

    return-void
.end method

.method public startH264Surface(Landroid/view/Surface;ILjava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->startVideo(Landroid/view/Surface;)V

    return-void
.end method

.method public stopAudio()V
    .locals 0

    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stopAudio()V

    return-void
.end method

.method public update_view_size()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 157
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->viewWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 158
    iget v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorView;->viewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->invalidate()V

    .line 161
    return-void
.end method
