.class public Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;
    }
.end annotation


# instance fields
.field protected DISABLE_STATE_TIMEOUT:I

.field private m_disableWifiPending:Z

.field private m_interfaceCache:Ljava/net/NetworkInterface;

.field private m_router:Lorg/teleal/cling/transport/SwitchableRouter;

.field private m_routerStateListener:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/transport/SwitchableRouter;Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;)V
    .locals 1
    .param p1, "router"    # Lorg/teleal/cling/transport/SwitchableRouter;
    .param p2, "routerStateListener"    # Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->DISABLE_STATE_TIMEOUT:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_interfaceCache:Ljava/net/NetworkInterface;

    .line 25
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_router:Lorg/teleal/cling/transport/SwitchableRouter;

    .line 26
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_routerStateListener:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_disableWifiPending:Z

    return v0
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;)Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_routerStateListener:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v1, "wifi"

    .line 35
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const-string v2, "connectivity"

    .line 36
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 34
    invoke-static {v1, v2}, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;->getWifiNetworkInterface(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 38
    .local v0, "ni":Ljava/net/NetworkInterface;
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->updateHostAddress(Ljava/net/NetworkInterface;)V

    .line 40
    if-nez v0, :cond_1

    .line 41
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_router:Lorg/teleal/cling/transport/SwitchableRouter;

    invoke-interface {v1}, Lorg/teleal/cling/transport/SwitchableRouter;->disable()Z

    .line 42
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_routerStateListener:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;->onRouterDisabled()V

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_disableWifiPending:Z

    .line 44
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$1;-><init>(Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_router:Lorg/teleal/cling/transport/SwitchableRouter;

    invoke-interface {v1}, Lorg/teleal/cling/transport/SwitchableRouter;->enable()Z

    .line 66
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_routerStateListener:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;->onRouterEnabled()V

    .line 68
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_interfaceCache:Ljava/net/NetworkInterface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_interfaceCache:Ljava/net/NetworkInterface;

    invoke-virtual {v0, v1}, Ljava/net/NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_routerStateListener:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;

    invoke-interface {v1, v0}, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;->onNetworkChanged(Ljava/net/NetworkInterface;)V

    .line 71
    :cond_3
    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_interfaceCache:Ljava/net/NetworkInterface;

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->m_disableWifiPending:Z

    goto :goto_0
.end method
