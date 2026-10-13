.class Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;
.super Lorg/teleal/cling/support/contentdirectory/callback/Browse;
.source "DMSProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;->executeBrowse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;

.field final synthetic val$defaultMaxResult:I

.field final synthetic val$listener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

.field final synthetic val$objectID:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/teleal/cling/support/model/SortCriterion;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;Ljava/lang/String;)V
    .locals 12
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;
    .param p2, "x0"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/teleal/cling/support/model/BrowseFlag;
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # J
    .param p8, "x5"    # Ljava/lang/Long;
    .param p9, "x6"    # [Lorg/teleal/cling/support/model/SortCriterion;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;

    move/from16 v0, p10

    iput v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;->val$defaultMaxResult:I

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;->val$listener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;->val$objectID:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v3 .. v11}, Lorg/teleal/cling/support/contentdirectory/callback/Browse;-><init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/teleal/cling/support/model/SortCriterion;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 1
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "defaultMsg"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;->val$listener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-interface {v0, p3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;->onBrowseFail(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/DIDLContent;)V
    .locals 7
    .param p1, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "didlContent"    # Lorg/teleal/cling/support/model/DIDLContent;

    .prologue
    .line 71
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "containers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object v3

    .line 76
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    const/4 v2, 0x0

    .line 78
    .local v2, "haveNext":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;->val$defaultMaxResult:I

    if-le v5, v6, :cond_1

    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 89
    :cond_0
    :goto_0
    const-string v5, "Containers"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v5, "Items"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;->val$listener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;->val$objectID:Ljava/lang/String;

    invoke-interface {v5, v6, v2, v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;->onBrowseComplete(Ljava/lang/String;ZLjava/util/Map;)V

    .line 99
    .end local v0    # "containers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    .end local v2    # "haveNext":Z
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    .end local v4    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    :goto_1
    return-void

    .line 83
    .restart local v0    # "containers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    .restart local v2    # "haveNext":Z
    .restart local v3    # "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    .restart local v4    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;->val$defaultMaxResult:I

    if-gt v5, v6, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;->val$defaultMaxResult:I

    if-le v5, v6, :cond_0

    .line 85
    :cond_2
    const/4 v2, 0x1

    .line 86
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v0    # "containers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    .end local v2    # "haveNext":Z
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    .end local v4    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;->val$listener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;->onBrowseFail(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateStatus(Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;)V
    .locals 0
    .param p1, "status"    # Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    .prologue
    .line 105
    return-void
.end method
