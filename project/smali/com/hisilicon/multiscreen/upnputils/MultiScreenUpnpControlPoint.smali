.class public Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;
.super Lorg/cybergarage/upnp/ControlPoint;
.source "MultiScreenUpnpControlPoint.java"

# interfaces
.implements Lorg/cybergarage/upnp/device/NotifyListener;
.implements Lorg/cybergarage/upnp/event/EventListener;
.implements Lorg/cybergarage/upnp/device/SearchResponseListener;
.implements Lorg/cybergarage/upnp/device/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint$RenewSubscriberTask;
    }
.end annotation


# static fields
.field private static final HTTP_PORT_FOR_MULTISCREEN:I = 0x1f7c

.field public static final REMOTE_ID_CAN_ACCESS:Ljava/lang/String; = "0.0.0.0"

.field public static final REMOTE_ID_DEVICE_SUSPEND:Ljava/lang/String; = "0.0.0.1"

.field public static final REMOTE_ID_STB_MANUAL_OFF:Ljava/lang/String; = "REMOTE_ID_STB_MANUAL_OFF"

.field private static final SSDP_PORT_FOR_MULTISCREEN:I = 0x1f49

.field public static mIsStarted:Z

.field private static mMultiScreenControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;


# instance fields
.field private mCurrentDevice:Lorg/cybergarage/upnp/Device;

.field private mOriginalList:Lorg/cybergarage/upnp/DeviceList;

.field private mRemoteID:Ljava/lang/String;

.field private mRenewSubscriberTimer:Ljava/util/Timer;

.field private mSceneManager:Lcom/hisilicon/multiscreen/scene/SceneManager;

.field private mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mIsStarted:Z

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mMultiScreenControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mRemoteID:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    .line 74
    iput-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    .line 79
    iput-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    .line 85
    iput-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mSceneManager:Lcom/hisilicon/multiscreen/scene/SceneManager;

    .line 91
    iput-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mRenewSubscriberTimer:Ljava/util/Timer;

    .line 110
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/cybergarage/upnp/UPnP;->setEnable(I)V

    .line 111
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/cybergarage/upnp/UPnP;->setDisable(I)V

    .line 112
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/cybergarage/upnp/UPnP;->setDisable(I)V

    .line 113
    invoke-static {}, Lorg/cybergarage/util/Debug;->off()V

    .line 114
    const/16 v0, 0x1f49

    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setSSDPPort(I)V

    .line 115
    const/16 v0, 0x1f7c

    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setHTTPPort(I)V

    .line 116
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->initSceneManager()V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->renewSubscriber()V

    return-void
.end method

