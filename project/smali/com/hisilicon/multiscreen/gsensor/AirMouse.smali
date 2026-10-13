.class public Lcom/hisilicon/multiscreen/gsensor/AirMouse;
.super Ljava/lang/Object;
.source "AirMouse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;,
        Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;
    }
.end annotation


# static fields
.field private static final ANTI_SHAKE_MOVE_STEP:F = 8.0f

.field private static final DELAY_MILLIS_ANTI_SHAKE:J = 0x1f4L

.field private static final DELAY_MILLIS_HIDE_MOUSE:J = 0x64L

.field private static final MAX_MOVE_X:F = 3840.0f

.field private static final MAX_MOVE_Y:F = 2160.0f

.field private static final MIN_MOVE_STEP:F = 2.0f

.field private static final MSG_ANTI_SHAKE:I = 0x1

.field private static final MSG_HIDE_MOUSE:I = 0x2

.field private static sLoaded:Z


# instance fields
.field private AntiShakeHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;

.field private accSensor:Landroid/hardware/Sensor;

.field private gravSensor:Landroid/hardware/Sensor;

.field private gyroSensor:Landroid/hardware/Sensor;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHideHandlerThread:Landroid/os/HandlerThread;

.field private mHideMouseHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;

.field private mIsEnable:Z

.field private mMinStep:F

.field private mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

.field private mMouseState:I

.field private mRemoteKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensormanager:Landroid/hardware/SensorManager;

.field private mgcSensor:Landroid/hardware/Sensor;

