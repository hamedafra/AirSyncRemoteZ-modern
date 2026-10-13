.class public Lcom/aloys/formuler/airsyncremote/RemoteActivity;
.super Lcom/aloys/formuler/airsyncremote/BaseActivity;
.source "RemoteActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aloys/formuler/airsyncremote/RemoteActivity$PopwinClickEvent;,
        Lcom/aloys/formuler/airsyncremote/RemoteActivity$OrientationDetector;,
        Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;,
        Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;
    }
.end annotation


# static fields
.field public static mContext:Landroid/content/Context;

.field private static mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

.field public static mDisonnectText:Ljava/lang/String;

.field public static mRemoteTouchView:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

.field public static mRemote_head_disconnected:Landroid/widget/ImageView;

.field private static mRemote_head_title:Landroid/widget/TextView;


# instance fields
.field private ListHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;

.field private volatile canDestroy:Z

.field private hideRunnable:Ljava/lang/Runnable;

.field private isManualConnecting:Z

.field private keyboard_height:I

.field private keyboard_width:I

.field private mDisconnectOnUiRunnable:Ljava/lang/Runnable;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIOriginalDeviceListListener:Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

.field private mNumberPop:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

.field private mOrientationDetector:Lcom/aloys/formuler/airsyncremote/RemoteActivity$OrientationDetector;

.field private mPopClickListener:Landroid/view/View$OnClickListener;

.field private mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

.field private mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

.field private mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

.field private mRemote_bottom_back:Landroid/widget/Button;

.field private mRemote_bottom_number:Landroid/widget/Button;

.field private mRemote_child_home:Landroid/widget/Button;

.field private mRemote_child_menu:Landroid/widget/Button;

.field private mRemote_child_mute:Landroid/widget/Button;

.field private mRemote_child_volume_max:Landroid/widget/Button;

.field private mRemote_child_volume_min:Landroid/widget/Button;

.field private mRemote_device_not_found:Landroid/view/View;

.field private mRemote_head_back:Landroid/widget/Button;

.field private mRemote_head_menu:Landroid/widget/Button;

.field private mRemote_light:Landroid/widget/ImageView;

.field private mShakeListener:Lcom/hisilicon/multiscreen/gsensor/IShakeListener;

.field private mShakeMe:Lcom/hisilicon/multiscreen/gsensor/ShakeMe;

.field private mSpeechMsgDealer:Lcom/hisilicon/multiscreen/protocol/utils/ISpeechMsgDealer;

.field private myHandler:Landroid/os/Handler;

.field private vime_status:Z

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mContext:Landroid/content/Context;

    .line 87
    sput-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mDisonnectText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;-><init>()V

    .line 109
    iput v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    .line 111
    iput v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    .line 113
    iput v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    .line 115
    iput v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    .line 166
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mOrientationDetector:Lcom/aloys/formuler/airsyncremote/RemoteActivity$OrientationDetector;

    .line 172
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mShakeMe:Lcom/hisilicon/multiscreen/gsensor/ShakeMe;

    .line 177
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mShakeListener:Lcom/hisilicon/multiscreen/gsensor/IShakeListener;

    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->myHandler:Landroid/os/Handler;

    .line 183
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 189
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->ListHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;

    .line 195
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    .line 199
    iput-boolean v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->isManualConnecting:Z

    .line 201
    iput-boolean v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->canDestroy:Z

    .line 206
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPopClickListener:Landroid/view/View$OnClickListener;

    .line 208
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$1;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$1;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mSpeechMsgDealer:Lcom/hisilicon/multiscreen/protocol/utils/ISpeechMsgDealer;

    .line 262
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$2;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$2;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mIOriginalDeviceListListener:Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

    .line 1381
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$11;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$11;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->hideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/aloys/formuler/airsyncremote/RemoteActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->connectDelay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->showListDelay()V

    return-void
.end method

