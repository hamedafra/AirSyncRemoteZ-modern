.class public abstract Lorg/teleal/cling/android/AndroidUpnpServiceImpl;
.super Landroid/app/Service;
.source "AndroidUpnpServiceImpl.java"


# instance fields
.field protected volatile isInitialized:Z

.field private serviceWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected volatile upnpService:Lorg/teleal/cling/UpnpService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->isInitialized:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected createConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;
    .locals 1
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 73
    new-instance v0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V

    return-object v0
.end method

.method protected final initializedUpnpService()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 60
    iput-boolean v6, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->isInitialized:Z

    .line 61
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 62
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 64
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    :try_start_0
    new-instance v3, Lorg/teleal/cling/UpnpServiceImpl;

    invoke-virtual {p0, v2, v0}, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->createConfiguration(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/teleal/cling/registry/RegistryListener;

    invoke-direct {v3, v4, v5}, Lorg/teleal/cling/UpnpServiceImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;[Lorg/teleal/cling/registry/RegistryListener;)V

    iput-object v3, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->upnpService:Lorg/teleal/cling/UpnpService;

    .line 65
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->isInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "ex":Ljava/lang/Exception;
    iput-boolean v6, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->isInitialized:Z

    .line 68
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 53
    .local v0, "mgr":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->serviceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 54
    iget-object v1, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->serviceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 56
    invoke-virtual {p0}, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->initializedUpnpService()V

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->serviceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 79
    iget-object v0, p0, Lorg/teleal/cling/android/AndroidUpnpServiceImpl;->upnpService:Lorg/teleal/cling/UpnpService;

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->shutdown()V

    .line 80
    return-void
.end method
