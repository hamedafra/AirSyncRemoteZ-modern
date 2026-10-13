.class Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$4;
.super Landroid/content/BroadcastReceiver;
.source "CoreUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$4;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 606
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AIRSHARE_EXIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 607
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$4;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->onDestroy()V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    const-string v2, "10"

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getNode(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    move-result-object v0

    .line 611
    .local v0, "node":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v1

    .line 613
    .local v1, "playlistContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/container/Container;->getContainers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 614
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 615
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 617
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->initPlaylist()V

    goto :goto_0
.end method
