.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;
.super Ljava/lang/Object;
.source "LiveTVActivity.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private liveTVBrowseFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;)V

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 489
    return-void
.end method

.method private liveTVBrowseSuccess(Ljava/lang/String;ZLjava/util/Map;)V
    .locals 2
    .param p1, "objectID"    # Ljava/lang/String;
    .param p2, "haveNext"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;

    invoke-direct {v1, p0, p3, p2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;Ljava/util/Map;Z)V

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 548
    return-void
.end method


# virtual methods
.method public onBrowseComplete(Ljava/lang/String;ZLjava/util/Map;)V
    .locals 2
    .param p1, "objectID"    # Ljava/lang/String;
    .param p2, "haveNext"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->SUCCESS:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1702(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .line 495
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->liveTVBrowseSuccess(Ljava/lang/String;ZLjava/util/Map;)V

    .line 496
    return-void
.end method

.method public onBrowseFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->FAILURE:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1702(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .line 478
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->liveTVBrowseFailure(Ljava/lang/String;)V

    .line 479
    return-void
.end method
