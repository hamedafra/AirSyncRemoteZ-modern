.class public Lorg/teleal/cling/support/model/container/Container;
.super Lorg/teleal/cling/support/model/DIDLObject;
.source "Container.java"


# instance fields
.field protected childCount:Ljava/lang/Integer;

.field protected containers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/container/Container;",
            ">;"
        }
    .end annotation
.end field

.field protected createClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            ">;"
        }
    .end annotation
.end field

.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/Item;",
            ">;"
        }
    .end annotation
.end field

.field protected searchClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            ">;"
        }
    .end annotation
.end field

.field protected searchable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/teleal/cling/support/model/DIDLObject;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->containers:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->items:Ljava/util/List;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V
    .locals 16
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;
    .param p6, "childCount"    # Ljava/lang/Integer;

    .prologue
    .line 91
    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v15}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;
    .param p6, "childCount"    # Ljava/lang/Integer;
    .param p7, "searchable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p8, "createClasses":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Class;>;"
    .local p9, "searchClasses":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Class;>;"
    .local p10, "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-direct/range {v0 .. v15}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "restricted"    # Z
    .param p6, "writeStatus"    # Lorg/teleal/cling/support/model/WriteStatus;
    .param p7, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/teleal/cling/support/model/WriteStatus;",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/Res;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Property;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DescMeta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p8, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Res;>;"
    .local p9, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Property;>;"
    .local p10, "descMetadata":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DescMeta;>;"
    invoke-direct/range {p0 .. p10}, Lorg/teleal/cling/support/model/DIDLObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->containers:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->items:Ljava/util/List;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "restricted"    # Z
    .param p6, "writeStatus"    # Lorg/teleal/cling/support/model/WriteStatus;
    .param p7, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;
    .param p11, "childCount"    # Ljava/lang/Integer;
    .param p12, "searchable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/teleal/cling/support/model/WriteStatus;",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/Res;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Property;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DescMeta;",
            ">;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p8, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Res;>;"
    .local p9, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Property;>;"
    .local p10, "descMetadata":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DescMeta;>;"
    .local p13, "createClasses":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Class;>;"
    .local p14, "searchClasses":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Class;>;"
    .local p15, "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    invoke-direct/range {p0 .. p10}, Lorg/teleal/cling/support/model/DIDLObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/teleal/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/teleal/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/teleal/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/teleal/cling/support/model/container/Container;->containers:Ljava/util/List;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/teleal/cling/support/model/container/Container;->items:Ljava/util/List;

    .line 79
    iput-object p11, p0, Lorg/teleal/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    .line 80
    iput-boolean p12, p0, Lorg/teleal/cling/support/model/container/Container;->searchable:Z

    .line 81
    iput-object p13, p0, Lorg/teleal/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    .line 82
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    .line 83
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->items:Ljava/util/List;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V
    .locals 16
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;
    .param p6, "childCount"    # Ljava/lang/Integer;

    .prologue
    .line 87
    invoke-virtual/range {p2 .. p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v15}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;
    .param p6, "childCount"    # Ljava/lang/Integer;
    .param p7, "searchable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/support/model/container/Container;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p8, "createClasses":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Class;>;"
    .local p9, "searchClasses":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Class;>;"
    .local p10, "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-direct/range {v0 .. v15}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/container/Container;)V
    .locals 1
    .param p1, "other"    # Lorg/teleal/cling/support/model/container/Container;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/DIDLObject;-><init>(Lorg/teleal/cling/support/model/DIDLObject;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->containers:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->items:Ljava/util/List;

    .line 66
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/Container;->setChildCount(Ljava/lang/Integer;)V

    .line 67
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/container/Container;->isSearchable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/Container;->setSearchable(Z)V

    .line 68
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/container/Container;->getCreateClasses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/Container;->setCreateClasses(Ljava/util/List;)V

    .line 69
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/container/Container;->getSearchClasses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/Container;->setSearchClasses(Ljava/util/List;)V

    .line 70
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/Container;->setItems(Ljava/util/List;)V

    .line 71
    return-void
.end method


# virtual methods
.method public addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/container/Container;
    .locals 1
    .param p1, "container"    # Lorg/teleal/cling/support/model/container/Container;

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/Container;->getContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-object p0
.end method

.method public addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/container/Container;
    .locals 1
    .param p1, "item"    # Lorg/teleal/cling/support/model/item/Item;

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-object p0
.end method

.method public getChildCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/container/Container;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->containers:Ljava/util/List;

    return-object v0
.end method

.method public getCreateClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    return-object v0
.end method

.method public getFirstContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/Container;->getContainers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->items:Ljava/util/List;

    return-object v0
.end method

.method public getSearchClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/teleal/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    return-object v0
.end method

.method public isSearchable()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/teleal/cling/support/model/container/Container;->searchable:Z

    return v0
.end method

.method public setChildCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "childCount"    # Ljava/lang/Integer;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/teleal/cling/support/model/container/Container;->childCount:Ljava/lang/Integer;

    .line 108
    return-void
.end method

.method public setContainers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/container/Container;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "containers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/container/Container;->containers:Ljava/util/List;

    .line 149
    return-void
.end method

.method public setCreateClasses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "createClasses":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Class;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/container/Container;->createClasses:Ljava/util/List;

    .line 124
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/container/Container;->items:Ljava/util/List;

    .line 157
    return-void
.end method

.method public setSearchClasses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DIDLObject$Class;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "searchClasses":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Class;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/container/Container;->searchClasses:Ljava/util/List;

    .line 132
    return-void
.end method

.method public setSearchable(Z)V
    .locals 0
    .param p1, "searchable"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lorg/teleal/cling/support/model/container/Container;->searchable:Z

    .line 116
    return-void
.end method
