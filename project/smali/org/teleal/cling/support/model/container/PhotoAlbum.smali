.class public Lorg/teleal/cling/support/model/container/PhotoAlbum;
.super Lorg/teleal/cling/support/model/container/Album;
.source "PhotoAlbum.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.album.photoAlbum"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/container/PhotoAlbum;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/teleal/cling/support/model/container/Album;-><init>()V

    .line 34
    sget-object v0, Lorg/teleal/cling/support/model/container/PhotoAlbum;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PhotoAlbum;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "childCount"    # Ljava/lang/Integer;

    .prologue
    .line 50
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/PhotoAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "childCount"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p6, "photos":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Photo;>;"
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/support/model/container/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    sget-object v0, Lorg/teleal/cling/support/model/container/PhotoAlbum;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PhotoAlbum;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 56
    invoke-virtual {p0, p6}, Lorg/teleal/cling/support/model/container/PhotoAlbum;->addPhotos(Ljava/util/List;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "childCount"    # Ljava/lang/Integer;

    .prologue
    .line 42
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/PhotoAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "childCount"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/support/model/container/Container;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p6, "photos":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Photo;>;"
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/PhotoAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/container/Container;)V
    .locals 0
    .param p1, "other"    # Lorg/teleal/cling/support/model/container/Container;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/container/Album;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 39
    return-void
.end method


# virtual methods
.method public addPhotos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "photos":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Photo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/teleal/cling/support/model/item/Photo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/support/model/item/Photo;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PhotoAlbum;->addPhotos([Lorg/teleal/cling/support/model/item/Photo;)V

    .line 69
    return-void
.end method

.method public addPhotos([Lorg/teleal/cling/support/model/item/Photo;)V
    .locals 4
    .param p1, "photos"    # [Lorg/teleal/cling/support/model/item/Photo;

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 78
    :cond_0
    return-void

    .line 73
    :cond_1
    aget-object v0, p1, v1

    .line 74
    .local v0, "photo":Lorg/teleal/cling/support/model/item/Photo;
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/PhotoAlbum;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/teleal/cling/support/model/item/Photo;->setAlbum(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/Photo;

    .line 75
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PhotoAlbum;->addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/container/Container;

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPhotos()[Lorg/teleal/cling/support/model/item/Photo;
    .locals 4

    .prologue
    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Photo;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/PhotoAlbum;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/teleal/cling/support/model/item/Photo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/teleal/cling/support/model/item/Photo;

    return-object v2

    .line 61
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/item/Item;

    .line 62
    .local v0, "item":Lorg/teleal/cling/support/model/item/Item;
    instance-of v3, v0, Lorg/teleal/cling/support/model/item/Photo;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/teleal/cling/support/model/item/Photo;

    .end local v0    # "item":Lorg/teleal/cling/support/model/item/Item;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
