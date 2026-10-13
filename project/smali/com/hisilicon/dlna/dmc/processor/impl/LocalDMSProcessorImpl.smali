.class public Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMSProcessorImpl;
.super Ljava/lang/Object;
.source "LocalDMSProcessorImpl.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private executeBrowse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V
    .locals 9
    .param p1, "objectID"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "defaultMaxResult"    # I
    .param p4, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .prologue
    .line 31
    add-int v2, p2, p3

    .line 34
    .local v2, "endIndex":I
    :try_start_0
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 36
    .local v0, "container":Lorg/teleal/cling/support/model/container/Container;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getContainers()Ljava/util/List;

    move-result-object v1

    .line 39
    .local v1, "containers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v5

    .line 41
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    const/4 v4, 0x0

    .line 43
    .local v4, "haveNext":Z
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v2, :cond_1

    .line 44
    const/4 v4, 0x1

    .line 45
    invoke-interface {v1, p2, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 54
    :cond_0
    :goto_0
    const-string v7, "Containers"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v7, "Items"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {p4, p1, v4, v6}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;->onBrowseComplete(Ljava/lang/String;ZLjava/util/Map;)V

    .line 62
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    .end local v1    # "containers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    .end local v4    # "haveNext":Z
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    .end local v6    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    :goto_1
    return-void

    .line 46
    .restart local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    .restart local v1    # "containers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    .restart local v4    # "haveNext":Z
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    .restart local v6    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v2, :cond_2

    .line 47
    const/4 v4, 0x1

    .line 48
    invoke-interface {v5, p2, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 49
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    if-le v7, v2, :cond_0

    .line 50
    const/4 v4, 0x1

    .line 51
    const/4 v7, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    sub-int v8, v2, v8

    invoke-interface {v5, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 58
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    .end local v1    # "containers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    .end local v4    # "haveNext":Z
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    .end local v6    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;>;"
    :catch_0
    move-exception v3

    .line 59
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p4, v7}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;->onBrowseFail(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public back(Ljava/util/List;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)Z
    .locals 4
    .param p2, "maxResult"    # I
    .param p3, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "traceID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 67
    .local v1, "traceSize":I
    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    .line 68
    add-int/lit8 v3, v1, -0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "parentID":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMSProcessorImpl;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 71
    const/4 v2, 0x1

    .line 73
    .end local v0    # "parentID":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V
    .locals 0
    .param p1, "objectID"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "maxResult"    # I
    .param p4, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMSProcessorImpl;->executeBrowse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 26
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
