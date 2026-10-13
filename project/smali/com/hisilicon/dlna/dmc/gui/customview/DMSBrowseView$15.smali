.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private imageBrowseFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1336
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;)V

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/Runnable;)V

    .line 1343
    return-void
.end method

.method private imageBrowseSuccess(Ljava/lang/String;ZLjava/util/Map;)V
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
    .line 1353
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;Ljava/lang/String;Ljava/util/Map;Z)V

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/Runnable;)V

    .line 1453
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
    .line 1347
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->SUCCESS:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3602(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .line 1349
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->imageBrowseSuccess(Ljava/lang/String;ZLjava/util/Map;)V

    .line 1350
    return-void
.end method

.method public onBrowseFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->FAILURE:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3602(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .line 1330
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->imageBrowseFailure(Ljava/lang/String;)V

    .line 1331
    return-void
.end method
