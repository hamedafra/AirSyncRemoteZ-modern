.class Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;
.super Ljava/lang/Object;
.source "UpnpProcessorImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->bindUpnpService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    check-cast p2, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->access$002(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    .line 73
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->access$000(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->access$000(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->addRegistryListener(Lorg/teleal/cling/registry/RegistryListener;)V

    .line 76
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->access$100(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;)V

    .line 78
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->access$000(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->setProcessor(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;)V

    .line 79
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->access$000(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/controlpoint/ControlPoint;->search()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->access$200(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->access$002(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    .line 69
    return-void
.end method
