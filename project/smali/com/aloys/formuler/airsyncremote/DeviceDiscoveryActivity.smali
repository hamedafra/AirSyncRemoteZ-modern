.class public Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
.super Landroid/app/Activity;
.source "DeviceDiscoveryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;,
        Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;,
        Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$SyncListHandler;,
        Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;
    }
.end annotation


# static fields
.field public static final ACCESS_CONNECT_TIMEOUT:I = 0xbb8

.field public static final ACCESS_REAVED:I = 0x1e

.field public static final CONNECT_DELAY_MILLIS:J = 0x32L

.field public static final KEEP_ALIVE_FAILED:I = 0x14

.field public static final KEEP_ALIVE_PACKET_LOSS:I = 0xa

.field public static final MSEARCH_RETRY_TIMES:I = 0x3

.field private static final MSG_DATA_KEY_DELAY_TIME:Ljava/lang/String; = "MSEARCH_DELAY_TIME"

.field private static final MSG_DATA_KEY_RETRY_TIMES:Ljava/lang/String; = "MSEARCH_RETRY_TIMES"

.field public static final MSG_MESARCH:I = 0x12c

.field public static final MSG_MSEARCH_DELAY:I = 0xc8

.field public static final MSG_SHOWLIST_DELAY:I = 0x64

.field public static final READ_TIMEOUT:I = 0xbb8

.field public static final RE_SEARCH_DELAY_MILLIS:J = 0x7d0L

.field public static final SEARCH_DELAY_MILLIS:J = 0x32L

.field public static final SHOWLIST_DELAY_MILLIS:J = 0x32L

.field public static final STB_LEAVE:I = 0x28

.field public static final STB_SUSPEND:I = 0x50

.field private static mContext:Landroid/content/Context;

.field public static mDisonnectText:Ljava/lang/String;

.field public static save_ip:Ljava/lang/String;


# instance fields
.field private ListHandler:Landroid/os/Handler;

.field private volatile canDestroy:Z

.field private devList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

.field private displayWidth:I

.field private isManualConnecting:Z

.field private mAccessController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

.field private mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;

.field private mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

.field private mDeVice_title_disconnected:Landroid/widget/ImageView;

.field public mDeviceListHandler:Lcom/hisilicon/multiscreen/upnputils/UpnpDeviceListHandler;

.field private mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

.field private mDevice_child:Lcom/aloys/formuler/airsyncremote/DeviceChildView;

.field private mDevice_setting:Landroid/widget/Button;

.field private mDevice_title_info:Landroid/widget/TextView;

.field private mDevice_title_select:Landroid/widget/RelativeLayout;

.field private mDisconnectOnUiRunnable:Ljava/lang/Runnable;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIOriginalDeviceListListener:Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

.field private mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPopClickCallback:Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;

.field private mShowDeviceListHandler:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;

.field private mSyncDevList:Ljava/lang/Object;

.field private myHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    sput-object v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDisonnectText:Ljava/lang/String;

    .line 196
    sput-object v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mContext:Landroid/content/Context;

    .line 201
    sput-object v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->save_ip:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 99
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mAccessController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .line 104
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;

    .line 110
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .line 158
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 160
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    .line 190
    iput v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->displayWidth:I

    .line 206
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->devList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    .line 211
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mShowDeviceListHandler:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;

    .line 235
    iput-boolean v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->canDestroy:Z

    .line 237
    iput-boolean v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->isManualConnecting:Z

    .line 248
    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$1;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$1;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDeviceListHandler:Lcom/hisilicon/multiscreen/upnputils/UpnpDeviceListHandler;

    .line 265
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mSyncDevList:Ljava/lang/Object;

    .line 271
    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$2;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$2;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mIOriginalDeviceListListener:Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

    .line 799
    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$7;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$7;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1114
    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$8;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$8;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mSyncDevList:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->dealPacketLoss()V

    return-void
.end method