.method private beginRenewSubscribeTask()V
    .locals 10

    .prologue
    const-wide/32 v2, 0x222e0

    .line 548
    const-string v0, "Begin"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 549
    const-wide/32 v6, 0x222e0

    .local v6, "delay":J
    const-wide/32 v8, 0x222e0

    .line 550
    .local v8, "period":J
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mRenewSubscriberTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mRenewSubscriberTimer:Ljava/util/Timer;

    .line 553
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mRenewSubscriberTimer:Ljava/util/Timer;

    new-instance v1, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint$RenewSubscriberTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint$RenewSubscriberTask;-><init>(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 555
    :cond_0
    return-void
.end method

.method private endRenewSubscribeTask()V
    .locals 1

    .prologue
    .line 559
    const-string v0, "End"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mRenewSubscriberTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mRenewSubscriberTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mRenewSubscriberTimer:Ljava/util/Timer;

    .line 565
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mMultiScreenControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    if-nez v0, :cond_0

    .line 415
    const-string v0, "Create ctrpoint"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 416
    new-instance v0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;-><init>()V

    sput-object v0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mMultiScreenControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 419
    :cond_0
    sget-object v0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mMultiScreenControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->registerListener()V

    .line 420
    sget-object v0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mMultiScreenControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    return-object v0
.end method

.method public static getScene()Lcom/hisilicon/multiscreen/scene/SceneType;
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Lcom/hisilicon/multiscreen/scene/SceneManager;->getScene()Lcom/hisilicon/multiscreen/scene/SceneType;

    move-result-object v0

    return-object v0
.end method

.method private initSceneManager()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mSceneManager:Lcom/hisilicon/multiscreen/scene/SceneManager;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lcom/hisilicon/multiscreen/scene/SceneManager;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/scene/SceneManager;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mSceneManager:Lcom/hisilicon/multiscreen/scene/SceneManager;

    .line 524
    :cond_0
    return-void
.end method

.method public static isSceneOpen()Z
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Lcom/hisilicon/multiscreen/scene/SceneManager;->isOpen()Z

    move-result v0

    return v0
.end method

.method private registerListener()V
    .locals 0

    .prologue
    .line 528
    invoke-virtual {p0, p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->addNotifyListener(Lorg/cybergarage/upnp/device/NotifyListener;)V

    .line 529
    invoke-virtual {p0, p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->addSearchResponseListener(Lorg/cybergarage/upnp/device/SearchResponseListener;)V

    .line 530
    invoke-virtual {p0, p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->addEventListener(Lorg/cybergarage/upnp/event/EventListener;)V

    .line 531
    invoke-virtual {p0, p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->addDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V

    .line 532
    return-void
.end method

.method private renewSubscriber()V
    .locals 4

    .prologue
    .line 572
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v0, :cond_0

    .line 574
    const-string v0, "renew subscriber service"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->renewSubscriberService(Lorg/cybergarage/upnp/Device;J)V

    .line 577
    :cond_0
    return-void
.end method

.method public static switchScene(Z)V
    .locals 0
    .param p0, "isOpen"    # Z

    .prologue
    .line 267
    invoke-static {p0}, Lcom/hisilicon/multiscreen/scene/SceneManager;->setSwitch(Z)V

    .line 268
    return-void
.end method

.method private unregisterListener()V
    .locals 0

    .prologue
    .line 536
    invoke-virtual {p0, p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeNotifyListener(Lorg/cybergarage/upnp/device/NotifyListener;)V

    .line 537
    invoke-virtual {p0, p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeSearchResponseListener(Lorg/cybergarage/upnp/device/SearchResponseListener;)V

    .line 538
    invoke-virtual {p0, p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeEventListener(Lorg/cybergarage/upnp/event/EventListener;)V

    .line 539
    invoke-virtual {p0, p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V

    .line 540
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->stopControl()V

    .line 430
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->unregisterListener()V

    .line 431
    return-void
.end method

.method public deviceAdded(Lorg/cybergarage/upnp/Device;)V
    .locals 2
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    invoke-interface {v0, p1}, Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;->originalListAdd(Lorg/cybergarage/upnp/Device;)V

    .line 217
    :cond_0
    return-void
.end method

.method public deviceNotifyReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 0
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 203
    return-void
.end method

.method public deviceRefreshed(Lorg/cybergarage/upnp/Device;)V
    .locals 2
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    invoke-interface {v0, p1}, Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;->originalListAdd(Lorg/cybergarage/upnp/Device;)V

    .line 244
    :cond_0
    return-void
.end method

.method public deviceRemoved(Lorg/cybergarage/upnp/Device;)V
    .locals 2
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    invoke-interface {v0, p1}, Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;->originalListRemoved(Lorg/cybergarage/upnp/Device;)V

    .line 232
    :cond_0
    return-void
.end method

.method public deviceSearchResponseReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 0
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 123
    return-void
.end method

.method public eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "seq"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v0, "HI_UPNP_VAR_AccessRemoteList"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mRemoteID:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, "RemoteID notify received"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "My RemoteID is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mRemoteID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", STB RemoteID is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    if-nez v0, :cond_1

    .line 137
    const-string v0, "UpnpControlPointListener has been set null."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    const-string v0, "0.0.0.0"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    const-string v0, "STB can access"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2
    const-string v0, "REMOTE_ID_STB_MANUAL_OFF"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    const-string v0, "STB manual off."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    invoke-interface {v0}, Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;->stbLeaveNotify()V

    goto :goto_0

    .line 148
    :cond_3
    const-string v0, "0.0.0.1"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    const-string v0, "STB suspend."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    invoke-interface {v0}, Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;->stbSuspendNotify()V

    goto :goto_0

    .line 155
    :cond_4
    const-string v0, "STB is reaved"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    invoke-interface {v0}, Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;->reavedNotify()V

    goto :goto_0

    .line 160
    :cond_5
    const-string v0, "HI_UPNP_VAR_SceneType"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mSceneManager:Lcom/hisilicon/multiscreen/scene/SceneManager;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mSceneManager:Lcom/hisilicon/multiscreen/scene/SceneManager;

    invoke-static {p5}, Lcom/hisilicon/multiscreen/scene/SceneType;->getType(Ljava/lang/String;)Lcom/hisilicon/multiscreen/scene/SceneType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/scene/SceneManager;->renew(Lcom/hisilicon/multiscreen/scene/SceneType;)V

    goto :goto_0
.end method

.method public getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;
    .locals 4
    .param p1, "ServiceTypeName"    # Ljava/lang/String;
    .param p2, "ActionName"    # Ljava/lang/String;

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "mAction":Lorg/cybergarage/upnp/Action;
    iget-object v3, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    if-nez v3, :cond_0

    .line 296
    const-string v3, "Current device is null, fail to get action."

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    move-object v1, v0

    .line 306
    .end local v0    # "mAction":Lorg/cybergarage/upnp/Action;
    .local v1, "mAction":Lorg/cybergarage/upnp/Action;
    :goto_0
    return-object v1

    .line 299
    .end local v1    # "mAction":Lorg/cybergarage/upnp/Action;
    .restart local v0    # "mAction":Lorg/cybergarage/upnp/Action;
    :cond_0
    iget-object v3, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v3, p1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v2

    .line 300
    .local v2, "mService":Lorg/cybergarage/upnp/Service;
    if-nez v2, :cond_1

    .line 302
    const-string v3, "Service not found"

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    move-object v1, v0

    .line 303
    .end local v0    # "mAction":Lorg/cybergarage/upnp/Action;
    .restart local v1    # "mAction":Lorg/cybergarage/upnp/Action;
    goto :goto_0

    .line 305
    .end local v1    # "mAction":Lorg/cybergarage/upnp/Action;
    .restart local v0    # "mAction":Lorg/cybergarage/upnp/Action;
    :cond_1
    invoke-virtual {v2, p2}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    move-object v1, v0

    .line 306
    .end local v0    # "mAction":Lorg/cybergarage/upnp/Action;
    .restart local v1    # "mAction":Lorg/cybergarage/upnp/Action;
    goto :goto_0
.end method

.method public getCurrentDevice()Lorg/cybergarage/upnp/Device;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    return-object v0
.end method

.method public getRemoteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mRemoteID:Ljava/lang/String;

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;
    .locals 6
    .param p1, "ServiceType"    # Ljava/lang/String;
    .param p2, "StateVariableName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 328
    iget-object v4, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    if-nez v4, :cond_0

    .line 330
    const-string v4, "Current device is null, fail to get state variable."

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    move-object v2, v3

    .line 355
    :goto_0
    return-object v2

    .line 334
    :cond_0
    iget-object v4, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v4, p1, p2}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v2

    .line 335
    .local v2, "stateVar":Lorg/cybergarage/upnp/StateVariable;
    if-nez v2, :cond_1

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not get state varibale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    move-object v2, v3

    .line 338
    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/upnp/StateVariable;->postQuerylAction()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 343
    invoke-virtual {v2}, Lorg/cybergarage/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "Value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "value of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 345
    .local v1, "stateValue":Ljava/lang/StringBuffer;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    const-string v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    .end local v0    # "Value":Ljava/lang/String;
    .end local v1    # "stateValue":Ljava/lang/StringBuffer;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": postQuerylAction fail."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    move-object v2, v3

    .line 355
    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 435
    sget-boolean v0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mIsStarted:Z

    return v0
.end method

.method public postAction(Lorg/cybergarage/upnp/Action;)Z
    .locals 2
    .param p1, "mAction"    # Lorg/cybergarage/upnp/Action;

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 313
    const-string v0, "Action not found"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    .line 316
    :cond_0
    const-string v0, "RemoteID"

    iget-object v1, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mRemoteID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v0

    goto :goto_0
.end method

.method public removeAlldevice()V
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->lock()V

    .line 462
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeDevice(Lorg/cybergarage/upnp/Device;)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->unlock()V

    .line 468
    return-void
.end method

.method public removeCannotAccessDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 0
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeDevice(Lorg/cybergarage/upnp/Device;)V

    .line 473
    return-void
.end method

.method public setControlPointListener(Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    .line 253
    return-void
.end method

.method public setCurrentDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 0
    .param p1, "currentDevice"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    .line 483
    return-void
.end method

.method public setCurrentDeviceByHistroy(Ljava/lang/String;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 493
    const/4 v1, 0x0

    .line 495
    .local v1, "retValue":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    iput-object v2, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    .line 500
    const/4 v1, 0x1

    .line 505
    :cond_0
    return v1

    .line 495
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setRemoteId(Ljava/lang/String;)V
    .locals 0
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mRemoteID:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public setSceneListener(Lcom/hisilicon/multiscreen/scene/ISceneListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/hisilicon/multiscreen/scene/ISceneListener;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mSceneManager:Lcom/hisilicon/multiscreen/scene/SceneManager;

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/scene/SceneManager;->setListener(Lcom/hisilicon/multiscreen/scene/ISceneListener;)V

    .line 258
    return-void
.end method

.method public startControl()V
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeAlldevice()V

    .line 443
    sget-object v0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mMultiScreenControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v1, "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->start(Ljava/lang/String;)Z

    .line 446
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mIsStarted:Z

    .line 447
    return-void
.end method

.method public startGsensor()Z
    .locals 3

    .prologue
    .line 277
    const-string v1, "urn:schemas-upnp-org:service:GsensorControlServer:1"

    const-string v2, "StartGsensor"

    .line 278
    invoke-virtual {p0, v1, v2}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 280
    .local v0, "StartGsensorAct":Lorg/cybergarage/upnp/Action;
    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->postAction(Lorg/cybergarage/upnp/Action;)Z

    move-result v1

    return v1
.end method

.method public stopControl()V
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeAlldevice()V

    .line 454
    sget-object v0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mMultiScreenControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->finalize()V

    .line 456
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mIsStarted:Z

    .line 457
    return-void
.end method

.method public stopGsensor()Z
    .locals 3

    .prologue
    .line 285
    const-string v1, "urn:schemas-upnp-org:service:GsensorControlServer:1"

    const-string v2, "StopGsensor"

    .line 286
    invoke-virtual {p0, v1, v2}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 288
    .local v0, "StopGsensorAct":Lorg/cybergarage/upnp/Action;
    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->postAction(Lorg/cybergarage/upnp/Action;)Z

    move-result v1

    return v1
.end method

.method public subscribeService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 367
    const-string v2, "Subscribe"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    if-nez v2, :cond_0

    .line 370
    const-string v2, "Current device is null, fail to subscribe service."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 371
    const/4 v0, 0x0

    .line 385
    :goto_0
    return v0

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 375
    .local v1, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {p0, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;)Z

    move-result v0

    .line 376
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_1

    .line 378
    const-string v2, "Success."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->beginRenewSubscribeTask()V

    goto :goto_0

    .line 383
    :cond_1
    const-string v2, "Fail."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unsubscribeService(Ljava/lang/String;)Z
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 396
    const-string v1, "Unsubscribe"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    if-nez v1, :cond_0

    .line 399
    const-string v1, "Current device is null, fail to unsubscribe service."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 400
    const/4 v1, 0x0

    .line 404
    :goto_0
    return v1

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->endRenewSubscribeTask()V

    .line 403
    iget-object v1, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->mCurrentDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    .line 404
    .local v0, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Service;)Z

    move-result v1

    goto :goto_0
.end method
