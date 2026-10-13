.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$2;
.super Ljava/lang/Object;
.source "LiveTVActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->deviceBrowseSuccess(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

.field final synthetic val$result:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$2;->val$result:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 386
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$2;->val$result:Ljava/util/Map;

    const-string v5, "Containers"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 388
    .local v0, "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DIDLObject;

    .line 390
    .local v1, "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isLiveTV(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 395
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1300(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "LIVETV"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1400(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .end local v1    # "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->access$1500(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;)V

    .line 402
    return-void
.end method
