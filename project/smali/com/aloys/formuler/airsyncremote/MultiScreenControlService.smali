.class public Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
.super Landroid/app/Service;
.source "MultiScreenControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;,
        Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;,
        Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;,
        Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;
    }
.end annotation


# static fields
.field public static final AUDIO_PAUSE:I = 0x0

.field public static final AUDIO_PLAY:I = 0x1

.field private static final DELAY_MILLIS:J = 0x12cL

.field private static final MSG_SHOW_NO_CONNECT:I = 0x12c

.field private static final MSG_START_SEARCH:I = 0x64

.field private static final MSG_STOP_SEARCH:I = 0xc8

.field public static final VIDEO_H264_TYPE:Ljava/lang/String; = "h264"

.field public static final VIDEO_H265_TYPE:Ljava/lang/String; = "h265"

.field public static final VIDEO_JPEG_TYPE:Ljava/lang/String; = "jpeg"

.field public static final VIDEO_PAUSE:I = 0x0

.field public static final VIDEO_PLAY:I = 0x1

.field private static isUpnpStackOpen:Z

.field private static mContext:Landroid/content/Context;

.field private static mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

.field private static mIsAudioPlay:Z

.field private static mIsNetworkAvailable:Z

.field public static mIsSupportHME:Z

.field public static mIsVideoPlay:Z

.field private static mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

.field public static mSupportVideoType:Ljava/lang/String;

.field private static prevConIP:Ljava/lang/String;

.field public static save_uuid:Ljava/lang/String;


# instance fields
.field private mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

.field private mAccessUpnpController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

.field private mActivityState:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

.field private mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

.field private mDeviceDiscover:Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

.field private mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

.field private mIOriginalDeviceListListener:Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

.field private mMirrorUpnpController:Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;

.field private mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private mNetInfoInterface:Lorg/cybergarage/net/AndoridNetInfoInterface;

.field private mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mNoConnectNoticeRunnable:Ljava/lang/Runnable;

.field private mNoConnectNoticeThread:Ljava/lang/Thread;

.field private mRemoteAppUpnpController:Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;

.field private mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

.field private mServiceState:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

.field private mSubscribeAccessServiceThread:Ljava/lang/Thread;

.field private mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

.field private mVIMEUpnpController:Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;

.field private mVinputUpnpController:Lcom/hisilicon/multiscreen/controller/VinputUpnpController;

.field private myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    sput-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->save_uuid:Ljava/lang/String;

    .line 71
    sput-boolean v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIsVideoPlay:Z

    .line 73
    sput-boolean v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIsAudioPlay:Z

    .line 81
    const-string v0, "h264"

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mSupportVideoType:Ljava/lang/String;

    .line 83
    sput-boolean v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIsSupportHME:Z

    .line 98
    sput-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 103
    sput-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 184
    sput-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->prevConIP:Ljava/lang/String;

    .line 190
    sput-boolean v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isUpnpStackOpen:Z

    .line 200
    sput-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mContext:Landroid/content/Context;

    .line 204
    sput-boolean v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIsNetworkAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 88
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->DEINIT:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mServiceState:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    .line 93
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->discovery:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mActivityState:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    .line 108
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 113
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    .line 118
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    .line 123
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessUpnpController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .line 128
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mVIMEUpnpController:Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;

    .line 133
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMirrorUpnpController:Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;

    .line 138
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mRemoteAppUpnpController:Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;

    .line 143
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mVinputUpnpController:Lcom/hisilicon/multiscreen/controller/VinputUpnpController;

    .line 148
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mDeviceDiscover:Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    .line 153
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .line 158
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIOriginalDeviceListListener:Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

    .line 163
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    .line 165
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 167
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mSubscribeAccessServiceThread:Ljava/lang/Thread;

    .line 177
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNoConnectNoticeThread:Ljava/lang/Thread;

    .line 192
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    .line 209
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$1;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$1;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNetInfoInterface:Lorg/cybergarage/net/AndoridNetInfoInterface;

    .line 1223
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$4;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$4;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNoConnectNoticeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getBroadcastIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Lcom/hisilicon/multiscreen/controller/IAccessListener;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->prevConIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 45
    sput-object p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->prevConIP:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->showNoConnect()V

    return-void
.end method

