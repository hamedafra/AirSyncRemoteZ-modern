.class public Lorg/teleal/cling/support/model/DIDLContent;
.super Ljava/lang/Object;
.source "DIDLContent.java"


# static fields
.field public static final DESC_WRAPPER_NAMESPACE_URI:Ljava/lang/String; = "urn:teleal-org:cling:support:content-directory-desc-1-0"

.field public static final NAMESPACE_URI:Ljava/lang/String; = "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"


# instance fields
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

.field protected descMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DescMeta;",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLContent;->containers:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLContent;->items:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/model/DIDLContent;->descMetadata:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method public addContainer(Lorg/teleal/cling/support/model/container/Container;)Lorg/teleal/cling/support/model/DIDLContent;
    .locals 1
    .param p1, "container"    # Lorg/teleal/cling/support/model/container/Container;

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-object p0
.end method

.method public addDescMetadata(Lorg/teleal/cling/support/model/DescMeta;)Lorg/teleal/cling/support/model/DIDLContent;
    .locals 1
    .param p1, "descMetadata"    # Lorg/teleal/cling/support/model/DescMeta;

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLContent;->getDescMetadata()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-object p0
.end method

.method public addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/DIDLContent;
    .locals 1
    .param p1, "item"    # Lorg/teleal/cling/support/model/item/Item;

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-object p0
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
    .line 72
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLContent;->containers:Ljava/util/List;

    return-object v0
.end method

.method public getDescMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DescMeta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLContent;->descMetadata:Ljava/util/List;

    return-object v0
.end method

.method public getFirstContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

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
    .line 85
    iget-object v0, p0, Lorg/teleal/cling/support/model/DIDLContent;->items:Ljava/util/List;

    return-object v0
.end method

.method public replaceGenericContainerAndItems()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/DIDLContent;->replaceGenericItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/DIDLContent;->setItems(Ljava/util/List;)V

    .line 107
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/DIDLContent;->replaceGenericContainers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/DIDLContent;->setContainers(Ljava/util/List;)V

    .line 108
    return-void
.end method

.method protected replaceGenericContainers(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/container/Container;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/container/Container;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "genericContainers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v3, "specificContainers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 205
    return-object v3

    .line 156
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    .line 157
    .local v0, "genericContainer":Lorg/teleal/cling/support/model/container/Container;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getClazz()Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "genericType":Ljava/lang/String;
    sget-object v5, Lorg/teleal/cling/support/model/container/Album;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v5}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    new-instance v2, Lorg/teleal/cling/support/model/container/Album;

    invoke-direct {v2, v0}, Lorg/teleal/cling/support/model/container/Album;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 201
    .local v2, "specific":Lorg/teleal/cling/support/model/container/Container;
    :goto_1
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/teleal/cling/support/model/DIDLContent;->replaceGenericItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/teleal/cling/support/model/container/Container;->setItems(Ljava/util/List;)V

    .line 202
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    :cond_1
    sget-object v5, Lorg/teleal/cling/support/model/container/MusicAlbum;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v5}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 165
    new-instance v2, Lorg/teleal/cling/support/model/container/MusicAlbum;

    invoke-direct {v2, v0}, Lorg/teleal/cling/support/model/container/MusicAlbum;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 167
    .restart local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    goto :goto_1

    .end local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    :cond_2
    sget-object v5, Lorg/teleal/cling/support/model/container/PhotoAlbum;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v5}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 168
    new-instance v2, Lorg/teleal/cling/support/model/container/PhotoAlbum;

    invoke-direct {v2, v0}, Lorg/teleal/cling/support/model/container/PhotoAlbum;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 170
    .restart local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    goto :goto_1

    .end local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    :cond_3
    sget-object v5, Lorg/teleal/cling/support/model/container/GenreContainer;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v5}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 171
    new-instance v2, Lorg/teleal/cling/support/model/container/GenreContainer;

    invoke-direct {v2, v0}, Lorg/teleal/cling/support/model/container/GenreContainer;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 173
    .restart local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    goto :goto_1

    .end local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    :cond_4
    sget-object v5, Lorg/teleal/cling/support/model/container/MusicGenre;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v5}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 174
    new-instance v2, Lorg/teleal/cling/support/model/container/MusicGenre;

    invoke-direct {v2, v0}, Lorg/teleal/cling/support/model/container/MusicGenre;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 176
    .restart local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    goto :goto_1

    .end local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    :cond_5
    sget-object v5, Lorg/teleal/cling/support/model/container/MovieGenre;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v5}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 177
    new-instance v2, Lorg/teleal/cling/support/model/container/MovieGenre;

    invoke-direct {v2, v0}, Lorg/teleal/cling/support/model/container/MovieGenre;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 179
    .restart local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    goto :goto_1

    .end local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    :cond_6
    sget-object v5, Lorg/teleal/cling/support/model/container/PlaylistContainer;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v5}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 180
    new-instance v2, Lorg/teleal/cling/support/model/container/PlaylistContainer;

    invoke-direct {v2, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 182
    .restart local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    goto :goto_1

    .end local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    :cond_7
    sget-object v5, Lorg/teleal/cling/support/model/container/PersonContainer;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v5}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 183
    new-instance v2, Lorg/teleal/cling/support/model/container/PersonContainer;

    invoke-direct {v2, v0}, Lorg/teleal/cling/support/model/container/PersonContainer;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 185
    .restart local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    goto/16 :goto_1

    .end local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    :cond_8
    sget-object v5, Lorg/teleal/cling/support/model/container/MusicArtist;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v5}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 186
    new-instance v2, Lorg/teleal/cling/support/model/container/MusicArtist;

    invoke-direct {v2, v0}, Lorg/teleal/cling/support/model/container/MusicArtist;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 188
    .restart local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    goto/16 :goto_1

    .end local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    :cond_9
    sget-object v5, Lorg/teleal/cling/support/model/container/StorageSystem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v5}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 189
    new-instance v2, Lorg/teleal/cling/support/model/container/StorageSystem;

    invoke-direct {v2, v0}, Lorg/teleal/cling/support/model/container/StorageSystem;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 191
    .restart local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    goto/16 :goto_1

    .end local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    :cond_a
    sget-object v5, Lorg/teleal/cling/support/model/container/StorageVolume;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v5}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 192
    new-instance v2, Lorg/teleal/cling/support/model/container/StorageVolume;

    invoke-direct {v2, v0}, Lorg/teleal/cling/support/model/container/StorageVolume;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 194
    .restart local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    goto/16 :goto_1

    .end local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    :cond_b
    sget-object v5, Lorg/teleal/cling/support/model/container/StorageFolder;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v5}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 195
    new-instance v2, Lorg/teleal/cling/support/model/container/StorageFolder;

    invoke-direct {v2, v0}, Lorg/teleal/cling/support/model/container/StorageFolder;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 197
    .restart local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    goto/16 :goto_1

    .line 198
    .end local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    :cond_c
    move-object v2, v0

    .restart local v2    # "specific":Lorg/teleal/cling/support/model/container/Container;
    goto/16 :goto_1