.method static synthetic access$102(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;)Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->devList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->dealNetfailedStatus(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->dealAccessByeForReave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->dealSTBLeave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->dealSTBSuspend(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Lcom/aloys/formuler/airsyncremote/DeviceListShow;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->retrySearchDelay(IJ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->showList()V

    return-void
.end method

.method static synthetic access$1800(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->showListView()V

    return-void
.end method

.method static synthetic access$1900(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->autoConnectDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->canDestroy:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->gotoRemote()V

    return-void
.end method

.method static synthetic access$2300(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->gotoMirror()V

    return-void
.end method

.method static synthetic access$2400(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->displayWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mShowDeviceListHandler:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->connectDelay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->showListDelay()V

    return-void
.end method

.method static synthetic access$600(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Lorg/cybergarage/upnp/Device;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
    .param p1, "x1"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->manualConnectDevice(Lorg/cybergarage/upnp/Device;)V

    return-void
.end method

.method static synthetic access$700(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDevice_title_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDeVice_title_disconnected:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;

    return-object v0
.end method

.method private autoConnectDevice(Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->isReadyForAutoConnect()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1177
    const-string v3, "It is not ready for auto connect, try manual connect."

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->isTarget(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1185
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->getDeviceByUUID(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 1186
    .local v2, "device":Lorg/cybergarage/upnp/Device;
    const-string v0, ""

    .line 1187
    .local v0, "currUuid":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1189
    const-string v3, "Device is null!"

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1193
    :cond_2
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 1194
    .local v1, "currentDevice":Lorg/cybergarage/upnp/Device;
    if-eqz v1, :cond_3

    .line 1196
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 1199
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1201
    invoke-direct {p0, v2}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->connectDevcie(Lorg/cybergarage/upnp/Device;)Z

    goto :goto_0

    .line 1203
    :cond_4
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1206
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->updateDeviceName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private beginManualConnect(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 1290
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/ServiceUtil;->saveUuid(Ljava/lang/String;)V

    .line 1291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->isManualConnecting:Z

    .line 1292
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->clearConnectMessage()V

    .line 1293
    return-void
.end method

.method private canAccess(Lorg/cybergarage/upnp/Device;)Z
    .locals 5
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    const/16 v4, 0xbb8

    .line 1436
    const-string v3, "Try to access device."

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1437
    const/4 v2, 0x0

    .line 1438
    .local v2, "retCanAccess":Z
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->getRemoteId()Ljava/lang/String;

    move-result-object v1

    .line 1440
    .local v1, "remoteId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->getWifiIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, "localIP":Ljava/lang/String;
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setCurrentDevice(Lorg/cybergarage/upnp/Device;)V

    .line 1443
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setRemoteId(Ljava/lang/String;)V

    .line 1445
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mAccessController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .line 1446
    invoke-virtual {v3, v1, v0, v4, v4}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->accessHello(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    .line 1447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Access STB is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->i(Ljava/lang/String;)V

    .line 1449
    return v2
.end method

.method private checkCurrentDevice()V
    .locals 2

    .prologue
    .line 589
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isReaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->reavedOnUi()V

    .line 611
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 595
    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 597
    :cond_1
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->disconnectOnUi()V

    goto :goto_0

    .line 601
    :cond_2
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 602
    .local v0, "currentDevice":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_3

    .line 605
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->updateDeviceName(Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_3
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->disconnectOnUi()V

    goto :goto_0
.end method

.method private clearConnectMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1163
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mShowDeviceListHandler:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mShowDeviceListHandler:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;->removeMessages(I)V

    .line 1167
    :cond_0
    return-void
.end method

.method private clearCurrentDevice()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setCurrentDevice(Lorg/cybergarage/upnp/Device;)V

    .line 756
    return-void
.end method

.method private clearSceneListener()V
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setSceneListener(Lcom/hisilicon/multiscreen/scene/ISceneListener;)V

    .line 860
    return-void
.end method

.method private clearSearchMessage()V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    const/16 v1, 0xc8

    .line 982
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 991
    :cond_1
    return-void
.end method

.method private clearShowListMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 938
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 942
    :cond_0
    return-void
.end method

.method private connectDelay(Ljava/lang/String;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1149
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->isTarget(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1151
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->clearConnectMessage()V

    .line 1152
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mShowDeviceListHandler:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;

    const/4 v2, 0x4

    .line 1153
    invoke-virtual {v1, v2, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1154
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mShowDeviceListHandler:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1156
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private connectDevcie(Lorg/cybergarage/upnp/Device;)Z
    .locals 2
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 1402
    const/4 v0, 0x0

    .line 1403
    .local v0, "isAccess":Z
    if-nez p1, :cond_0

    .line 1405
    const-string v1, "device is null!"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1406
    const/4 v0, 0x0

    .line 1421
    :goto_0
    return v0

    .line 1408
    :cond_0
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->canAccess(Lorg/cybergarage/upnp/Device;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1410
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->initLocalState()V

    .line 1411
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->connectSuccess(Lorg/cybergarage/upnp/Device;)V

    .line 1412
    const/4 v0, 0x1

    goto :goto_0

    .line 1416
    :cond_1
    const-string v1, "Access failed: remove device."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1417
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->clearCurrentDevice()V

    .line 1418
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->removeCannotAccessDevice(Lorg/cybergarage/upnp/Device;)V

    .line 1419
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private connectSuccess(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 1464
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/ServiceUtil;->saveUuid(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->uri2Ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->save_ip:Ljava/lang/String;

    .line 1466
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->updateDeviceName(Ljava/lang/String;)V

    .line 1468
    return-void
.end method

.method private deInitHandler()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 927
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->clearShowListMessage()V

    .line 928
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->clearSearchMessage()V

    .line 929
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 931
    :cond_0
    return-void
.end method

.method private deInitNetworkChecker(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    .param p2, "clientState"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0, p1, p2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->stopPing(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 768
    return-void
.end method

.method private dealAccessByeForReave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 714
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->REAVED:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-direct {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->deInitNetworkChecker(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 715
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->clearCurrentDevice()V

    .line 716
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->reavedOnUi()V

    .line 717
    return-void
.end method

.method private dealNetfailedStatus(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 700
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->NETWORK_LOST:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-direct {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->deInitNetworkChecker(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 701
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->NETWORK_LOST:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->sendByeToSTB(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 702
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->removeInvalidDevice()V

    .line 704
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->disconnectOnUi()V

    .line 705
    return-void
.end method

.method private dealPacketLoss()V
    .locals 2

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 691
    return-void
.end method

.method private dealSTBLeave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 725
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_LEAVE:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-direct {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->deInitNetworkChecker(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 726
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_LEAVE:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->sendByeToSTB(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 727
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->removeInvalidDevice()V

    .line 728
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->disconnectOnUi()V

    .line 729
    return-void
.end method

.method private dealSTBSuspend(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 737
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_SUSPEND:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-direct {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->deInitNetworkChecker(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 738
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->clearCurrentDevice()V

    .line 739
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->disconnectOnUi()V

    .line 740
    return-void
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 408
    :try_start_0
    invoke-static {p0}, Lcom/hisilicon/multiscreen/protocol/utils/ServiceUtil;->stopMultiScreenControlService(Landroid/content/Context;)V

    .line 409
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->deInitHandler()V

    .line 410
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 416
    return-void

    .line 414
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    throw v0
.end method

.method private disconnectOnUi()V
    .locals 3

    .prologue
    .line 1525
    sget-object v1, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1526
    .local v0, "titleText":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->disconnectOnUi(Ljava/lang/String;)V

    .line 1527
    return-void
.end method

.method private disconnectOnUi(Ljava/lang/String;)V
    .locals 1
    .param p1, "titleText"    # Ljava/lang/String;

    .prologue
    .line 1515
    sput-object p1, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDisonnectText:Ljava/lang/String;

    .line 1516
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDisconnectOnUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1517
    return-void
.end method

.method private endManualConnect()V
    .locals 1

    .prologue
    .line 1297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->isManualConnecting:Z

    .line 1298
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->hideList()V

    .line 1299
    return-void
.end method

.method private getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1568
    const/4 v1, 0x0

    .line 1569
    .local v1, "macAddress":Ljava/lang/String;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1570
    .local v2, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 1571
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 1573
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 1577
    :cond_0
    return-object v1

    .line 1570
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemoteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 1557
    .local v0, "mac":Ljava/lang/String;
    return-object v0
.end method

.method private getWifiIpAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1587
    const/4 v1, 0x0

    .line 1588
    .local v1, "ipAddress":Ljava/lang/String;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1589
    .local v2, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 1590
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 1592
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->int2Ip(I)Ljava/lang/String;

    move-result-object v1

    .line 1595
    :cond_0
    return-object v1

    .line 1589
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private gotoMirror()V
    .locals 5

    .prologue
    const v4, 0x7f080005

    .line 1350
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1352
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->startMultiScreen()V

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1356
    :cond_1
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->isFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1358
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->devList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    if-nez v2, :cond_2

    .line 1360
    sget-object v2, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mContext:Landroid/content/Context;

    .line 1361
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mContext:Landroid/content/Context;

    .line 1360
    invoke-static {v2, v3}, Lcom/aloys/formuler/airsyncremote/DialogUtils;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 1363
    :cond_2
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->devList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1365
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->devList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 1366
    .local v1, "mDevice":Lorg/cybergarage/upnp/Device;
    invoke-direct {p0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->connectDevcie(Lorg/cybergarage/upnp/Device;)Z

    .line 1367
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1369
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->startMultiScreen()V

    goto :goto_0

    .line 1374
    .end local v1    # "mDevice":Lorg/cybergarage/upnp/Device;
    :cond_3
    sget-object v2, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mContext:Landroid/content/Context;

    .line 1375
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mContext:Landroid/content/Context;

    .line 1374
    invoke-static {v2, v3}, Lcom/aloys/formuler/airsyncremote/DialogUtils;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 1380
    :cond_4
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1381
    .local v0, "currentDevice":Lorg/cybergarage/upnp/Device;
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 1383
    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->connectDevcie(Lorg/cybergarage/upnp/Device;)Z

    .line 1384
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1386
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->startMultiScreen()V

    goto :goto_0

    .line 1391
    :cond_5
    sget-object v2, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mContext:Landroid/content/Context;

    .line 1392
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mContext:Landroid/content/Context;

    .line 1391
    invoke-static {v2, v3}, Lcom/aloys/formuler/airsyncremote/DialogUtils;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private gotoRemote()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1312
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1313
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/hisilicon/multiscreen/scene/SceneType;->REMOTE_TOUCH:Lcom/hisilicon/multiscreen/scene/SceneType;

    .line 1315
    .local v1, "scene":Lcom/hisilicon/multiscreen/scene/SceneType;
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isSceneOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1317
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getScene()Lcom/hisilicon/multiscreen/scene/SceneType;

    move-result-object v1

    .line 1320
    :cond_0
    sget-object v2, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$11;->$SwitchMap$com$hisilicon$multiscreen$scene$SceneType:[I

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/scene/SceneType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1336
    const-string v2, "REMOTE_STATUS"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1341
    :goto_0
    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1342
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->startActivity(Landroid/content/Intent;)V

    .line 1343
    return-void

    .line 1324
    :pswitch_0
    const-string v2, "REMOTE_STATUS"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1330
    :pswitch_1
    const-string v2, "REMOTE_STATUS"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideList()V
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->dismiss()V

    .line 974
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 452
    const-string v0, "initData"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 453
    invoke-static {p0}, Lcom/hisilicon/multiscreen/protocol/utils/ServiceUtil;->checkMultiScreenControlService(Landroid/content/Context;)V

    .line 454
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 455
    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$3;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$3;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mPopClickCallback:Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;

    .line 462
    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mPopClickCallback:Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;

    invoke-direct {v0, p0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;-><init>(Landroid/app/Activity;Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    .line 464
    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$4;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$4;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDisconnectOnUiRunnable:Ljava/lang/Runnable;

    .line 480
    new-instance v0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;-><init>()V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mAccessController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .line 482
    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;

    .line 484
    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$5;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$5;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .line 533
    return-void
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 914
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DiscoveryHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 915
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 916
    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$SyncListHandler;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$SyncListHandler;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    .line 917
    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mShowDeviceListHandler:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;

    .line 918
    return-void
.end method

.method private initLocalState()V
    .locals 2

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->init()V

    .line 1458
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setAccessControllerListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V

    .line 1459
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->syncInfo()V

    .line 1460
    return-void
.end method

.method private initNetworkChecker()V
    .locals 1

    .prologue
    .line 1505
    const-string v0, "initNetworkChecker"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->startPing()V

    .line 1507
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    .line 423
    sput-object p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mContext:Landroid/content/Context;

    .line 424
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->setContentView(I)V

    .line 426
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 427
    .local v6, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 428
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->displayWidth:I

    .line 431
    sget-object v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDisonnectText:Ljava/lang/String;

    .line 433
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDevice_title_select:Landroid/widget/RelativeLayout;

    .line 434
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDevice_title_select:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDevice_title_info:Landroid/widget/TextView;

    .line 436
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDeVice_title_disconnected:Landroid/widget/ImageView;

    .line 438
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDevice_child:Lcom/aloys/formuler/airsyncremote/DeviceChildView;

    .line 440
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDevice_setting:Landroid/widget/Button;

    .line 441
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDevice_setting:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDevice_child:Lcom/aloys/formuler/airsyncremote/DeviceChildView;

    iget-object v7, v0, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mDevice_gridview:Landroid/widget/GridView;

    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDevice_child:Lcom/aloys/formuler/airsyncremote/DeviceChildView;

    iget-object v2, v1, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mImageIds:[Ljava/lang/Integer;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDevice_child:Lcom/aloys/formuler/airsyncremote/DeviceChildView;

    iget-object v3, v1, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mtags:[Ljava/lang/String;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDevice_child:Lcom/aloys/formuler/airsyncremote/DeviceChildView;

    iget-object v4, v1, Lcom/aloys/formuler/airsyncremote/DeviceChildView;->mtags_info:[Ljava/lang/String;

    sget-object v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;[Ljava/lang/Integer;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 444
    return-void
.end method

.method private isFirst()Z
    .locals 3

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 562
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

    .line 564
    :cond_0
    const/4 v0, 0x1

    .line 566
    :cond_1
    return v0
.end method

.method private isReadyForAutoConnect()Z
    .locals 1

    .prologue
    .line 1303
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->isManualConnecting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1305
    :cond_0
    const/4 v0, 0x0

    .line 1307
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
    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, "isSaved":Z
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/ServiceUtil;->getSavedUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    const/4 v0, 0x1

    .line 581
    :cond_0
    return v0
.end method

.method private isTarget(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "isTarget":Z
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->isFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    const/4 v0, 0x1

    .line 552
    :goto_0
    return v0

    .line 549
    :cond_0
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->isSaved(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized manualConnectDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 6
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 1216
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->beginManualConnect(Lorg/cybergarage/upnp/Device;)V

    .line 1217
    if-nez p1, :cond_0

    .line 1220
    const-string v4, "device info is null!"

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1221
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mShowDeviceListHandler:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;->sendEmptyMessage(I)Z

    .line 1222
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->endManualConnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    :goto_0
    monitor-exit p0

    return-void

    .line 1225
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cybergarage/upnp/ServiceList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1228
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1229
    .local v3, "title":Ljava/lang/String;
    const-string v2, "Device Service is null"

    .line 1230
    .local v2, "tips":Ljava/lang/String;
    new-instance v4, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$9;

    invoke-direct {v4, p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$9;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    invoke-static {p0, v3, v2, v4}, Lcom/aloys/formuler/airsyncremote/DialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1236
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->endManualConnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1216
    .end local v2    # "tips":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1241
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1242
    .local v0, "currentDevice":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_3

    .line 1245
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    .line 1246
    .local v1, "currentUuid":Ljava/lang/String;
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1249
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1252
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->updateDeviceName(Ljava/lang/String;)V

    .line 1253
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->endManualConnect()V

    goto :goto_0

    .line 1260
    :cond_2
    sget-object v4, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    sget-object v5, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->DEINIT:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-direct {p0, v4, v5}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->deInitNetworkChecker(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 1261
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->clearCurrentDevice()V

    .line 1271
    .end local v1    # "currentUuid":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->connectDevcie(Lorg/cybergarage/upnp/Device;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1274
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1276
    .restart local v3    # "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$10;

    invoke-direct {v5, p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$10;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    .line 1275
    invoke-static {p0, v3, v4, v5}, Lcom/aloys/formuler/airsyncremote/DialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1285
    .end local v3    # "title":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->endManualConnect()V

    goto/16 :goto_0

    .line 1266
    .restart local v1    # "currentUuid":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setCurrentDevice(Lorg/cybergarage/upnp/Device;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private reavedOnUi()V
    .locals 3

    .prologue
    .line 1534
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1535
    .local v0, "titleText":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->disconnectOnUi(Ljava/lang/String;)V

    .line 1536
    return-void
.end method

.method private removeInvalidDevice()V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 749
    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 748
    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeCannotAccessDevice(Lorg/cybergarage/upnp/Device;)V

    .line 750
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->clearCurrentDevice()V

    .line 751
    return-void
.end method

.method private resetAccessListener()V
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mIOriginalDeviceListListener:Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setOriginalDeviceListListener(Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;)V

    .line 850
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setAllAccessListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V

    .line 851
    return-void
.end method

.method private resumeActivity()V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->discovery:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setTopActivity(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;)V

    .line 837
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->resetAccessListener()V

    .line 838
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->clearSceneListener()V

    .line 839
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->checkCurrentDevice()V

    .line 840
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->searchDelay()V

    .line 841
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->showListDelay()V

    .line 842
    return-void
.end method

.method private retrySearchDelay(IJ)V
    .locals 4
    .param p1, "retryTimes"    # I
    .param p2, "delayTime"    # J

    .prologue
    .line 1001
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-ge p1, v2, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 1007
    :cond_0
    if-lez p1, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_2

    .line 1009
    :cond_1
    const-string v2, "Arguments are error!"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    :cond_2
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->clearSearchMessage()V

    .line 1015
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1016
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1017
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "MSEARCH_RETRY_TIMES"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1018
    const-string v2, "MSEARCH_DELAY_TIME"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1019
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1020
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private searchDelay()V
    .locals 4

    .prologue
    .line 1025
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->clearSearchMessage()V

    .line 1026
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1027
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1028
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1864
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "come into send broadcast!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1865
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1866
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.device.access"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1867
    const-string v1, "Type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1869
    return-void
.end method

.method private sendByeToSTB(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V
    .locals 1
    .param p1, "clientState"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    .prologue
    .line 778
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->REAVED:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    if-eq p1, v0, :cond_0

    .line 780
    new-instance v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$6;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$6;-><init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    .line 791
    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$6;->start()V

    .line 793
    :cond_0
    return-void
.end method

.method private sendConnectionStateBroadcast(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1856
    return-void
.end method

.method private setStrictMode()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1544
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 1545
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1544
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1546
    return-void
.end method

.method private showList()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->syncOrderingList()V

    .line 961
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDeviceListHandler:Lcom/hisilicon/multiscreen/upnputils/UpnpDeviceListHandler;

    invoke-interface {v0}, Lcom/hisilicon/multiscreen/upnputils/UpnpDeviceListHandler;->updateDeviceList()V

    .line 962
    return-void
.end method

.method private showListDelay()V
    .locals 4

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->clearShowListMessage()V

    .line 951
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 952
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->ListHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 953
    return-void
.end method

.method private showListView()V
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mDeviceListPop:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->updateAdapter()V

    .line 1039
    :cond_0
    return-void
.end method

.method private startMultiScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1809
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1810
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/hisilicon/multiscreen/scene/SceneType;->MIRROR:Lcom/hisilicon/multiscreen/scene/SceneType;

    .line 1812
    .local v1, "scene":Lcom/hisilicon/multiscreen/scene/SceneType;
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isSceneOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1814
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getScene()Lcom/hisilicon/multiscreen/scene/SceneType;

    move-result-object v1

    .line 1817
    :cond_0
    sget-object v2, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$11;->$SwitchMap$com$hisilicon$multiscreen$scene$SceneType:[I

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/scene/SceneType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1833
    const-string v2, "MIRROR_STATUS"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1838
    :goto_0
    const/high16 v2, 0x20000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1839
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->startActivity(Landroid/content/Intent;)V

    .line 1840
    return-void

    .line 1821
    :pswitch_0
    const-string v2, "MIRROR_STATUS"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1827
    :pswitch_1
    const-string v2, "MIRROR_STATUS"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1817
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private syncInfo()V
    .locals 2

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1479
    const-string v0, "Resume Activity from HOME."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1497
    :goto_0
    return-void

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->canSyncInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1488
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->initNetworkChecker()V

    goto :goto_0

    .line 1493
    :cond_1
    const-string v0, "sync STB info failed!"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1494
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->NETWORK_LOST:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    goto :goto_0
.end method

.method private updateDeviceName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->myHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1111
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1112
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 309
    const-string v0, "onConfigurationChanged"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 310
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 311
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 296
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/aloys/formuler/airsyncremote/CompatHelper;->requestPermissions(Landroid/app/Activity;)V

    .line 298
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->initView()V

    .line 299
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->setStrictMode()V

    .line 300
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->initData()V

    .line 301
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->initHandler()V

    .line 304
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 350
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 352
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 361
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 377
    iget-boolean v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->canDestroy:Z

    if-eqz v1, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->destroy()V

    .line 397
    :goto_0
    return v0

    .line 383
    :cond_0
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->canDestroy:Z

    .line 384
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->myHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 386
    const v1, 0x7f080055

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 391
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 397
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 332
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 333
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 334
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 320
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 322
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->resumeActivity()V

    .line 323
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 341
    const-string v0, "onStop"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 342
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 343
    return-void
.end method
