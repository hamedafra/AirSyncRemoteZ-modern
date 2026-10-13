.class public Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;
.super Lorg/teleal/cling/transport/SwitchableRouterImpl;
.source "AndroidWifiSwitchableRouter.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/teleal/cling/transport/Router;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V
    .locals 3
    .param p1, "configuration"    # Lorg/teleal/cling/UpnpServiceConfiguration;
    .param p2, "protocolFactory"    # Lorg/teleal/cling/protocol/ProtocolFactory;
    .param p3, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p4, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/transport/SwitchableRouterImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;)V

    .line 48
    new-instance v1, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$1;

    invoke-direct {v1, p0}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter$1;-><init>(Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;)V

    iput-object v1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    iput-object p3, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    iput-object p4, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 76
    invoke-virtual {p0}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 77
    .local v0, "wifiInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lorg/teleal/cling/model/ModelUtil;->ANDROID_EMULATOR:Z

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    sget-object v1, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->log:Ljava/util/logging/Logger;

    const-string v2, "WiFi is enabled (or running on Android emulator), starting router immediately"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->enable()Z

    .line 81
    :cond_1
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public disable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 128
    :cond_0
    invoke-super {p0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->disable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 130
    iget-object v1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 128
    return v0

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    iget-object v1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 131
    throw v0
.end method

.method public enable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 100
    :try_start_0
    invoke-super {p0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->enable()Z

    move-result v0

    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 103
    iget-object v1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 105
    return v0

    .line 106
    .end local v0    # "enabled":Z
    :catchall_0
    move-exception v1

    .line 107
    iget-object v2, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v2}, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 108
    throw v1
.end method

.method public getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method protected getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method protected getLockTimeoutMillis()I
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0x2710

    return v0
.end method

.method protected getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public handleStartFailure(Lorg/teleal/cling/transport/spi/InitializationException;)V
    .locals 1
    .param p1, "ex"    # Lorg/teleal/cling/transport/spi/InitializationException;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 117
    :cond_0
    invoke-super {p0, p1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->handleStartFailure(Lorg/teleal/cling/transport/spi/InitializationException;)V

    .line 118
    return-void
.end method
