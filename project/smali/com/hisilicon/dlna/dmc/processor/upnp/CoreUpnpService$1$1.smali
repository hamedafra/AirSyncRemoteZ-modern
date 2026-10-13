.class Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1$1;
.super Ljava/lang/Object;
.source "CoreUpnpService.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->createRouter(Lorg/teleal/cling/protocol/ProtocolFactory;Lorg/teleal/cling/registry/Registry;)Lorg/teleal/cling/transport/Router;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged(Ljava/net/NetworkInterface;)V
    .locals 2
    .param p1, "ni"    # Ljava/net/NetworkInterface;

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V
    :try_end_0
    .catch Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$300(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$300(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;->onNetworkChanged(Ljava/net/NetworkInterface;)V

    .line 152
    :cond_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRouterDisabled()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$300(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$300(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;->onRouterDisabled()V

    .line 164
    :cond_0
    return-void
.end method

.method public onRouterEnabled()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$300(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$300(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;->onRouterEnabled()V

    .line 158
    :cond_0
    return-void
.end method

.method public onRouterError(Ljava/lang/String;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$300(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$300(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

    move-result-object v0

    const-string v1, "No network found"

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;->onRouterError(Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method
