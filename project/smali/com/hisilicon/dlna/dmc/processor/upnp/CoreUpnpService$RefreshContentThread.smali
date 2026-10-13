.class Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$RefreshContentThread;
.super Ljava/lang/Thread;
.source "CoreUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshContentThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$RefreshContentThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 493
    :try_start_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1800()Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$RefreshContentThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V
    :try_end_0
    .catch Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;->printStackTrace()V

    goto :goto_0
.end method
