.class public Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
.super Landroid/app/Service;
.source "CoreUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;,
        Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$RefreshContentThread;,
        Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;
    }
.end annotation


# static fields
.field public static final AIRSHARE_EXIT:Ljava/lang/String; = "AIRSHARE_EXIT"

.field public static final PLAYLIST_CHANGED:Ljava/lang/String; = "PLAYLIST_CHANGED"

.field private static isAirShare:Z

.field private static isBusySharingContent:Z

.field private static mediaPrepared:Z

.field private static mediaServer:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;

.field private static serverPrepared:Z


# instance fields
.field private changedReceiver:Landroid/content/BroadcastReceiver;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private currentDMR:Lorg/teleal/cling/model/meta/Device;

.field private currentDMS:Lorg/teleal/cling/model/meta/Device;

.field private dmrListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;",
            ">;"
        }
    .end annotation
.end field

.field private dmrProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

.field private dmsProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

.field private volatile isInitialized:Z

.field private m_localDMR_UDN:Lorg/teleal/cling/model/types/UDN;

.field private m_localDMS_UDN:Lorg/teleal/cling/model/types/UDN;

.field private networkReceiver:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

.field private registryListener:Lorg/teleal/cling/registry/RegistryListener;

.field private serviceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private upnpBinder:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

.field private upnpService:Lorg/teleal/cling/UpnpService;

.field private upnpServiceListener:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->mediaPrepared:Z

    .line 65
    sput-boolean v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->serverPrepared:Z

    .line 69
    sput-boolean v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z

    .line 73
    sput-boolean v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isAirShare:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->m_localDMS_UDN:Lorg/teleal/cling/model/types/UDN;

    .line 76
    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->m_localDMR_UDN:Lorg/teleal/cling/model/types/UDN;

    .line 91
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->upnpBinder:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    .line 602
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$4;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$4;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->changedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/types/UDN;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .param p1, "x1"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->m_localDMS_UDN:Lorg/teleal/cling/model/types/UDN;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/model/meta/Device;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->currentDMS:Lorg/teleal/cling/model/meta/Device;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .param p1, "x1"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->currentDMS:Lorg/teleal/cling/model/meta/Device;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/types/UDN;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .param p1, "x1"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->m_localDMR_UDN:Lorg/teleal/cling/model/types/UDN;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/model/meta/Device;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->currentDMR:Lorg/teleal/cling/model/meta/Device;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .param p1, "x1"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->currentDMR:Lorg/teleal/cling/model/meta/Device;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->dmrListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->prepareShareContent()V

    return-void
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 54
    sput-boolean p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isAirShare:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->preareShareAMContent()V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->prepareMediaServer()V

    return-void
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->networkReceiver:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;)Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->networkReceiver:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->upnpServiceListener:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->upnpServiceListener:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->changedNetWork()V

    return-void
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->upnpService:Lorg/teleal/cling/UpnpService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/UpnpService;)Lorg/teleal/cling/UpnpService;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .param p1, "x1"    # Lorg/teleal/cling/UpnpService;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->upnpService:Lorg/teleal/cling/UpnpService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/registry/RegistryListener;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->registryListener:Lorg/teleal/cling/registry/RegistryListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/registry/RegistryListener;)Lorg/teleal/cling/registry/RegistryListener;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .param p1, "x1"    # Lorg/teleal/cling/registry/RegistryListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->registryListener:Lorg/teleal/cling/registry/RegistryListener;

    return-object p1
.end method

