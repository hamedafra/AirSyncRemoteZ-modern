.class public Lorg/teleal/cling/support/model/item/PlaylistItem;
.super Lorg/teleal/cling/support/model/item/Item;
.source "PlaylistItem.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.playlistItem"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/PlaylistItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/Item;-><init>()V

    .line 41
    sget-object v0, Lorg/teleal/cling/support/model/item/PlaylistItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 42
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "resource"    # [Lorg/teleal/cling/support/model/Res;

    .prologue
    .line 53
    sget-object v5, Lorg/teleal/cling/support/model/item/PlaylistItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;)V

    .line 54
    if-eqz p5, :cond_0

    .line 55
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "resource"    # [Lorg/teleal/cling/support/model/Res;

    .prologue
    .line 49
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/PlaylistItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 0
    .param p1, "other"    # Lorg/teleal/cling/support/model/item/Item;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/item/Item;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getArtists()[Lorg/teleal/cling/support/model/PersonWithRole;
    .locals 2

    .prologue
    .line 64
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/PlaylistItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 65
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/PersonWithRole;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/support/model/PersonWithRole;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/support/model/PersonWithRole;

    return-object v1
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstArtist()Lorg/teleal/cling/support/model/PersonWithRole;
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getFirstGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGenres()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/PlaylistItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStorageMedium()Lorg/teleal/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 121
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public setArtists([Lorg/teleal/cling/support/model/PersonWithRole;)Lorg/teleal/cling/support/model/item/PlaylistItem;
    .locals 4
    .param p1, "artists"    # [Lorg/teleal/cling/support/model/PersonWithRole;

    .prologue
    .line 69
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/PlaylistItem;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 70
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 73
    return-object p0

    .line 70
    :cond_0
    aget-object v0, p1, v1

    .line 71
    .local v0, "artist":Lorg/teleal/cling/support/model/PersonWithRole;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/PlaylistItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/PlaylistItem;
    .locals 1
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 135
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/PlaylistItem;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 99
    return-object p0
.end method

.method public setGenres([Ljava/lang/String;)Lorg/teleal/cling/support/model/item/PlaylistItem;
    .locals 4
    .param p1, "genres"    # [Ljava/lang/String;

    .prologue
    .line 86
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/PlaylistItem;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 87
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 90
    return-object p0

    .line 87
    :cond_0
    aget-object v0, p1, v1

    .line 88
    .local v0, "genre":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/PlaylistItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/PlaylistItem;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 117
    return-object p0
.end method

.method public setLongDescription(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/PlaylistItem;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 108
    return-object p0
.end method

.method public setStorageMedium(Lorg/teleal/cling/support/model/StorageMedium;)Lorg/teleal/cling/support/model/item/PlaylistItem;
    .locals 1
    .param p1, "storageMedium"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 125
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/teleal/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/PlaylistItem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 126
    return-object p0
.end method
