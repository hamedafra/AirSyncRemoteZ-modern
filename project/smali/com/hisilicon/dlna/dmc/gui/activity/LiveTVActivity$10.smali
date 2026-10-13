.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;
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
    .line 353
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->rootFloorBrowse()V

    return-void
.end method

.method static synthetic access$1600(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->rootLiveTVBrowseWaiting()V

    return-void
.end method

.method static synthetic access$1800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->rootLiveTVBrowse()V

    return-void
.end method

.method private deviceBrowseFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;)V

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method private deviceBrowseSuccess(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 382
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$2;

    invoke-direct {v1, p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 404
    return-void
.end method

.method private rootFloorBrowse()V
    .locals 2

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->rootLiveTVBrowse()V

    .line 412
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 435
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 437
    return-void
.end method

.method private rootLiveTVBrowse()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$4;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;)V

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 455
    return-void
.end method

.method private rootLiveTVBrowseWaiting()V
    .locals 4

    .prologue
    .line 458
    :goto_0
    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->UNKOWN:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1700(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 460
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 465
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBrowseComplete(Ljava/lang/String;ZLjava/util/Map;)V
    .locals 0
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
    .line 362
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    invoke-direct {p0, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->deviceBrowseSuccess(Ljava/util/Map;)V

    .line 364
    return-void
.end method

.method public onBrowseFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->deviceBrowseFailure(Ljava/lang/String;)V

    .line 358
    return-void
.end method