.method static synthetic access$700(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isInitialized:Z

    return v0
.end method

.method static synthetic access$800(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->dmsProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->dmsProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->dmrProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->dmrProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    return-object p1
.end method

.method private changedNetWork()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 213
    sget-boolean v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isAirShare:Z

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->serverPrepared:Z

    .line 216
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->clear()V

    .line 218
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->prepareShareContent()V

    .line 220
    :cond_0
    return-void
.end method

.method private initializedUpnpService()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 125
    :try_start_0
    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->createConfiguration(Landroid/net/wifi/WifiManager;)Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/teleal/cling/registry/RegistryListener;

    invoke-direct {v2, p0, v3, v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/UpnpServiceConfiguration;[Lorg/teleal/cling/registry/RegistryListener;)V

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->upnpService:Lorg/teleal/cling/UpnpService;

    .line 175
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    iget-boolean v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isInitialized:Z

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x3

    const-string v4, "UpnpWifiLock"

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 183
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 185
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->startLocalDMS()V

    .line 187
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->dmrListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 190
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "AIRSHARE_EXIT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v2, "PLAYLIST_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->changedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    return-void

    .line 176
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "ex":Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isInitialized:Z

    goto :goto_0
.end method

.method private preareShareAMContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 481
    sget-boolean v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z

    if-nez v0, :cond_0

    .line 483
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->prepareAMMediaServer()V

    .line 485
    :cond_0
    return-void
.end method

.method private declared-synchronized prepareAMMediaServer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 555
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The serverPrepared is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->serverPrepared:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 559
    sget-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->serverPrepared:Z
    :try_end_1
    .catch Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 598
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 600
    :goto_0
    monitor-exit p0

    return-void

    .line 561
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->clear()V

    .line 563
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Come into mediaPrepared1--><"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 564
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->initPlaylist()V

    .line 566
    sget-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->mediaPrepared:Z

    if-nez v1, :cond_1

    .line 568
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Come into mediaPrepared2--><"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->initAudioAndMusic()V

    .line 570
    const/4 v1, 0x1

    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->mediaPrepared:Z

    .line 584
    :goto_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Come into prepareAMMediaServer end--><"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 585
    const/4 v1, 0x1

    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->serverPrepared:Z
    :try_end_3
    .catch Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 598
    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 574
    :cond_1
    :try_start_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Come into prepareAMMediaServer--><"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createPhotosAlbumsDir()V

    .line 579
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createVideosAlbumsDir()V

    .line 582
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAudiosAlbumsDir()V
    :try_end_5
    .catch Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 587
    :catch_0
    move-exception v0

    .line 589
    .local v0, "ex":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    :try_start_6
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;->printStackTrace()V

    .line 590
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;

    invoke-direct {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 598
    .end local v0    # "ex":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_7
    sput-boolean v2, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 592
    :catch_1
    move-exception v0

    .line 594
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 598
    const/4 v1, 0x0

    :try_start_9
    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized prepareMediaServer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 507
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :try_start_1
    sget-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->serverPrepared:Z
    :try_end_1
    .catch Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 549
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 551
    :goto_0
    monitor-exit p0

    return-void

    .line 512
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->clear()V

    .line 514
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Come into initPlaylist--><"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->initPlaylist()V

    .line 517
    sget-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->mediaPrepared:Z

    if-nez v1, :cond_1

    .line 519
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Come into mediaPrepared--><"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->initAllMedia()V

    .line 521
    const/4 v1, 0x1

    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->mediaPrepared:Z

    .line 536
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->serverPrepared:Z
    :try_end_3
    .catch Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 549
    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 525
    :cond_1
    :try_start_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Come into media not Prepared--><"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createPhotosAlbumsDir()V

    .line 530
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createVideosAlbumsDir()V

    .line 533
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->createAudiosAlbumsDir()V
    :try_end_5
    .catch Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 538
    :catch_0
    move-exception v0

    .line 540
    .local v0, "ex":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    :try_start_6
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;->printStackTrace()V

    .line 541
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;

    invoke-direct {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 549
    .end local v0    # "ex":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_7
    sput-boolean v2, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 543
    :catch_1
    move-exception v0

    .line 545
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 549
    const/4 v1, 0x0

    :try_start_9
    sput-boolean v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0
.end method

.method private prepareShareContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 473
    sget-boolean v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isBusySharingContent:Z

    if-nez v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->prepareMediaServer()V

    .line 477
    :cond_0
    return-void
.end method

.method private releaseWifiLock()V
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startLocalDMS()V
    .locals 4

    .prologue
    .line 459
    :try_start_0
    new-instance v3, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;

    invoke-direct {v3, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->mediaServer:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;

    .line 461
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->upnpService:Lorg/teleal/cling/UpnpService;

    invoke-interface {v3}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    .line 462
    .local v2, "localRegistry":Lorg/teleal/cling/registry/Registry;
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->mediaServer:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->getDevice()Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v1

    .line 463
    .local v1, "localLocalDevice":Lorg/teleal/cling/model/meta/LocalDevice;
    invoke-interface {v2, v1}, Lorg/teleal/cling/registry/Registry;->addDevice(Lorg/teleal/cling/model/meta/LocalDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v1    # "localLocalDevice":Lorg/teleal/cling/model/meta/LocalDevice;
    .end local v2    # "localRegistry":Lorg/teleal/cling/registry/Registry;
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->networkReceiver:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->networkReceiver:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->changedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    :goto_1
    return-void

    .line 273
    :catch_0
    move-exception v0

    goto :goto_1

    .line 268
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected createConfiguration(Landroid/net/wifi/WifiManager;)Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;
    .locals 2
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 197
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$2;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {v0, p0, p1, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$2;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V

    return-object v0
.end method

.method protected createRouter(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;
    .locals 1
    .param p1, "configuration"    # Lorg/teleal/cling/UpnpServiceConfiguration;
    .param p2, "protocolFactory"    # Lorg/teleal/cling/protocol/ProtocolFactory;
    .param p3, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p4, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 208
    new-instance v0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->upnpBinder:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 109
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->isInitialized:Z

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->dmrListeners:Ljava/util/List;

    .line 113
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 114
    .local v0, "mgr":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->serviceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 115
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->serviceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 117
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 118
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 120
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->initializedUpnpService()V

    .line 121
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->serviceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 226
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->unregisterReceiver()V

    .line 228
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->dmsProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->dmsProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->dispose()V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->dmrProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->dmrProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->dispose()V

    .line 233
    :cond_1
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->releaseWifiLock()V

    .line 235
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->clear()V

    .line 237
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->upnpService:Lorg/teleal/cling/UpnpService;

    if-eqz v0, :cond_2

    .line 238
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$3;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$3;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 257
    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 262
    return-void

    .line 260
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    throw v0
.end method
