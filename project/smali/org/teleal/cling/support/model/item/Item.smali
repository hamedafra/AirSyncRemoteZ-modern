.class public Lorg/teleal/cling/support/model/item/Item;
.super Lorg/teleal/cling/support/model/DIDLObject;
.source "Item.java"


# instance fields
.field protected refID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/teleal/cling/support/model/DIDLObject;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;)V
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;

    .prologue
    .line 62
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lorg/teleal/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/String;)V
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;
    .param p6, "refID"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lorg/teleal/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    .line 45
    .local p8, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Res;>;"
    .local p9, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Property;>;"
    .local p10, "descMetadata":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DescMeta;>;"
    invoke-direct/range {p0 .. p10}, Lorg/teleal/cling/support/model/DIDLObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "restricted"    # Z
    .param p6, "writeStatus"    # Lorg/teleal/cling/support/model/WriteStatus;
    .param p7, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;
    .param p11, "refID"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p8, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Res;>;"
    .local p9, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DIDLObject$Property;>;"
    .local p10, "descMetadata":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DescMeta;>;"
    invoke-direct/range {p0 .. p10}, Lorg/teleal/cling/support/model/DIDLObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 50
    iput-object p11, p0, Lorg/teleal/cling/support/model/item/Item;->refID:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;)V
    .locals 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;

    .prologue
    .line 54
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lorg/teleal/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/String;)V
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "clazz"    # Lorg/teleal/cling/support/model/DIDLObject$Class;
    .param p6, "refID"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lorg/teleal/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/teleal/cling/support/model/WriteStatus;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 1
    .param p1, "other"    # Lorg/teleal/cling/support/model/item/Item;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/DIDLObject;-><init>(Lorg/teleal/cling/support/model/DIDLObject;)V

    .line 41
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getRefID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/Item;->setRefID(Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getRefID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/teleal/cling/support/model/item/Item;->refID:Ljava/lang/String;

    return-object v0
.end method

.method public setRefID(Ljava/lang/String;)V
    .locals 0
    .param p1, "refID"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/teleal/cling/support/model/item/Item;->refID:Ljava/lang/String;

    .line 75
    return-void
.end method
