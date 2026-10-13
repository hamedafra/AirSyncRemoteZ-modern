.class public Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalContentDirectoryService;
.super Lorg/teleal/cling/support/contentdirectory/AbstractContentDirectoryService;
.source "LocalContentDirectoryService.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalContentDirectoryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalContentDirectoryService;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/teleal/cling/support/contentdirectory/AbstractContentDirectoryService;-><init>()V

    return-void
.end method

.method private getResultContent(JJLorg/teleal/cling/support/model/DIDLContent;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)[I
    .locals 17
    .param p1, "firstResult"    # J
    .param p3, "maxResults"    # J
    .param p5, "didlContent"    # Lorg/teleal/cling/support/model/DIDLContent;
    .param p6, "contentNode"    # Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    .prologue
    .line 68
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 70
    .local v8, "res":[I
    invoke-virtual/range {p6 .. p6}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v4

    .line 71
    .local v4, "containers":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {v4}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 74
    .local v10, "totalMatches":I
    const-wide/16 v12, 0x0

    cmp-long v11, p3, v12

    if-nez v11, :cond_0

    .line 75
    move v9, v10

    .line 79
    .local v9, "toIndex":I
    :goto_0
    invoke-virtual {v4}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v6

    .line 80
    .local v6, "itemList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 82
    .local v7, "itemSize":I
    invoke-virtual {v4}, Lorg/teleal/cling/support/model/container/Container;->getContainers()Ljava/util/List;

    move-result-object v3

    .line 84
    .local v3, "containerList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    if-gt v9, v7, :cond_2

    .line 85
    move-wide/from16 v0, p1

    long-to-int v11, v0

    invoke-interface {v6, v11, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/support/model/item/Item;

    .line 86
    .local v5, "item":Lorg/teleal/cling/support/model/item/Item;
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lorg/teleal/cling/support/model/DIDLContent;->addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/DIDLContent;

    .line 87
    const/4 v12, 0x0

    aget v13, v8, v12

    add-int/lit8 v13, v13, 0x1

    aput v13, v8, v12

    goto :goto_1

    .line 77
    .end local v3    # "containerList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    .end local v5    # "item":Lorg/teleal/cling/support/model/item/Item;
    .end local v6    # "itemList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    .end local v7    # "itemSize":I
    .end local v9    # "toIndex":I
    :cond_0
    add-long v12, p1, p3

    int-to-long v14, v10

    cmp-long v11, v12, v14

    if-gez v11, :cond_1

    add-long v12, p1, p3

    long-to-int v9, v12

    .restart local v9    # "toIndex":I
    :goto_2
    goto :goto_0

    .end local v9    # "toIndex":I
    :cond_1
    move v9, v10

    goto :goto_2

    .line 89
    .restart local v3    # "containerList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    .restart local v6    # "itemList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    .restart local v7    # "itemSize":I
    .restart local v9    # "toIndex":I
    :cond_2
    int-to-long v12, v7

    cmp-long v11, p1, v12

    if-ltz v11, :cond_3

    .line 90
    move-wide/from16 v0, p1

    long-to-int v11, v0

    invoke-interface {v3, v11, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/container/Container;

    .line 91
    .local v2, "container":Lorg/teleal/cling/support/model/container/Container;
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/DIDLContent;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/DIDLContent;

    .line 92
    const/4 v12, 0x0

    aget v13, v8, v12

    add-int/lit8 v13, v13, 0x1

    aput v13, v8, v12

    goto :goto_3

    .line 95
    .end local v2    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_3
    move-wide/from16 v0, p1

    long-to-int v11, v0

    invoke-interface {v6, v11, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/support/model/item/Item;

    .line 96
    .restart local v5    # "item":Lorg/teleal/cling/support/model/item/Item;
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lorg/teleal/cling/support/model/DIDLContent;->addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/DIDLContent;

    .line 97
    const/4 v12, 0x0

    aget v13, v8, v12

    add-int/lit8 v13, v13, 0x1

    aput v13, v8, v12

    goto :goto_4

    .line 100
    .end local v5    # "item":Lorg/teleal/cling/support/model/item/Item;
    :cond_4
    const/4 v11, 0x0

    int-to-long v12, v7

    sub-long v12, v12, p1

    sub-long v12, p3, v12

    long-to-int v12, v12

    invoke-interface {v3, v11, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/container/Container;

    .line 101
    .restart local v2    # "container":Lorg/teleal/cling/support/model/container/Container;
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lorg/teleal/cling/support/model/DIDLContent;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/DIDLContent;

    .line 102
    const/4 v12, 0x0

    aget v13, v8, v12

    add-int/lit8 v13, v13, 0x1

    aput v13, v8, v12

    goto :goto_5

    .line 106
    .end local v2    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_5
    const/4 v11, 0x1

    aput v10, v8, v11

    .line 108
    return-object v8
.end method


# virtual methods
.method public browse(Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JJ[Lorg/teleal/cling/support/model/SortCriterion;)Lorg/teleal/cling/support/model/BrowseResult;
    .locals 12
    .param p1, "objectID"    # Ljava/lang/String;
    .param p2, "browseFlag"    # Lorg/teleal/cling/support/model/BrowseFlag;
    .param p3, "filter"    # Ljava/lang/String;
    .param p4, "firstResult"    # J
    .param p6, "maxResults"    # J
    .param p8, "orderby"    # [Lorg/teleal/cling/support/model/SortCriterion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/contentdirectory/ContentDirectoryException;
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    new-instance v6, Lorg/teleal/cling/support/model/DIDLContent;

    invoke-direct {v6}, Lorg/teleal/cling/support/model/DIDLContent;-><init>()V

    .line 31
    .local v6, "didlContent":Lorg/teleal/cling/support/model/DIDLContent;
    const/4 v9, 0x0

    .line 32
    .local v9, "isShare":Z
    if-nez v9, :cond_0

    .line 33
    new-instance v0, Lorg/teleal/cling/support/model/BrowseResult;

    new-instance v1, Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-direct {v1}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;-><init>()V

    invoke-virtual {v1, v6}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generate(Lorg/teleal/cling/support/model/DIDLContent;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/BrowseResult;-><init>(Ljava/lang/String;JJ)V

    .line 58
    :goto_0
    return-object v0

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getNode(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    move-result-object v7

    .line 36
    .local v7, "contentNode":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalContentDirectoryService;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "someone\'s browsing id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    if-nez v7, :cond_1

    .line 39
    new-instance v0, Lorg/teleal/cling/support/model/BrowseResult;

    new-instance v1, Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-direct {v1}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;-><init>()V

    invoke-virtual {v1, v6}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generate(Lorg/teleal/cling/support/model/DIDLContent;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/BrowseResult;-><init>(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v6    # "didlContent":Lorg/teleal/cling/support/model/DIDLContent;
    .end local v7    # "contentNode":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
    .end local v9    # "isShare":Z
    :catch_0
    move-exception v8

    .line 63
    .local v8, "ex":Ljava/lang/Exception;
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/ContentDirectoryException;

    sget-object v1, Lorg/teleal/cling/support/contentdirectory/ContentDirectoryErrorCode;->CANNOT_PROCESS:Lorg/teleal/cling/support/contentdirectory/ContentDirectoryErrorCode;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/contentdirectory/ContentDirectoryException;-><init>(Lorg/teleal/cling/support/contentdirectory/ContentDirectoryErrorCode;Ljava/lang/String;)V

    throw v0

    .line 41
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v6    # "didlContent":Lorg/teleal/cling/support/model/DIDLContent;
    .restart local v7    # "contentNode":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
    .restart local v9    # "isShare":Z
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->isItem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {v7}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getItem()Lorg/teleal/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/teleal/cling/support/model/DIDLContent;->addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/DIDLContent;

    .line 43
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalContentDirectoryService;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returing item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getItem()Lorg/teleal/cling/support/model/item/Item;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/support/model/item/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lorg/teleal/cling/support/model/BrowseResult;

    new-instance v1, Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-direct {v1}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;-><init>()V

    invoke-virtual {v1, v6}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generate(Lorg/teleal/cling/support/model/DIDLContent;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/BrowseResult;-><init>(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 48
    :cond_2
    sget-object v0, Lorg/teleal/cling/support/model/BrowseFlag;->METADATA:Lorg/teleal/cling/support/model/BrowseFlag;

    if-ne p2, v0, :cond_3

    .line 49
    invoke-virtual {v7}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/teleal/cling/support/model/DIDLContent;->addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/DIDLContent;

    .line 50
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalContentDirectoryService;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returning metadata of container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Lorg/teleal/cling/support/model/BrowseResult;

    new-instance v1, Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-direct {v1}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;-><init>()V

    invoke-virtual {v1, v6}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generate(Lorg/teleal/cling/support/model/DIDLContent;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/BrowseResult;-><init>(Ljava/lang/String;JJ)V

    goto/16 :goto_0

    :cond_3
    move-object v1, p0

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    .line 56
    invoke-direct/range {v1 .. v7}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalContentDirectoryService;->getResultContent(JJLorg/teleal/cling/support/model/DIDLContent;Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;)[I

    move-result-object v10

    .line 58
    .local v10, "resCount":[I
    new-instance v0, Lorg/teleal/cling/support/model/BrowseResult;

    new-instance v1, Lorg/teleal/cling/support/contentdirectory/DIDLParser;

    invoke-direct {v1}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;-><init>()V

    invoke-virtual {v1, v6}, Lorg/teleal/cling/support/contentdirectory/DIDLParser;->generate(Lorg/teleal/cling/support/model/DIDLContent;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v10, v2

    int-to-long v2, v2

    const/4 v4, 0x1

    aget v4, v10, v4

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/BrowseResult;-><init>(Ljava/lang/String;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ[Lorg/teleal/cling/support/model/SortCriterion;)Lorg/teleal/cling/support/model/BrowseResult;
    .locals 2
    .param p1, "containerId"    # Ljava/lang/String;
    .param p2, "searchCriteria"    # Ljava/lang/String;
    .param p3, "filter"    # Ljava/lang/String;
    .param p4, "firstResult"    # J
    .param p6, "maxResults"    # J
    .param p8, "orderBy"    # [Lorg/teleal/cling/support/model/SortCriterion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/contentdirectory/ContentDirectoryException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-super/range {p0 .. p8}, Lorg/teleal/cling/support/contentdirectory/AbstractContentDirectoryService;->search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ[Lorg/teleal/cling/support/model/SortCriterion;)Lorg/teleal/cling/support/model/BrowseResult;

    move-result-object v0

    return-object v0
.end method