.method static synthetic access$1300(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->subscribeService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIOriginalDeviceListListener:Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setNetworkAvailable(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->startNoConnectNoticeThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->stopDiscovery()V

    return-void
.end method

.method static synthetic access$600(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->restartDiscovery()V

    return-void
.end method

.method static synthetic access$800(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getWifiIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isUpnpStackOpen:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 45
    sput-boolean p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isUpnpStackOpen:Z

    return p0
.end method

.method private allowMulticast()V
    .locals 3

    .prologue
    .line 848
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 849
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v1, "multicast.upnp"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v1

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 850
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 851
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 857
    return-void
.end method

.method private clearMessages()V
    .locals 3

    .prologue
    const/16 v2, 0xc8

    const/16 v1, 0x64

    .line 1138
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->removeMessages(I)V

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    invoke-virtual {v0, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    invoke-virtual {v0, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->removeMessages(I)V

    .line 1143
    :cond_1
    return-void
.end method

.method private clearNoticeMessage()V
    .locals 2

    .prologue
    const/16 v1, 0x12c

    .line 1155
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->removeMessages(I)V

    .line 1157
    :cond_0
    return-void
.end method

.method private deInitControlPoint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 924
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    if-eqz v0, :cond_0

    .line 926
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->destroy()V

    .line 927
    sput-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 929
    :cond_0
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->DEINIT:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 930
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    .line 931
    return-void
.end method

.method private deInitHandler()V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    if-eqz v0, :cond_0

    .line 1103
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->clearMessages()V

    .line 1104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    .line 1106
    :cond_0
    return-void
.end method

.method private deinitControllers()V
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->deinit()V

    .line 902
    return-void
.end method

.method private getBroadcastIpAddress()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1381
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1382
    .local v2, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_0

    .line 1384
    const-string v4, "wifi manager is null"

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1394
    :goto_0
    return-object v3

    .line 1387
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 1388
    .local v1, "dhcpInfo":Landroid/net/DhcpInfo;
    if-nez v1, :cond_1

    .line 1390
    const-string v4, "dhcpInfo is null"

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1393
    :cond_1
    iget v3, v1, Landroid/net/DhcpInfo;->ipAddress:I

    iget v4, v1, Landroid/net/DhcpInfo;->netmask:I

    and-int/2addr v3, v4

    iget v4, v1, Landroid/net/DhcpInfo;->netmask:I

    xor-int/lit8 v4, v4, -0x1

    or-int v0, v3, v4

    .line 1394
    .local v0, "broadcast":I
    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-direct {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;-><init>()V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 263
    :cond_0
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    return-object v0
.end method

.method public static getScene()Lcom/hisilicon/multiscreen/scene/SceneType;
    .locals 1

    .prologue
    .line 593
    invoke-static {}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getScene()Lcom/hisilicon/multiscreen/scene/SceneType;

    move-result-object v0

    return-object v0
.end method

.method private getWifiIpAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1367
    const/4 v1, 0x0

    .line 1368
    .local v1, "ipAddress":Ljava/lang/String;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1369
    .local v2, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 1370
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 1372
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->int2Ip(I)Ljava/lang/String;

    move-result-object v1

    .line 1376
    :cond_0
    return-object v1

    .line 1369
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private initAllControllers()V
    .locals 2

    .prologue
    .line 879
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;-><init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    .line 880
    new-instance v0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    .line 881
    new-instance v0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;-><init>()V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessUpnpController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    .line 882
    new-instance v0, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;-><init>()V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMirrorUpnpController:Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;

    .line 883
    new-instance v0, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;-><init>()V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mVIMEUpnpController:Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;

    .line 884
    new-instance v0, Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;-><init>()V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mRemoteAppUpnpController:Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;

    .line 885
    new-instance v0, Lcom/hisilicon/multiscreen/controller/VinputUpnpController;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/controller/VinputUpnpController;-><init>()V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mVinputUpnpController:Lcom/hisilicon/multiscreen/controller/VinputUpnpController;

    .line 886
    return-void
.end method

.method private initControlPoint()V
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNetInfoInterface:Lorg/cybergarage/net/AndoridNetInfoInterface;

    invoke-static {v0}, Lorg/cybergarage/upnp/ssdp/SSDP;->setNetInterfaceUtil(Lorg/cybergarage/net/AndoridNetInfoInterface;)V

    .line 874
    invoke-static {}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getInstance()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 875
    return-void
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 837
    sput-object p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mContext:Landroid/content/Context;

    .line 838
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->readSaveUuid()V

    .line 840
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->initMirrorSetting()V

    .line 841
    return-void
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 1096
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$1;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    .line 1097
    return-void
.end method

.method private initMirrorSetting()V
    .locals 1

    .prologue
    .line 915
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->readVideoPreference()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setVideoPlay(Z)V

    .line 916
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->readAudioPreference()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setAudioPlay(Z)V

    .line 917
    return-void
.end method

.method public static isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 827
    sget-boolean v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIsNetworkAvailable:Z

    return v0
.end method

.method public static isSceneOpen()Z
    .locals 1

    .prologue
    .line 608
    invoke-static {}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->isSceneOpen()Z

    move-result v0

    return v0
.end method

.method private readAudioPreference()Z
    .locals 2

    .prologue
    .line 1419
    const-string v0, "audio"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->readStatusPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readSaveUuid()V
    .locals 1

    .prologue
    .line 832
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMultiScreenUDN()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->save_uuid:Ljava/lang/String;

    .line 833
    return-void
.end method

.method private readStatusPreference(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "statusKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 1430
    const-string v1, "Setting_Status"

    const/4 v2, 0x0

    .line 1431
    invoke-virtual {p0, v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1432
    .local v0, "prefrence":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private readVideoPreference()Z
    .locals 2

    .prologue
    .line 1409
    const-string v0, "video"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->readStatusPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private registerConnectReceiver()V
    .locals 2

    .prologue
    .line 1033
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1034
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1036
    new-instance v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1082
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1083
    return-void
.end method

.method private renewMirror()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 324
    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setDefaultMirrorParameter(I)Z

    move-result v0

    .line 325
    .local v0, "isMirrorSet":Z
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getTopActivity()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    move-result-object v1

    .line 327
    .local v1, "topActivity":Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;
    sget-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->mirror:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    if-ne v1, v2, :cond_1

    .line 329
    if-nez v0, :cond_0

    .line 331
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setDefaultMirrorParameter(I)Z

    move-result v0

    .line 334
    :cond_0
    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->startMirror(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    const-string v2, "Fail to start mirror."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    const-string v2, "Fail to renew mirror parameter."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private renewVime()V
    .locals 3

    .prologue
    .line 354
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getTopActivity()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    move-result-object v0

    .line 355
    .local v0, "topActivity":Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;
    sget-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->discovery:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    if-eq v0, v2, :cond_0

    .line 357
    invoke-static {}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->getInstance()Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    move-result-object v1

    .line 358
    .local v1, "vimeService":Lcom/hisilicon/multiscreen/vime/VImeClientControlService;
    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->reset()Z

    .line 363
    .end local v1    # "vimeService":Lcom/hisilicon/multiscreen/vime/VImeClientControlService;
    :cond_0
    return-void
.end method

.method private resetAllControllers()V
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->reset(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    .line 891
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->reset(Landroid/content/Context;)V

    .line 892
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessUpnpController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->reset()V

    .line 893
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMirrorUpnpController:Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->reset()V

    .line 894
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mVIMEUpnpController:Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->reset()V

    .line 895
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mRemoteAppUpnpController:Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;->reset()V

    .line 896
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mVinputUpnpController:Lcom/hisilicon/multiscreen/controller/VinputUpnpController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/VinputUpnpController;->reset()V

    .line 897
    return-void
.end method

.method private restartDiscovery()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    .line 1126
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->clearMessages()V

    .line 1127
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->clearNoticeMessage()V

    .line 1129
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1130
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    invoke-virtual {v1, v0, v4, v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1132
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1133
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    invoke-virtual {v1, v0, v4, v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1134
    return-void
.end method

.method private setControlPointListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .prologue
    .line 938
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .line 940
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    if-nez v0, :cond_0

    .line 942
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    .line 1020
    :cond_0
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    if-nez v0, :cond_1

    .line 1022
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->initControlPoint()V

    .line 1024
    :cond_1
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mUpnpControlPointListener:Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setControlPointListener(Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;)V

    .line 1025
    return-void
.end method

.method private setNetworkAvailable(Z)V
    .locals 0
    .param p1, "isAvailable"    # Z

    .prologue
    .line 1399
    sput-boolean p1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIsNetworkAvailable:Z

    .line 1400
    return-void
.end method

.method private showNoConnect()V
    .locals 4

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->clearNoticeMessage()V

    .line 1149
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1150
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1151
    return-void
.end method

.method private startNoConnectNoticeThread()V
    .locals 2

    .prologue
    .line 1260
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNoConnectNoticeRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNoConnectNoticeThread:Ljava/lang/Thread;

    .line 1261
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNoConnectNoticeThread:Ljava/lang/Thread;

    const-string v1, "NoConnectNoticeThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNoConnectNoticeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1263
    return-void
.end method

.method private startSubscribeThread()V
    .locals 2

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mSubscribeAccessServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1269
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mSubscribeAccessServiceThread:Ljava/lang/Thread;

    .line 1270
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mSubscribeAccessServiceThread:Ljava/lang/Thread;

    const-string v1, "SubscribeAccessServiceThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mSubscribeAccessServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1273
    :cond_0
    return-void
.end method

.method private stopDiscovery()V
    .locals 4

    .prologue
    .line 1114
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->clearMessages()V

    .line 1116
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1117
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->myHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1118
    return-void
.end method

.method private stopSubscribeThread()V
    .locals 4

    .prologue
    .line 1277
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mSubscribeAccessServiceThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1281
    :try_start_0
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mSubscribeAccessServiceThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mSubscribeAccessServiceThread:Ljava/lang/Thread;

    .line 1289
    :cond_0
    return-void

    .line 1283
    :catch_0
    move-exception v0

    .line 1285
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private subscribeService()Z
    .locals 3

    .prologue
    .line 1338
    const/4 v0, 0x0

    .line 1339
    .local v0, "retValue":Z
    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    if-eqz v1, :cond_0

    .line 1341
    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v2, "urn:schemas-upnp-org:service:AccessControlServer:1"

    .line 1343
    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->subscribeService(Ljava/lang/String;)Z

    move-result v0

    .line 1345
    :cond_0
    return v0
.end method

.method public static switchScene(Z)V
    .locals 0
    .param p0, "isOpen"    # Z

    .prologue
    .line 603
    invoke-static {p0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->switchScene(Z)V

    .line 604
    return-void
.end method

.method private unlockMulticast()V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 865
    return-void
.end method

.method private unregisterConnectReceiver()V
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1090
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mNetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1092
    :cond_0
    return-void
.end method

.method private unsubscribeService()Z
    .locals 3

    .prologue
    .line 1350
    const/4 v0, 0x0

    .line 1351
    .local v0, "retValue":Z
    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    if-eqz v1, :cond_0

    .line 1353
    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v2, "urn:schemas-upnp-org:service:AccessControlServer:1"

    .line 1355
    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->unsubscribeService(Ljava/lang/String;)Z

    move-result v0

    .line 1357
    :cond_0
    return v0
.end method


# virtual methods
.method public accessByebye()Z
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessUpnpController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessUpnpController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->accessByebye()Z

    move-result v0

    .line 543
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSyncInfo()Z
    .locals 3

    .prologue
    .line 752
    const/4 v0, 0x0

    .line 754
    .local v0, "result":Z
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    if-nez v1, :cond_0

    .line 757
    const-string v1, "HiDevice is null."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 764
    :goto_0
    return v0

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    sget-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->canSyncInfo(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAccessController()Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessUpnpController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    if-nez v0, :cond_0

    .line 485
    const-string v0, "AccessUpnpController is null"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessUpnpController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    return-object v0
.end method

.method public getAirMouse()Lcom/hisilicon/multiscreen/gsensor/AirMouse;
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    return-object v0
.end method

.method public getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    if-nez v0, :cond_0

    .line 274
    invoke-static {}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getInstance()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 276
    :cond_0
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    return-object v0
.end method

.method public getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mDeviceDiscover:Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;-><init>()V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mDeviceDiscover:Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mDeviceDiscover:Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    return-object v0
.end method

.method public getHiDevice()Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    return-object v0
.end method

.method public getLastestIP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get local prevConIP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->prevConIP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 774
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->prevConIP:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteControlCenter()Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    if-nez v0, :cond_0

    .line 465
    const-string v0, "Get new remote control center."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 466
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;-><init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    return-object v0
.end method

.method public getState()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mServiceState:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    return-object v0
.end method

.method public getSupportHME()Z
    .locals 1

    .prologue
    .line 673
    sget-boolean v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIsSupportHME:Z

    return v0
.end method

.method public getSupportVideoType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mSupportVideoType:Ljava/lang/String;

    return-object v0
.end method

.method public getTopActivity()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mActivityState:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    return-object v0
.end method

.method public getVIMEUpnpController()Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mVIMEUpnpController:Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;

    if-nez v0, :cond_0

    .line 494
    const-string v0, "VIMEUpnpController is null"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mVIMEUpnpController:Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;-><init>(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 288
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->initAllControllers()V

    .line 296
    :goto_0
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->INIT:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 297
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->resetIp(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z

    .line 293
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->resetAllControllers()V

    goto :goto_0
.end method

.method public isAudioPlay()Z
    .locals 1

    .prologue
    .line 653
    sget-boolean v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIsAudioPlay:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isReaved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isSuspend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    :cond_0
    const/4 v0, 0x0

    .line 417
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isReaved()Z
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getState()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    move-result-object v0

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->REAVED:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    if-ne v0, v1, :cond_0

    .line 392
    const/4 v0, 0x1

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getState()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    move-result-object v0

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->RUNNING:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    if-ne v0, v1, :cond_0

    .line 383
    const/4 v0, 0x1

    .line 385
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuspend()Z
    .locals 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getState()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    move-result-object v0

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_SUSPEND:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    if-ne v0, v1, :cond_0

    .line 401
    const/4 v0, 0x1

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoPlay()Z
    .locals 1

    .prologue
    .line 643
    sget-boolean v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIsVideoPlay:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 253
    const-string v0, "onBind"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 221
    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 222
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 223
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->initData()V

    .line 224
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->allowMulticast()V

    .line 225
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->initHandler()V

    .line 226
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->initControlPoint()V

    .line 227
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->registerConnectReceiver()V

    .line 228
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 241
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 242
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 243
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->deinitControllers()V

    .line 244
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->unregisterConnectReceiver()V

    .line 245
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->deInitControlPoint()V

    .line 246
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->deInitHandler()V

    .line 247
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->unlockMulticast()V

    .line 248
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 233
    const-string v0, "onStartCommand"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 234
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 235
    const/4 v0, 0x2

    return v0
.end method

.method public renewState()Z
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    sget-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->resetServices(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z

    move-result v0

    .line 307
    .local v0, "isOK":Z
    if-eqz v0, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->resetAllControllers()V

    .line 310
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->renewMirror()V

    .line 311
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->renewVime()V

    .line 312
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->subscribeAccessService()Z

    .line 319
    :goto_0
    return v0

    .line 316
    :cond_0
    const-string v1, "Fail to renewState."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAccessControllerListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessUpnpController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    if-nez v0, :cond_0

    .line 565
    const-string v0, "AccessUpnpController is null, and it will init after device connected."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 571
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessUpnpController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->setListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V

    goto :goto_0
.end method

.method public setAllAccessListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setAccessControllerListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V

    .line 554
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setControlPointListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V

    .line 555
    return-void
.end method

.method public setAudioPlay(Z)V
    .locals 0
    .param p1, "isPlay"    # Z

    .prologue
    .line 658
    sput-boolean p1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIsAudioPlay:Z

    .line 659
    return-void
.end method

.method public setDefaultMirrorParameter(I)Z
    .locals 3
    .param p1, "times"    # I

    .prologue
    .line 694
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 695
    .local v0, "paramBuff":Ljava/lang/StringBuffer;
    const-string v1, "fps=15,resend=0,cip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 696
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getLastestIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    const-string v1, ",cport=8888"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    const-string v1, ",video_play="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 701
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isVideoPlay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 709
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 712
    const-string v1, ",source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 713
    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mSupportVideoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 715
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setMirrorParameter(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 707
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public setMirrorParameter(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "times"    # I

    .prologue
    .line 689
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMirrorUpnpController:Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;

    invoke-virtual {v0, p1, p2}, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->setMirrorParameter(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setOriginalDeviceListListener(Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIOriginalDeviceListListener:Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

    .line 576
    return-void
.end method

.method public setSceneListener(Lcom/hisilicon/multiscreen/scene/ISceneListener;)V
    .locals 1
    .param p1, "sceneListener"    # Lcom/hisilicon/multiscreen/scene/ISceneListener;

    .prologue
    .line 580
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    if-eqz v0, :cond_0

    .line 582
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setSceneListener(Lcom/hisilicon/multiscreen/scene/ISceneListener;)V

    .line 584
    :cond_0
    return-void
.end method

.method public setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V
    .locals 2
    .param p1, "state"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "now state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 436
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mServiceState:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    .line 437
    return-void
.end method

.method public setSupportHME(Z)V
    .locals 0
    .param p1, "isSupportHME"    # Z

    .prologue
    .line 678
    sput-boolean p1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIsSupportHME:Z

    .line 679
    return-void
.end method

.method public setSupportVideoType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 668
    sput-object p1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mSupportVideoType:Ljava/lang/String;

    .line 669
    return-void
.end method

.method public setTopActivity(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;)V
    .locals 0
    .param p1, "top"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mActivityState:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    .line 455
    return-void
.end method

.method public setVideoPlay(Z)V
    .locals 0
    .param p1, "isPlay"    # Z

    .prologue
    .line 648
    sput-boolean p1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mIsVideoPlay:Z

    .line 649
    return-void
.end method

.method public startMirror(I)Z
    .locals 1
    .param p1, "times"    # I

    .prologue
    .line 725
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMirrorUpnpController:Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMirrorUpnpController:Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->startMirror(I)Z

    move-result v0

    .line 729
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startPing()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessUpnpController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->startAccessPingTask()V

    .line 514
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->subscribeAccessService()Z

    .line 515
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->RUNNING:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 516
    return-void
.end method

.method public startRemoteAppUpnpControl()Z
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mRemoteAppUpnpController:Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;->startRemoteApp()Z

    move-result v0

    return v0
.end method

.method public startVIMEUpnpControl()Z
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mVIMEUpnpController:Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->startVIMEControlServer()Z

    move-result v0

    return v0
.end method

.method public startVInputUpnpControl()Z
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mVinputUpnpController:Lcom/hisilicon/multiscreen/controller/VinputUpnpController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/VinputUpnpController;->startVinput()Z

    move-result v0

    return v0
.end method

.method public stopMirror(I)Z
    .locals 1
    .param p1, "times"    # I

    .prologue
    .line 739
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMirrorUpnpController:Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mMirrorUpnpController:Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->stopMirror(I)Z

    move-result v0

    .line 743
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopPing(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    .param p2, "state"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    .prologue
    .line 525
    invoke-virtual {p0, p2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 526
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->unsubscribeAccessService()Z

    .line 527
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessUpnpController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mAccessUpnpController:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->stopAccessPingTask(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    .line 531
    :cond_0
    return-void
.end method

.method public stopRemoteAppControl()Z
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mRemoteAppUpnpController:Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;->stopRemoteApp()Z

    move-result v0

    return v0
.end method

.method public stopVIMEUpnpControl()Z
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mVIMEUpnpController:Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->stopVIMEControlServer()Z

    move-result v0

    return v0
.end method

.method public stopVInputUpnpControl()Z
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->mVinputUpnpController:Lcom/hisilicon/multiscreen/controller/VinputUpnpController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/VinputUpnpController;->stopVinput()Z

    move-result v0

    return v0
.end method

.method public subscribeAccessService()Z
    .locals 2

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->subscribeService()Z

    move-result v0

    .line 621
    .local v0, "isOK":Z
    if-nez v0, :cond_0

    .line 623
    const-string v1, "Fail to subscribe AccessService, and start subscribe thread."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 624
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->startSubscribeThread()V

    .line 626
    :cond_0
    return v0
.end method

.method public unsubscribeAccessService()Z
    .locals 1

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->unsubscribeService()Z

    move-result v0

    .line 637
    .local v0, "retValue":Z
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->stopSubscribeThread()V

    .line 638
    return v0
.end method