.end method

.method protected replaceGenericItems(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "genericItems":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v2, "specificItems":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    return-object v2

    .line 113
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/item/Item;

    .line 114
    .local v0, "genericItem":Lorg/teleal/cling/support/model/item/Item;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/item/Item;->getClazz()Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "genericType":Ljava/lang/String;
    sget-object v4, Lorg/teleal/cling/support/model/item/AudioItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    new-instance v4, Lorg/teleal/cling/support/model/item/AudioItem;

    invoke-direct {v4, v0}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_1
    sget-object v4, Lorg/teleal/cling/support/model/item/MusicTrack;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    new-instance v4, Lorg/teleal/cling/support/model/item/MusicTrack;

    invoke-direct {v4, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_2
    sget-object v4, Lorg/teleal/cling/support/model/item/AudioBook;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    new-instance v4, Lorg/teleal/cling/support/model/item/AudioBook;

    invoke-direct {v4, v0}, Lorg/teleal/cling/support/model/item/AudioBook;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_3
    sget-object v4, Lorg/teleal/cling/support/model/item/AudioBroadcast;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 123
    new-instance v4, Lorg/teleal/cling/support/model/item/AudioBroadcast;

    invoke-direct {v4, v0}, Lorg/teleal/cling/support/model/item/AudioBroadcast;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_4
    sget-object v4, Lorg/teleal/cling/support/model/item/VideoItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 126
    new-instance v4, Lorg/teleal/cling/support/model/item/VideoItem;

    invoke-direct {v4, v0}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_5
    sget-object v4, Lorg/teleal/cling/support/model/item/Movie;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 128
    new-instance v4, Lorg/teleal/cling/support/model/item/Movie;

    invoke-direct {v4, v0}, Lorg/teleal/cling/support/model/item/Movie;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 129
    :cond_6
    sget-object v4, Lorg/teleal/cling/support/model/item/VideoBroadcast;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 130
    new-instance v4, Lorg/teleal/cling/support/model/item/VideoBroadcast;

    invoke-direct {v4, v0}, Lorg/teleal/cling/support/model/item/VideoBroadcast;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 131
    :cond_7
    sget-object v4, Lorg/teleal/cling/support/model/item/MusicVideoClip;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 132
    new-instance v4, Lorg/teleal/cling/support/model/item/MusicVideoClip;

    invoke-direct {v4, v0}, Lorg/teleal/cling/support/model/item/MusicVideoClip;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 134
    :cond_8
    sget-object v4, Lorg/teleal/cling/support/model/item/ImageItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 135
    new-instance v4, Lorg/teleal/cling/support/model/item/ImageItem;

    invoke-direct {v4, v0}, Lorg/teleal/cling/support/model/item/ImageItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 136
    :cond_9
    sget-object v4, Lorg/teleal/cling/support/model/item/Photo;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 137
    new-instance v4, Lorg/teleal/cling/support/model/item/Photo;

    invoke-direct {v4, v0}, Lorg/teleal/cling/support/model/item/Photo;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 139
    :cond_a
    sget-object v4, Lorg/teleal/cling/support/model/item/PlaylistItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 140
    new-instance v4, Lorg/teleal/cling/support/model/item/PlaylistItem;

    invoke-direct {v4, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 142
    :cond_b
    sget-object v4, Lorg/teleal/cling/support/model/item/TextItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 143
    new-instance v4, Lorg/teleal/cling/support/model/item/TextItem;

    invoke-direct {v4, v0}, Lorg/teleal/cling/support/model/item/TextItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 146
    :cond_c
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
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
    .line 76
    .local p1, "containers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/container/Container;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLContent;->containers:Ljava/util/List;

    .line 77
    return-void
.end method

.method public setDescMetadata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/DescMeta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "descMetadata":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/DescMeta;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLContent;->descMetadata:Ljava/util/List;

    .line 103
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
    .line 89
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    iput-object p1, p0, Lorg/teleal/cling/support/model/DIDLContent;->items:Ljava/util/List;

    .line 90
    return-void
.end method
