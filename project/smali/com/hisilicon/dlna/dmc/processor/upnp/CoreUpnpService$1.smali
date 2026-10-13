.class Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;
.super Lorg/teleal/cling/UpnpServiceImpl;
.source "CoreUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->initializedUpnpService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;


# direct methods
.method varargs constructor <init>(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/UpnpServiceConfiguration;[Lorg/teleal/cling/registry/RegistryListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .param p2, "x0"    # Lorg/teleal/cling/UpnpServiceConfiguration;
    .param p3, "x1"    # [Lorg/teleal/cling/registry/RegistryListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-direct {p0, p2, p3}, Lorg/teleal/cling/UpnpServiceImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;[Lorg/teleal/cling/registry/RegistryListener;)V

    return-void
.end method


# virtual methods
.method protected createRouter(Lorg/teleal/cling/protocol/ProtocolFactory;Lorg/teleal/cling/registry/Registry;)Lorg/teleal/cling/transport/Router;
    .locals 6
    .param p1, "protocolFactory"    # Lorg/teleal/cling/protocol/ProtocolFactory;
    .param p2, "registry"    # Lorg/teleal/cling/registry/Registry;

    .prologue
    .line 128
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .line 129
    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$000(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$100(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Landroid/net/ConnectivityManager;

    move-result-object v5

    .line 128
    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->createRouter(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;

    move-result-object v1

    .line 130
    .local v1, "router":Lorg/teleal/cling/android/AndroidWifiSwitchableRouter;
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    new-instance v3, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    new-instance v4, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1$1;

    invoke-direct {v4, p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1$1;-><init>(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;)V

    invoke-direct {v3, v1, v4}, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;-><init>(Lorg/teleal/cling/transport/SwitchableRouter;Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;)V

    invoke-static {v2, v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$202(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;)Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    .line 166
    sget-boolean v2, Lorg/teleal/cling/model/ModelUtil;->ANDROID_EMULATOR:Z

    if-nez v2, :cond_0

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$200(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-object v1
.end method
