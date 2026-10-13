.class public Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;
.super Ljava/lang/Object;
.source "DMSProcessorImpl.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;


# instance fields
.field private m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

.field private m_device:Lorg/teleal/cling/model/meta/Device;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/controlpoint/ControlPoint;)V
    .locals 0
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;
    .param p2, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;->m_device:Lorg/teleal/cling/model/meta/Device;

    .line 34
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    .line 35
    return-void
.end method

.method private executeBrowse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V
    .locals 16
    .param p1, "objectID"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "defaultMaxResult"    # I
    .param p4, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;->m_device:Lorg/teleal/cling/model/meta/Device;

    new-instance v5, Lorg/teleal/cling/model/types/ServiceType;

    const-string v6, "schemas-upnp-org"

    const-string v7, "ContentDirectory"

    invoke-direct {v5, v6, v7}, Lorg/teleal/cling/model/types/ServiceType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/teleal/cling/model/meta/Device;->findService(Lorg/teleal/cling/model/types/ServiceType;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v4

    .line 60
    .local v4, "contentDirectoryService":Lorg/teleal/cling/model/meta/Service;
    if-eqz v4, :cond_0

    .line 62
    add-int/lit8 v15, p3, 0x1

    .line 64
    .local v15, "maxResults":I
    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;

    sget-object v6, Lorg/teleal/cling/support/model/BrowseFlag;->DIRECT_CHILDREN:Lorg/teleal/cling/support/model/BrowseFlag;

    const-string v7, "*"

    move/from16 v0, p2

    int-to-long v8, v0

    int-to-long v10, v15

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v3, 0x1

    new-array v11, v3, [Lorg/teleal/cling/support/model/SortCriterion;

    const/4 v3, 0x0

    new-instance v5, Lorg/teleal/cling/support/model/SortCriterion;

    const/4 v12, 0x1

    const-string v13, "dc:title"

    invoke-direct {v5, v12, v13}, Lorg/teleal/cling/support/model/SortCriterion;-><init>(ZLjava/lang/String;)V

    aput-object v5, v11, v3

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p1

    invoke-direct/range {v2 .. v14}, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl$1;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Lorg/teleal/cling/support/model/BrowseFlag;Ljava/lang/String;JLjava/lang/Long;[Lorg/teleal/cling/support/model/SortCriterion;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;Ljava/lang/String;)V

    .line 115
    .local v2, "browse":Lorg/teleal/cling/support/contentdirectory/callback/Browse;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    invoke-interface {v3, v2}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    .line 121
    .end local v2    # "browse":Lorg/teleal/cling/support/contentdirectory/callback/Browse;
    .end local v15    # "maxResults":I
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v3, ""

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;->onBrowseFail(Ljava/lang/String;)V

    goto :goto_0
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
    .local p1, "m_traceID":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 127
    .local v1, "traceSize":I
    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    .line 129
    add-int/lit8 v3, v1, -0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    .local v0, "parentID":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 135
    const/4 v2, 0x1

    .line 138
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
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;->executeBrowse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 53
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
