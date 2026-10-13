.class public Lorg/teleal/cling/support/model/container/MusicAlbum;
.super Lorg/teleal/cling/support/model/container/Album;
.source "MusicAlbum.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.album.musicAlbum"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/container/MusicAlbum;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/teleal/cling/support/model/container/Album;-><init>()V

    .line 39
    sget-object v0, Lorg/teleal/cling/support/model/container/MusicAlbum;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicAlbum;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 40
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
    .line 55
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/MusicAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    .line 56
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
            "Lorg/teleal/cling/support/model/item/MusicTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p6, "musicTracks":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/MusicTrack;>;"
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/support/model/container/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    sget-object v0, Lorg/teleal/cling/support/model/container/MusicAlbum;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicAlbum;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 61
    invoke-virtual {p0, p6}, Lorg/teleal/cling/support/model/container/MusicAlbum;->addMusicTracks(Ljava/util/List;)V

    .line 62
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
    .line 47
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/MusicAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    .line 48
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
            "Lorg/teleal/cling/support/model/item/MusicTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p6, "musicTracks":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/MusicTrack;>;"
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/MusicAlbum;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/container/Container;)V
    .locals 0
    .param p1, "other"    # Lorg/teleal/cling/support/model/container/Container;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/container/Album;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 44
    return-void
.end method


# virtual methods
.method public addMusicTracks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/MusicTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "musicTracks":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/MusicTrack;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/teleal/cling/support/model/item/MusicTrack;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/support/model/item/MusicTrack;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicAlbum;->addMusicTracks([Lorg/teleal/cling/support/model/item/MusicTrack;)V

    .line 151
    return-void
.end method

.method public addMusicTracks([Lorg/teleal/cling/support/model/item/MusicTrack;)V
    .locals 4
    .param p1, "musicTracks"    # [Lorg/teleal/cling/support/model/item/MusicTrack;

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 160
    :cond_0
    return-void

    .line 155
    :cond_1
    aget-object v0, p1, v1

    .line 156
    .local v0, "musicTrack":Lorg/teleal/cling/support/model/item/MusicTrack;
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/MusicAlbum;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/teleal/cling/support/model/item/MusicTrack;->setAlbum(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/MusicTrack;

    .line 157
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicAlbum;->addItem(Lorg/teleal/cling/support/model/item/Item;)Lorg/teleal/cling/support/model/container/Container;

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAlbumArtURIs()[Ljava/net/URI;
    .locals 2

    .prologue
    .line 120
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/MusicAlbum;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/URI;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/URI;

    return-object v1
.end method

.method public getArtists()[Lorg/teleal/cling/support/model/PersonWithRole;
    .locals 2

    .prologue
    .line 69
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/MusicAlbum;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/PersonWithRole;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/support/model/PersonWithRole;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/support/model/PersonWithRole;

    return-object v1
.end method

.method public getFirstAlbumArtURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 116
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicAlbum;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public getFirstArtist()Lorg/teleal/cling/support/model/PersonWithRole;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicAlbum;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getFirstGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicAlbum;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstProducer()Lorg/teleal/cling/support/model/Person;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicAlbum;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Person;

    return-object v0
.end method

.method public getGenres()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/MusicAlbum;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getMusicTracks()[Lorg/teleal/cling/support/model/item/MusicTrack;
    .locals 4

    .prologue
    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/MusicTrack;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/container/MusicAlbum;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/teleal/cling/support/model/item/MusicTrack;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/teleal/cling/support/model/item/MusicTrack;

    return-object v2

    .line 143
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/item/Item;

    .line 144
    .local v0, "item":Lorg/teleal/cling/support/model/item/Item;
    instance-of v3, v0, Lorg/teleal/cling/support/model/item/MusicTrack;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/teleal/cling/support/model/item/MusicTrack;

    .end local v0    # "item":Lorg/teleal/cling/support/model/item/Item;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getProducers()[Lorg/teleal/cling/support/model/Person;
    .locals 2

    .prologue
    .line 103
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/MusicAlbum;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Person;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/support/model/Person;

    return-object v1
.end method

.method public getToc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$TOC;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicAlbum;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumArtURIs([Ljava/net/URI;)Lorg/teleal/cling/support/model/container/MusicAlbum;
    .locals 4
    .param p1, "uris"    # [Ljava/net/URI;

    .prologue
    .line 125
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/MusicAlbum;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 126
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 129
    return-object p0

    .line 126
    :cond_0
    aget-object v0, p1, v1

    .line 127
    .local v0, "uri":Ljava/net/URI;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/container/MusicAlbum;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setArtists([Lorg/teleal/cling/support/model/PersonWithRole;)Lorg/teleal/cling/support/model/container/MusicAlbum;
    .locals 4
    .param p1, "artists"    # [Lorg/teleal/cling/support/model/PersonWithRole;

    .prologue
    .line 74
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/MusicAlbum;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 75
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 78
    return-object p0

    .line 75
    :cond_0
    aget-object v0, p1, v1

    .line 76
    .local v0, "artist":Lorg/teleal/cling/support/model/PersonWithRole;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/container/MusicAlbum;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setGenres([Ljava/lang/String;)Lorg/teleal/cling/support/model/container/MusicAlbum;
    .locals 4
    .param p1, "genres"    # [Ljava/lang/String;

    .prologue
    .line 91
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/MusicAlbum;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 92
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 95
    return-object p0

    .line 92
    :cond_0
    aget-object v0, p1, v1

    .line 93
    .local v0, "genre":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/container/MusicAlbum;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setProducers([Lorg/teleal/cling/support/model/Person;)Lorg/teleal/cling/support/model/container/MusicAlbum;
    .locals 4
    .param p1, "persons"    # [Lorg/teleal/cling/support/model/Person;

    .prologue
    .line 108
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/MusicAlbum;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 109
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 112
    return-object p0

    .line 109
    :cond_0
    aget-object v0, p1, v1

    .line 110
    .local v0, "p":Lorg/teleal/cling/support/model/Person;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/container/MusicAlbum;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setToc(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/MusicAlbum;
    .locals 1
    .param p1, "toc"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$TOC;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$TOC;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicAlbum;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 138
    return-object p0
.end method
