.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;
.super Ljava/lang/Object;
.source "DMSOtherBrowseActivity.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private browseFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$900(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V

    .line 343
    return-void
.end method

.method private browseSuccess(Ljava/lang/String;ZLjava/util/Map;)V
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
    .line 351
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1300(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;Ljava/util/Map;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 397
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
    .line 347
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->browseSuccess(Ljava/lang/String;ZLjava/util/Map;)V

    .line 348
    return-void
.end method

.method public onBrowseFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->browseFailure(Ljava/lang/String;)V

    .line 338
    return-void
.end method