.method static synthetic access$1000(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->showListView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/aloys/formuler/airsyncremote/RemoteActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->autoConnectDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/aloys/formuler/airsyncremote/RemoteActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->canDestroy:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->updateTouchView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->updateKeyboardView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_device_not_found:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->hideWarnLayout()V

    return-void
.end method

.method static synthetic access$1700(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_light:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)Lcom/aloys/formuler/airsyncremote/RemoteParent;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    return-object v0
.end method

.method static synthetic access$300()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_head_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->updateAirMouseView()V

    return-void
.end method

.method static synthetic access$500(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)Lcom/hisilicon/multiscreen/gsensor/ShakeMe;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mShakeMe:Lcom/hisilicon/multiscreen/gsensor/ShakeMe;

    return-object v0
.end method

.method static synthetic access$600(Lcom/aloys/formuler/airsyncremote/RemoteActivity;Lorg/cybergarage/upnp/Device;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;
    .param p1, "x1"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->manualConnectDevice(Lorg/cybergarage/upnp/Device;)V

    return-void
.end method

.method static synthetic access$700()Lcom/aloys/formuler/airsyncremote/DeviceListShow;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    return-object v0
.end method

.method static synthetic access$800(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->searchDelay()V

    return-void
.end method

.method static synthetic access$900(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->showList()V

    return-void
.end method

.method private autoConnectDevice(Ljava/lang/String;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->isReadyForAutoConnect()Z

    move-result v3

    if-nez v3, :cond_1

    .line 588
    const-string v3, "It is not ready for auto connect, try manual connect."

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->isTarget(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 596
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->getDeviceByUUID(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 597
    .local v2, "device":Lorg/cybergarage/upnp/Device;
    const-string v0, ""

    .line 598
    .local v0, "currUuid":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 600
    const-string v3, "Device is null!"

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_2
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 605
    .local v1, "currentDevice":Lorg/cybergarage/upnp/Device;
    if-eqz v1, :cond_3

    .line 607
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 610
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto connect to save device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 613
    invoke-direct {p0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->connectDevcie(Lorg/cybergarage/upnp/Device;)Z

    goto :goto_0

    .line 615
    :cond_4
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 618
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->updateDeviceName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private beginManualConnect(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 701
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/ServiceUtil;->saveUuid(Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->isManualConnecting:Z

    .line 703
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearConnectMessage()V

    .line 704
    return-void
.end method

.method private checkCurrentDevice()V
    .locals 2

    .prologue
    .line 523
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isReaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->reavedOnUi()V

    .line 547
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 529
    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->disconnectOnUi()V

    goto :goto_0

    .line 536
    :cond_2
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 537
    .local v0, "currentDevice":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_3

    .line 539
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->updateDeviceName(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initModules()V

    goto :goto_0

    .line 544
    :cond_3
    const-string v1, "Control state is running but current device is null."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->disconnectOnUi()V

    goto :goto_0
.end method

.method private clearConnectMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 575
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->removeMessages(I)V

    .line 579
    :cond_0
    return-void
.end method

.method private clearGotoActivity()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/16 v2, 0x8

    const/4 v1, 0x7

    .line 1929
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1931
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->removeMessages(I)V

    .line 1934
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    invoke-virtual {v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1936
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    invoke-virtual {v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->removeMessages(I)V

    .line 1939
    :cond_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    invoke-virtual {v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1941
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    invoke-virtual {v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->removeMessages(I)V

    .line 1943
    :cond_2
    return-void
.end method

.method private clearMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 1074
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->ListHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->ListHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;->removeMessages(I)V

    .line 1078
    :cond_0
    return-void
.end method

.method private clearSearchMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x12c

    .line 730
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->ListHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->ListHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;->removeMessages(I)V

    .line 734
    :cond_0
    return-void
.end method

.method private clearUpdateDeviceName()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 758
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->removeMessages(I)V

    .line 762
    :cond_0
    return-void
.end method

.method private connectDelay(Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 563
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->isTarget(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearConnectMessage()V

    .line 566
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    const/4 v2, 0x4

    .line 567
    invoke-virtual {v1, v2, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 568
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 571
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private connectDevcie(Lorg/cybergarage/upnp/Device;)Z
    .locals 2
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, "isAccess":Z
    if-nez p1, :cond_0

    .line 873
    const-string v1, "device is null!"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 874
    const/4 v0, 0x0

    .line 888
    :goto_0
    return v0

    .line 876
    :cond_0
    invoke-virtual {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->canAccess(Lorg/cybergarage/upnp/Device;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initLocalState()V

    .line 879
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->connectSuccess(Lorg/cybergarage/upnp/Device;)V

    .line 880
    const/4 v0, 0x1

    goto :goto_0

    .line 884
    :cond_1
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearCurrentDevice()V

    .line 885
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->removeCannotAccessDevice(Lorg/cybergarage/upnp/Device;)V

    .line 886
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private connectSuccess(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 932
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/ServiceUtil;->saveUuid(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->uri2Ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->save_ip:Ljava/lang/String;

    .line 934
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->updateDeviceName(Ljava/lang/String;)V

    .line 935
    return-void
.end method

.method private deInitHandler()V
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1133
    :cond_0
    return-void
.end method

.method private destroy()V
    .locals 3

    .prologue
    .line 1568
    :try_start_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    sget-object v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    sget-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->NETWORK_LOST:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v0, v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->stopPing(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 1569
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->stopVIME()V

    .line 1570
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->stopMultiScreenControlService()V

    .line 1571
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1577
    return-void

    .line 1575
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    throw v0
.end method

.method private disableOrientationDetector()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mOrientationDetector:Lcom/aloys/formuler/airsyncremote/RemoteActivity$OrientationDetector;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mOrientationDetector:Lcom/aloys/formuler/airsyncremote/RemoteActivity$OrientationDetector;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$OrientationDetector;->disable()V

    .line 425
    :cond_0
    return-void
.end method

.method private disconnectOnUi(Ljava/lang/String;)V
    .locals 1
    .param p1, "titleText"    # Ljava/lang/String;

    .prologue
    .line 1280
    sput-object p1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mDisonnectText:Ljava/lang/String;

    .line 1281
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mDisconnectOnUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1282
    return-void
.end method

.method private enableOrientationDetector()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mOrientationDetector:Lcom/aloys/formuler/airsyncremote/RemoteActivity$OrientationDetector;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mOrientationDetector:Lcom/aloys/formuler/airsyncremote/RemoteActivity$OrientationDetector;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$OrientationDetector;->enable()V

    .line 417
    :cond_0
    return-void
.end method

.method private endManualConnect()V
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->isManualConnecting:Z

    .line 709
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->hideList()V

    .line 710
    return-void
.end method

.method private getKeyboardXY(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    .line 1558
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    .line 1559
    return-void
.end method

.method private getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 957
    const/4 v1, 0x0

    .line 958
    .local v1, "macAddress":Ljava/lang/String;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 959
    .local v2, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 960
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 962
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 966
    :cond_0
    return-object v1

    .line 959
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemoteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "mac":Ljava/lang/String;
    return-object v0
.end method

.method private getWifiIpAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 976
    const/4 v1, 0x0

    .line 977
    .local v1, "ipAddress":Ljava/lang/String;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 978
    .local v2, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 979
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->int2Ip(I)Ljava/lang/String;

    move-result-object v1

    .line 984
    :cond_0
    return-object v1

    .line 978
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private handleTouch(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x2

    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1592
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    .line 1593
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    .line 1595
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1925
    :cond_0
    :goto_0
    return-void

    .line 1599
    :sswitch_0
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->gotoDeviceDiscovery()V

    goto :goto_0

    .line 1605
    :sswitch_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    if-eqz v0, :cond_1

    .line 1607
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->dismiss()V

    .line 1609
    :cond_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->updateBackground(I)V

    .line 1610
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    const v1, 0x7f0b0093

    invoke-virtual {p0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1617
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getKeyboardXY(Landroid/view/MotionEvent;)V

    .line 1619
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_4

    .line 1622
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 1624
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_btn:Landroid/widget/Button;

    const v1, 0x7f0200e3

    .line 1625
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 1627
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 1628
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1630
    :cond_3
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1631
    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto :goto_0

    .line 1634
    :cond_4
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    if-lez v0, :cond_9

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_9

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    div-int/2addr v1, v2

    if-lt v0, v1, :cond_9

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    if-gt v0, v1, :cond_9

    .line 1639
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 1641
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->toVibrate()V

    .line 1642
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_btn:Landroid/widget/Button;

    const v1, 0x7f0200e0

    .line 1643
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1644
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    .line 1645
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPressTime:J

    .line 1646
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPressTime:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1648
    const/16 v0, 0x67

    invoke-virtual {p0, v0, v4}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 1651
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_7

    .line 1653
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPressTime:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1655
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_6

    .line 1657
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 1661
    :cond_6
    const/16 v0, 0x67

    invoke-virtual {p0, v0, v4}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    .line 1662
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 1666
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 1667
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1669
    :cond_8
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1671
    const/16 v0, 0x67

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 1674
    :cond_9
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    if-lez v0, :cond_e

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_e

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_e

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    if-gt v0, v1, :cond_e

    .line 1678
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    .line 1680
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->toVibrate()V

    .line 1681
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_btn:Landroid/widget/Button;

    const v1, 0x7f0200de

    .line 1682
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1683
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    .line 1684
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPressTime:J

    .line 1685
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPressTime:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1687
    const/16 v0, 0x69

    invoke-virtual {p0, v0, v4}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 1690
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_c

    .line 1692
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPressTime:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1694
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_b

    .line 1696
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 1700
    :cond_b
    const/16 v0, 0x69

    invoke-virtual {p0, v0, v4}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    .line 1701
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 1705
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_d

    .line 1706
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1708
    :cond_d
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1710
    const/16 v0, 0x69

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 1713
    :cond_e
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_13

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    if-ge v0, v1, :cond_13

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    div-int/2addr v1, v2

    if-lt v0, v1, :cond_13

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    if-le v0, v1, :cond_13

    .line 1717
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f

    .line 1719
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->toVibrate()V

    .line 1720
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_btn:Landroid/widget/Button;

    const v1, 0x7f0200df

    .line 1721
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1722
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    .line 1723
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPressTime:J

    .line 1724
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPressTime:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1726
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, v4}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 1729
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_11

    .line 1731
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPressTime:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1733
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_10

    .line 1735
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 1739
    :cond_10
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, v4}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    .line 1740
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 1744
    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_12

    .line 1745
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1747
    :cond_12
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1749
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 1752
    :cond_13
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_18

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    if-ge v0, v1, :cond_18

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_18

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->y:I

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_height:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->keyboard_width:I

    if-le v0, v1, :cond_18

    .line 1756
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_14

    .line 1758
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->toVibrate()V

    .line 1759
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_btn:Landroid/widget/Button;

    const v1, 0x7f0200dd

    .line 1760
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1761
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    .line 1762
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPressTime:J

    .line 1763
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPressTime:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1765
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, v4}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 1768
    :cond_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_16

    .line 1770
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPressTime:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1772
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_15

    .line 1774
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 1778
    :cond_15
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, v4}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    .line 1779
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 1783
    :cond_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_17

    .line 1784
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1786
    :cond_17
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1788
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 1794
    :cond_18
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1795
    const/16 v0, 0x67

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    .line 1796
    const/16 v0, 0x69

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    .line 1797
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    .line 1798
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 1805
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_19

    .line 1807
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_home:Landroid/widget/Button;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1809
    :cond_19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_1a

    .line 1810
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1812
    :cond_1a
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_home:Landroid/widget/Button;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1813
    const/16 v0, 0x7d0

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 1820
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1b

    .line 1822
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_menu:Landroid/widget/Button;

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1824
    :cond_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_1c

    .line 1825
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1827
    :cond_1c
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_menu:Landroid/widget/Button;

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1828
    const/16 v0, 0x7d1

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 1835
    :sswitch_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1d

    .line 1837
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_mute:Landroid/widget/Button;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1839
    :cond_1d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_1e

    .line 1840
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1842
    :cond_1e
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_mute:Landroid/widget/Button;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1843
    const/16 v0, 0x7d2

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 1850
    :sswitch_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1f

    .line 1852
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_volume_max:Landroid/widget/Button;

    const v1, 0x7f0200ba

    .line 1853
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1855
    :cond_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_20

    .line 1856
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1858
    :cond_20
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_volume_max:Landroid/widget/Button;

    const v1, 0x7f0200b9

    .line 1859
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1860
    const/16 v0, 0x7ea

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 1866
    :sswitch_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_21

    .line 1868
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_volume_min:Landroid/widget/Button;

    const v1, 0x7f0200bc

    .line 1869
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1871
    :cond_21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_22

    .line 1872
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1874
    :cond_22
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_volume_min:Landroid/widget/Button;

    const v1, 0x7f0200bb

    .line 1875
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1876
    const/16 v0, 0x7eb

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 1882
    :sswitch_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_23

    .line 1884
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_bottom_back:Landroid/widget/Button;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1886
    :cond_23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_24

    .line 1887
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1889
    :cond_24
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_bottom_back:Landroid/widget/Button;

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1890
    const/16 v0, 0x7e5

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 1898
    :sswitch_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_25

    .line 1900
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_bottom_number:Landroid/widget/Button;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1903
    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_26

    .line 1904
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1906
    :cond_26
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_bottom_number:Landroid/widget/Button;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1908
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mNumberPop:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    if-eqz v0, :cond_27

    .line 1910
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mNumberPop:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->dismiss()V

    .line 1912
    :cond_27
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mNumberPop:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    .line 1913
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mNumberPop:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_bottom_number:Landroid/widget/Button;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 1595
    :sswitch_data_0
    .sparse-switch
        0x7f0b0072 -> :sswitch_9
        0x7f0b0074 -> :sswitch_8
        0x7f0b0076 -> :sswitch_3
        0x7f0b0077 -> :sswitch_4
        0x7f0b0078 -> :sswitch_5
        0x7f0b0079 -> :sswitch_6
        0x7f0b007a -> :sswitch_7
        0x7f0b008e -> :sswitch_0
        0x7f0b0093 -> :sswitch_1
        0x7f0b009a -> :sswitch_2
    .end sparse-switch
.end method

.method private hideList()V
    .locals 1

    .prologue
    .line 1063
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    if-eqz v0, :cond_0

    .line 1065
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->dismiss()V

    .line 1067
    :cond_0
    return-void
.end method

.method private hideWarnLayout()V
    .locals 3

    .prologue
    .line 1339
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_device_not_found:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1362
    :goto_0
    return-void

    .line 1341
    :cond_0
    sget-object v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f040008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1342
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity$10;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$10;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1361
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_device_not_found:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private initAirMouse()V
    .locals 2

    .prologue
    .line 1463
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteTouchView:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->initAirMouse()V

    .line 1464
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1466
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteTouchView:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->disableAirMouse()V

    .line 1468
    :cond_0
    return-void
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 1119
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RemoteActivityHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1120
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1121
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->ListHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;

    .line 1122
    return-void
.end method

.method private initLocalState()V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->init()V

    .line 927
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->syncInfo()V

    .line 928
    return-void
.end method

.method private initModules()V
    .locals 1

    .prologue
    .line 1424
    const-string v0, "initModules"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->resetAccessListener()V

    .line 1427
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initRemoteCenter()V

    .line 1428
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initVIME()V

    .line 1429
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initAirMouse()V

    .line 1430
    return-void
.end method

.method private initOrientationDetector()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method private initRemoteCenter()V
    .locals 1

    .prologue
    .line 1438
    const-string v0, "initRemoteCenter"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1440
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getRemoteControlCenter()Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    .line 1443
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteKeyboard()Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    move-result-object v0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    .line 1444
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteSpeechControl()Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    move-result-object v0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    .line 1445
    return-void
.end method

.method private initShakeMe()V
    .locals 2

    .prologue
    .line 429
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$4;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$4;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mShakeListener:Lcom/hisilicon/multiscreen/gsensor/IShakeListener;

    .line 441
    new-instance v0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mShakeListener:Lcom/hisilicon/multiscreen/gsensor/IShakeListener;

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;-><init>(Landroid/content/Context;Lcom/hisilicon/multiscreen/gsensor/IShakeListener;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mShakeMe:Lcom/hisilicon/multiscreen/gsensor/ShakeMe;

    .line 442
    return-void
.end method

.method private initVIME()V
    .locals 2

    .prologue
    .line 1453
    const-string v0, "initVIME"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1455
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->vime_status:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1456
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1459
    :goto_0
    return-void

    .line 1458
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 451
    const-string v0, "initView"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 453
    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_head_title:Landroid/widget/TextView;

    .line 454
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mDisonnectText:Ljava/lang/String;

    .line 455
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_head_disconnected:Landroid/widget/ImageView;

    .line 456
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_light:Landroid/widget/ImageView;

    .line 457
    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_device_not_found:Landroid/view/View;

    .line 460
    const v0, 0x7f0b006f

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    sput-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteTouchView:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    .line 464
    const v0, 0x7f0b0071

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    .line 465
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->mRemote_keyboard_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 469
    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_head_back:Landroid/widget/Button;

    .line 470
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_head_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 472
    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_head_menu:Landroid/widget/Button;

    .line 473
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_head_menu:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 475
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_home:Landroid/widget/Button;

    .line 476
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_home:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 478
    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_menu:Landroid/widget/Button;

    .line 479
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_menu:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 481
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_mute:Landroid/widget/Button;

    .line 482
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_mute:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 484
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_volume_max:Landroid/widget/Button;

    .line 485
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_volume_max:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 487
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_volume_min:Landroid/widget/Button;

    .line 488
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_child_volume_min:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 491
    const v0, 0x7f0b0072

    .line 492
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_bottom_number:Landroid/widget/Button;

    .line 493
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_bottom_number:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_bottom_back:Landroid/widget/Button;

    .line 496
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_bottom_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 498
    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    new-instance v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity$5;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$5;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;-><init>(Landroid/app/Activity;Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    .line 507
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_head_title:Landroid/widget/TextView;

    new-instance v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity$6;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$6;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    return-void
.end method

.method private isFirst()Z
    .locals 3

    .prologue
    .line 1013
    const/4 v0, 0x0

    .line 1014
    .local v0, "isFirst":Z
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/ServiceUtil;->getSavedUuid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/ServiceUtil;->getSavedUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1016
    :cond_0
    const/4 v0, 0x1

    .line 1018
    :cond_1
    return v0
.end method

.method private isReadyForAutoConnect()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->isManualConnecting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 716
    :cond_0
    const/4 v0, 0x0

    .line 718
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSaved(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1029
    const/4 v0, 0x0

    .line 1030
    .local v0, "isSaved":Z
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/ServiceUtil;->getSavedUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1032
    const/4 v0, 0x1

    .line 1034
    :cond_0
    return v0
.end method

.method private isTarget(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, "isTarget":Z
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->isFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 997
    const/4 v0, 0x1

    .line 1004
    :goto_0
    return v0

    .line 1001
    :cond_0
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->isSaved(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized manualConnectDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 6
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 628
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->beginManualConnect(Lorg/cybergarage/upnp/Device;)V

    .line 629
    if-nez p1, :cond_0

    .line 632
    const-string v4, "device info is null!"

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->endManualConnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    :goto_0
    monitor-exit p0

    return-void

    .line 636
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cybergarage/upnp/ServiceList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 639
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, "title":Ljava/lang/String;
    const-string v2, "Device Service is null"

    .line 641
    .local v2, "tips":Ljava/lang/String;
    new-instance v4, Lcom/aloys/formuler/airsyncremote/RemoteActivity$7;

    invoke-direct {v4, p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$7;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    invoke-static {p0, v3, v2, v4}, Lcom/aloys/formuler/airsyncremote/DialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 647
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->endManualConnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 628
    .end local v2    # "tips":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 652
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 653
    .local v0, "currentDevice":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_3

    .line 656
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "currentUuid":Ljava/lang/String;
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 660
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 663
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->updateDeviceName(Ljava/lang/String;)V

    .line 664
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->endManualConnect()V

    goto :goto_0

    .line 671
    :cond_2
    sget-object v4, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    sget-object v5, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->DEINIT:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {p0, v4, v5}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->deInitNetworkChecker(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 672
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearCurrentDevice()V

    .line 682
    .end local v1    # "currentUuid":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->connectDevcie(Lorg/cybergarage/upnp/Device;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 685
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 687
    .restart local v3    # "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/aloys/formuler/airsyncremote/RemoteActivity$8;

    invoke-direct {v5, p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$8;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    .line 686
    invoke-static {p0, v3, v4, v5}, Lcom/aloys/formuler/airsyncremote/DialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 696
    .end local v3    # "title":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->endManualConnect()V

    goto/16 :goto_0

    .line 677
    .restart local v1    # "currentUuid":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setCurrentDevice(Lorg/cybergarage/upnp/Device;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private readStatusPreference(Ljava/lang/String;)Z
    .locals 3
    .param p1, "statusKey"    # Ljava/lang/String;

    .prologue
    .line 556
    const-string v1, "Setting_Status"

    const/4 v2, 0x0

    .line 557
    invoke-virtual {p0, v1, v2}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 558
    .local v0, "prefrence":Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private reavedOnUi()V
    .locals 3

    .prologue
    .line 1298
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1299
    .local v0, "titleText":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->disconnectOnUi(Ljava/lang/String;)V

    .line 1300
    return-void
.end method

.method private resumeActivity()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->remote:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setTopActivity(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;)V

    .line 772
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->enableOrientationDetector()V

    .line 773
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->checkCurrentDevice()V

    .line 774
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->updateView()V

    .line 776
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mIOriginalDeviceListListener:Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setOriginalDeviceListListener(Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;)V

    .line 777
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->resetAccessListener()V

    .line 778
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->resetSceneListener()V

    .line 779
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->searchDelay()V

    .line 780
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->showListDelay()V

    .line 781
    return-void
.end method

.method private searchDelay()V
    .locals 4

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearSearchMessage()V

    .line 724
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->ListHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 725
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->ListHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 726
    return-void
.end method

.method private showList()V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->syncOrderingList()V

    .line 1054
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->sendEmptyMessage(I)Z

    .line 1055
    return-void
.end method

.method private showListDelay()V
    .locals 4

    .prologue
    .line 1043
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearMessage()V

    .line 1044
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->ListHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1045
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->ListHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1046
    return-void
.end method

.method private showListView()V
    .locals 1

    .prologue
    .line 741
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    if-eqz v0, :cond_0

    .line 742
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->updateAdapter()V

    .line 743
    :cond_0
    return-void
.end method

.method private showWarnLayout()V
    .locals 3

    .prologue
    .line 1308
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_device_not_found:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1331
    :goto_0
    return-void

    .line 1310
    :cond_0
    sget-object v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1311
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity$9;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$9;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1330
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_device_not_found:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private stopMultiScreenControlService()V
    .locals 2

    .prologue
    .line 1581
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1582
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->stopService(Landroid/content/Intent;)Z

    .line 1583
    return-void
.end method

.method private syncInfo()V
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->canSyncInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->startPing()V

    .line 1402
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initModules()V

    .line 1416
    :goto_0
    return-void

    .line 1407
    :cond_0
    const-string v0, "sync STB info failed!"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1413
    :cond_1
    const-string v0, "Resume RemoteActivity from HOME."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1414
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initModules()V

    goto :goto_0
.end method

.method private updateAirMouseView()V
    .locals 3

    .prologue
    .line 1486
    const/4 v0, 0x2

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    .line 1487
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REMOTE_STATUS"

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1488
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mShakeMe:Lcom/hisilicon/multiscreen/gsensor/ShakeMe;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->enable()V

    .line 1489
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_head_menu:Landroid/widget/Button;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1490
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteTouchView:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->setVisibility(I)V

    .line 1491
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteTouchView:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->enableAirMouse()Z

    .line 1492
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->setVisibility(I)V

    .line 1493
    return-void
.end method

.method private updateKeyboardView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1500
    const/4 v0, 0x3

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    .line 1501
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REMOTE_STATUS"

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1502
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_head_menu:Landroid/widget/Button;

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1503
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    invoke-virtual {v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->setVisibility(I)V

    .line 1504
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteTouchView:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->setVisibility(I)V

    .line 1505
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_light:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1506
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteTouchView:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->disableAirMouse()V

    .line 1507
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mShakeMe:Lcom/hisilicon/multiscreen/gsensor/ShakeMe;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->enable()V

    .line 1508
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity$12;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$12;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1516
    return-void
.end method

.method private updateTouchView()V
    .locals 3

    .prologue
    .line 1475
    const/4 v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    .line 1476
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REMOTE_STATUS"

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1477
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mShakeMe:Lcom/hisilicon/multiscreen/gsensor/ShakeMe;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->enable()V

    .line 1478
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_head_menu:Landroid/widget/Button;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1479
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteTouchView:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->setVisibility(I)V

    .line 1480
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteTouchView:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->disableAirMouse()V

    .line 1481
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteKeyboardView:Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteKeyboardView;->setVisibility(I)V

    .line 1482
    return-void
.end method

.method private updateView()V
    .locals 4

    .prologue
    .line 789
    .line 790
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "REMOTE_STATUS"

    iget v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->DEFAULT_REMOTE_UI_STATUS:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 792
    .local v0, "selectStatus":I
    packed-switch v0, :pswitch_data_0

    .line 814
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->updateTouchView()V

    .line 819
    :goto_0
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->updateBackground(I)V

    .line 823
    :cond_0
    return-void

    .line 796
    :pswitch_0
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->updateTouchView()V

    goto :goto_0

    .line 802
    :pswitch_1
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->updateAirMouseView()V

    goto :goto_0

    .line 808
    :pswitch_2
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->updateKeyboardView()V

    goto :goto_0

    .line 792
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private warnLayoutFlash()V
    .locals 4

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemote_device_not_found:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1376
    :goto_0
    return-void

    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1374
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->showWarnLayout()V

    .line 1375
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected canAccess(Lorg/cybergarage/upnp/Device;)Z
    .locals 6
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    const/16 v5, 0xbb8

    .line 902
    const-string v4, "Try to access device."

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 903
    const/4 v3, 0x0

    .line 904
    .local v3, "retCanAccess":Z
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getRemoteId()Ljava/lang/String;

    move-result-object v2

    .line 906
    .local v2, "remoteId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->getWifiIpAddress()Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "localIP":Ljava/lang/String;
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setCurrentDevice(Lorg/cybergarage/upnp/Device;)V

    .line 909
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setRemoteId(Ljava/lang/String;)V

    .line 911
    new-instance v0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;-><init>()V

    .line 913
    .local v0, "accessController":Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    invoke-virtual {v0, v2, v1, v5, v5}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->accessHello(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    .line 916
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Access STB is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->i(Ljava/lang/String;)V

    .line 918
    return v3
.end method

.method protected dealAccessByeForReave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 843
    invoke-super {p0, p1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->dealAccessByeForReave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    .line 844
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->reavedOnUi()V

    .line 845
    return-void
.end method

.method protected dealNetfailedStatus(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 832
    invoke-super {p0, p1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->dealNetfailedStatus(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    .line 833
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->disconnectOnUi()V

    .line 834
    return-void
.end method

.method protected dealSTBLeave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 854
    invoke-super {p0, p1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->dealSTBLeave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    .line 855
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->disconnectOnUi()V

    .line 856
    return-void
.end method

.method protected dealSTBSuppend(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 861
    invoke-super {p0, p1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->dealSTBSuppend(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    .line 862
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->disconnectOnUi()V

    .line 863
    return-void
.end method

.method public disconnectOnUi()V
    .locals 3

    .prologue
    .line 1289
    sget-object v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1290
    .local v0, "titleText":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->disconnectOnUi(Ljava/lang/String;)V

    .line 1291
    return-void
.end method

.method protected gotoAirMouse()V
    .locals 4

    .prologue
    .line 1957
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoAirMouse()V

    .line 1958
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearGotoActivity()V

    .line 1959
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1960
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1961
    return-void
.end method

.method protected gotoDeviceDiscovery()V
    .locals 2

    .prologue
    .line 2014
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearGotoActivity()V

    .line 2015
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2016
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2017
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->startActivity(Landroid/content/Intent;)V

    .line 2018
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->finish()V

    .line 2019
    return-void
.end method

.method protected gotoGamePage()V
    .locals 3

    .prologue
    .line 1975
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoGamePage()V

    .line 1976
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearGotoActivity()V

    .line 1977
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1978
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1979
    const-string v1, "REMOTE_STATUS"

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1980
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->startActivity(Landroid/content/Intent;)V

    .line 1981
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->finish()V

    .line 1982
    return-void
.end method

.method protected gotoMirror()V
    .locals 3

    .prologue
    .line 1987
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoMirror()V

    .line 1988
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearGotoActivity()V

    .line 1989
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1990
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1991
    const-string v1, "REMOTE_STATUS"

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1992
    const-string v1, "MIRROR_STATUS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1993
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->startActivity(Landroid/content/Intent;)V

    .line 1995
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->finish()V

    .line 1996
    return-void
.end method

.method protected gotoMirrorSensor()V
    .locals 3

    .prologue
    .line 2001
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoMirrorSensor()V

    .line 2002
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearGotoActivity()V

    .line 2003
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2004
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2005
    const-string v1, "REMOTE_STATUS"

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2006
    const-string v1, "MIRROR_STATUS"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2007
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->startActivity(Landroid/content/Intent;)V

    .line 2008
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->finish()V

    .line 2009
    return-void
.end method

.method protected gotoRemoteKey()V
    .locals 4

    .prologue
    .line 1966
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoRemoteKey()V

    .line 1967
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearGotoActivity()V

    .line 1968
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1969
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1970
    return-void
.end method

.method protected gotoRemoteTouch()V
    .locals 4

    .prologue
    .line 1948
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoRemoteTouch()V

    .line 1949
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearGotoActivity()V

    .line 1950
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1951
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1952
    return-void
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 375
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->initData()V

    .line 376
    sput-object p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mContext:Landroid/content/Context;

    .line 377
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->DEFAULT_REMOTE_UI_STATUS:I

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    .line 378
    const-string v0, "vime"

    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->readStatusPreference(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->vime_status:Z

    .line 379
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    .line 380
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$PopwinClickEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$PopwinClickEvent;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;Lcom/aloys/formuler/airsyncremote/RemoteActivity$1;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPopClickListener:Landroid/view/View$OnClickListener;

    .line 381
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteParent;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPopClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteParent;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    .line 382
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initOrientationDetector()V

    .line 383
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$3;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$3;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mDisconnectOnUiRunnable:Ljava/lang/Runnable;

    .line 397
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initShakeMe()V

    .line 398
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initHandler()V

    .line 399
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 369
    invoke-super {p0, p1, p2, p3}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 370
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onBackPressed()V

    .line 329
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->gotoDeviceDiscovery()V

    .line 330
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 287
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->setContentView(I)V

    .line 288
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initView()V

    .line 289
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onDestroy()V

    .line 319
    const/4 v0, 0x0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mContext:Landroid/content/Context;

    .line 320
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->stopVIME()V

    .line 321
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->deInitHandler()V

    .line 322
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->unbindDrawables(Landroid/view/View;)V

    .line 323
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 356
    invoke-super {p0, p1, p2}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onPause()V

    .line 302
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->disableOrientationDetector()V

    .line 304
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mShakeMe:Lcom/hisilicon/multiscreen/gsensor/ShakeMe;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->disable()V

    .line 306
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteTouchView:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->disableAirMouse()V

    .line 307
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onResume()V

    .line 295
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->resumeActivity()V

    .line 296
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onStop()V

    .line 313
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public updateDeviceName(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->clearUpdateDeviceName()V

    .line 751
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 752
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteActivityHandler:Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$RemoteActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 754
    return-void
.end method
