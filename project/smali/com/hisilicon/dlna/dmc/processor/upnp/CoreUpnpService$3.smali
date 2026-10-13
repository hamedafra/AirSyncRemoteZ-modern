.class Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$3;
.super Landroid/os/AsyncTask;
.source "CoreUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$3;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$3;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/registry/Registry;->removeAllLocalDevices()V

    .line 244
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$3;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/registry/Registry;->removeAllRemoteDevices()V

    .line 245
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$3;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$3;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$600(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/registry/RegistryListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/teleal/cling/registry/Registry;->removeListener(Lorg/teleal/cling/registry/RegistryListener;)V

    .line 246
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$3;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->shutdown()V

    .line 247
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$3;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$502(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/UpnpService;)Lorg/teleal/cling/UpnpService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-object v3

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 238
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 256
    return-void
.end method