.field public newAcc:[F

.field private newInputArray:[F

.field public newMgc:[F

.field public newRotation:[F

.field private rotationMatrix:[F

.field private sendCoord:[F

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->sLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mIsEnable:Z

    .line 66
    iput-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensormanager:Landroid/hardware/SensorManager;

    .line 68
    iput-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 70
    iput-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->gyroSensor:Landroid/hardware/Sensor;

    .line 72
    iput-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->accSensor:Landroid/hardware/Sensor;

    .line 74
    iput-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mgcSensor:Landroid/hardware/Sensor;

    .line 76
    iput-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->gravSensor:Landroid/hardware/Sensor;

    .line 81
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newInputArray:[F

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->sendCoord:[F

    .line 93
    iput-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    .line 99
    iput-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mRemoteKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    .line 105
    const/16 v0, 0x100

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMouseState:I

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->timestamp:J

    .line 116
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMinStep:F

    .line 118
    iput-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHandlerThread:Landroid/os/HandlerThread;

    .line 120
    iput-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->AntiShakeHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;

    .line 122
    iput-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHideHandlerThread:Landroid/os/HandlerThread;

    .line 124
    iput-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHideMouseHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;

    .line 576
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newAcc:[F

    .line 579
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newMgc:[F

    .line 582
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newRotation:[F

    .line 584
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->rotationMatrix:[F

    .line 133
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->reset(Landroid/content/Context;)V

    .line 134
    return-void

    .line 81
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 87
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)[F
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newInputArray:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->move()V

    return-void
.end method

.method static synthetic access$200(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->calculateOrientation()V

    return-void
.end method

.method static synthetic access$300(Lcom/hisilicon/multiscreen/gsensor/AirMouse;F)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/gsensor/AirMouse;
    .param p1, "x1"    # F

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->setMinStep(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->handleHideMouse()V

    return-void
.end method

.method private calculateOrientation()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 591
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->rotationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newAcc:[F

    iget-object v3, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newMgc:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 592
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->rotationMatrix:[F

    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newRotation:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 594
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newRotation:[F

    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newRotation:[F

    aget v1, v1, v4

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, v0, v4

    .line 596
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newRotation:[F

    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newRotation:[F

    aget v1, v1, v5

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, v0, v5

    .line 597
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newRotation:[F

    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newRotation:[F

    aget v1, v1, v6

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, v0, v6

    .line 598
    return-void
.end method

.method private cancelHide()V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->clearHideMessage()V

    .line 505
    return-void
.end method

.method private clearAntiShakeMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 424
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->AntiShakeHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->AntiShakeHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;->removeMessages(I)V

    .line 428
    :cond_0
    return-void
.end method

.method private clearHideMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 517
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHideMouseHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHideMouseHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;->removeMessages(I)V

    .line 521
    :cond_0
    return-void
.end method

.method private deinitAntiShakeHandler()V
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->clearAntiShakeMessage()V

    .line 413
    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 414
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 418
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHandlerThread:Landroid/os/HandlerThread;

    .line 420
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    return-void
.end method

.method private deinitHideHandler()V
    .locals 2

    .prologue
    .line 475
    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHideHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 477
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->clearHideMessage()V

    .line 478
    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHideHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 479
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 483
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHideHandlerThread:Landroid/os/HandlerThread;

    .line 485
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    return-void
.end method

.method private handleHideMouse()V
    .locals 7

    .prologue
    const/16 v6, 0x58

    .line 549
    const/16 v1, 0x32

    .line 550
    .local v1, "TIME_AFTER_MOUSE":I
    const/16 v0, 0x1f4

    .line 553
    .local v0, "TIME_AFTER_KEY":I
    iget-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    if-eqz v2, :cond_0

    .line 555
    iget-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    const/16 v3, 0x100

    const/high16 v4, 0x45700000    # 3840.0f

    const/high16 v5, 0x45070000    # 2160.0f

    invoke-virtual {v2, v3, v4, v5}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->sendMouseMoveEvent(IFF)V

    .line 556
    const/16 v2, 0x32

    invoke-direct {p0, v2}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->threadSleep(I)V

    .line 557
    iget-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mRemoteKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    invoke-virtual {v2, v6}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    .line 558
    const/16 v2, 0x1f4

    invoke-direct {p0, v2}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->threadSleep(I)V

    .line 559
    iget-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mRemoteKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    invoke-virtual {v2, v6}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    .line 561
    :cond_0
    return-void
.end method

.method private hideMouse()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->up()V

    .line 495
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->startHideMouse()V

    .line 497
    :cond_0
    return-void
.end method

.method private increaseAntiShake()V
    .locals 1

    .prologue
    .line 389
    const/high16 v0, 0x41000000    # 8.0f

    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->setMinStep(F)V

    .line 390
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->reduceAntiShakeDelay()V

    .line 391
    return-void
.end method

.method private initAntiShakeHandler()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AirMouseHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHandlerThread:Landroid/os/HandlerThread;

    .line 403
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 404
    new-instance v0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;-><init>(Lcom/hisilicon/multiscreen/gsensor/AirMouse;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->AntiShakeHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;

    .line 406
    :cond_0
    return-void
.end method

.method private initHideHandler()V
    .locals 2

    .prologue
    .line 468
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AirMouseHideHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHideHandlerThread:Landroid/os/HandlerThread;

    .line 469
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHideHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 470
    new-instance v0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHideHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;-><init>(Lcom/hisilicon/multiscreen/gsensor/AirMouse;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHideMouseHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;

    .line 471
    return-void
.end method

.method private initRemote()V
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->loadAirMouseLibs()Z

    .line 234
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    .line 235
    .local v0, "controlService":Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getRemoteControlCenter()Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteMouse()Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    .line 238
    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getRemoteControlCenter()Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteKeyboard()Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mRemoteKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    const-string v1, "Fail to init remote, MultiScreenControlService is null."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSensor(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->setSensorManager(Landroid/content/Context;)V

    .line 265
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;-><init>(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 343
    :cond_0
    return-void
.end method

.method private isEnable()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mIsEnable:Z

    return v0
.end method

.method private static loadAirMouseLibs()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 606
    sget-boolean v3, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->sLoaded:Z

    if-eqz v3, :cond_0

    .line 626
    .local v1, "err":Z
    :goto_0
    return v2

    .line 610
    .end local v1    # "err":Z
    :cond_0
    const/4 v1, 0x0

    .line 614
    .restart local v1    # "err":Z
    :try_start_0
    const-string v3, "load libairmouse_jni.so"

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 615
    const-string v3, "airmouse_jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_1
    if-nez v1, :cond_1

    .line 624
    sput-boolean v2, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->sLoaded:Z

    .line 626
    :cond_1
    sget-boolean v2, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->sLoaded:Z

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x1

    .line 620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when Loading our lib: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private move()V
    .locals 5

    .prologue
    :wrap_try_start_0
    .line 224
    iget v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMinStep:F

    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newInputArray:[F

    iget-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->sendCoord:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->native_getAirCoord(F[F[F)I

    .line 228
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    iget v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMouseState:I

    iget-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->sendCoord:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->sendCoord:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->sendMouseMoveEvent(IFF)V

    .line 229
    return-void
    :wrap_try_end_0
    .catchall {:wrap_try_start_0 .. :wrap_try_end_0} :wrap_handler_0

    :wrap_handler_0
    return-void
.end method

.method private native native_getAirCoord(F[F[F)I
.end method

.method private reduceAntiShake()V
    .locals 1

    .prologue
    .line 395
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->setMinStep(F)V

    .line 396
    return-void
.end method

.method private reduceAntiShakeDelay()V
    .locals 4

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->clearAntiShakeMessage()V

    .line 434
    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->AntiShakeHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 435
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->AntiShakeHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 436
    return-void
.end method

.method private registerSensor(Landroid/hardware/Sensor;)Z
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensormanager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    return v0
.end method

.method private setMinStep(F)V
    .locals 2
    .param p1, "step"    # F

    .prologue
    .line 374
    const/high16 v0, 0x41200000    # 10.0f

    .line 375
    .local v0, "DEFAULT_MIN_STEP":F
    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 377
    const/high16 p1, 0x41200000    # 10.0f

    .line 378
    const-string v1, "ERROR: minStep is large than 10.0"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 380
    :cond_0
    iput p1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMinStep:F

    .line 381
    return-void
.end method

.method private setSensorManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 250
    const-string v0, "context is null"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensormanager:Landroid/hardware/SensorManager;

    .line 255
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensormanager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->gyroSensor:Landroid/hardware/Sensor;

    .line 256
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensormanager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->accSensor:Landroid/hardware/Sensor;

    .line 257
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensormanager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mgcSensor:Landroid/hardware/Sensor;

    .line 258
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensormanager:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->gravSensor:Landroid/hardware/Sensor;

    goto :goto_0
.end method

.method private startHideMouse()V
    .locals 4

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->clearHideMessage()V

    .line 511
    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHideMouseHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 512
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mHideMouseHandler:Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 513
    return-void
.end method

.method private threadSleep(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 567
    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterSensor()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensormanager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensormanager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 365
    :cond_0
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->unregisterSensor()V

    .line 146
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->deinitAntiShakeHandler()V

    .line 147
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->deinitHideHandler()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mIsEnable:Z

    .line 149
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->unregisterSensor()V

    .line 191
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->deinitAntiShakeHandler()V

    .line 192
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->hideMouse()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mIsEnable:Z

    .line 194
    return-void
.end method

.method public down()V
    .locals 3

    .prologue
    const/16 v2, 0x305

    .line 201
    iget v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMouseState:I

    if-eq v0, v2, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->increaseAntiShake()V

    .line 204
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    const/16 v1, 0x303

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->sendMouseClickEvent(I)V

    .line 205
    iput v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMouseState:I

    .line 207
    :cond_0
    return-void
.end method

.method public enable()Z
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->cancelHide()V

    .line 174
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->gyroSensor:Landroid/hardware/Sensor;

    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->registerSensor(Landroid/hardware/Sensor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mIsEnable:Z

    .line 175
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mIsEnable:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->gravSensor:Landroid/hardware/Sensor;

    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->registerSensor(Landroid/hardware/Sensor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mIsEnable:Z

    .line 180
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->initAntiShakeHandler()V

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mIsEnable:Z

    return v0
.end method

.method public isSupported()Z
    .locals 4

    .prologue
    .line 154
    iget-object v2, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mSensormanager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const-string v2, "Airmouse is not supported without GYR sensor."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    .line 164
    .local v0, "isSupported":Z
    :goto_0
    return v0

    .line 162
    .end local v0    # "isSupported":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isSupported":Z
    goto :goto_0
.end method

.method public reset(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->initRemote()V

    .line 139
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->initSensor(Landroid/content/Context;)V

    .line 140
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->initHideHandler()V

    .line 141
    return-void
.end method

.method public up()V
    .locals 2

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->reduceAntiShake()V

    .line 215
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    const/16 v1, 0x304

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->sendMouseClickEvent(I)V

    .line 216
    const/16 v0, 0x100

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->mMouseState:I

    .line 217
    return-void
.end method
