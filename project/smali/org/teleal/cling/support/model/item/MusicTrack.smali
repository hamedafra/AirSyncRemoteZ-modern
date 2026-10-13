.class public Lorg/teleal/cling/support/model/item/MusicTrack;
.super Lorg/teleal/cling/support/model/item/AudioItem;
.source "MusicTrack.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.audioItem.musicTrack"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/MusicTrack;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>()V

    .line 39
    sget-object v0, Lorg/teleal/cling/support/model/item/MusicTrack;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 40
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "album"    # Ljava/lang/String;
    .param p6, "artist"    # Ljava/lang/String;
    .param p7, "resource"    # [Lorg/teleal/cling/support/model/Res;

    .prologue
    .line 55
    new-instance v6, Lorg/teleal/cling/support/model/PersonWithRole;

    invoke-direct {v6, p6}, Lorg/teleal/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/support/model/item/MusicTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/PersonWithRole;[Lorg/teleal/cling/support/model/Res;)V

    .line 56
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/PersonWithRole;[Lorg/teleal/cling/support/model/Res;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "album"    # Ljava/lang/String;
    .param p6, "artist"    # Lorg/teleal/cling/support/model/PersonWithRole;
    .param p7, "resource"    # [Lorg/teleal/cling/support/model/Res;

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 60
    sget-object v0, Lorg/teleal/cling/support/model/item/MusicTrack;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 61
    if-eqz p5, :cond_0

    .line 62
    invoke-virtual {p0, p5}, Lorg/teleal/cling/support/model/item/MusicTrack;->setAlbum(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/MusicTrack;

    .line 63
    :cond_0
    if-eqz p6, :cond_1

    .line 64
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-direct {v0, p6}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 65
    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "album"    # Ljava/lang/String;
    .param p6, "artist"    # Ljava/lang/String;
    .param p7, "resource"    # [Lorg/teleal/cling/support/model/Res;

    .prologue
    .line 47
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/support/model/item/MusicTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 48
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/PersonWithRole;[Lorg/teleal/cling/support/model/Res;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "album"    # Ljava/lang/String;
    .param p6, "artist"    # Lorg/teleal/cling/support/model/PersonWithRole;
    .param p7, "resource"    # [Lorg/teleal/cling/support/model/Res;

    .prologue
    .line 51
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/support/model/item/MusicTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/PersonWithRole;[Lorg/teleal/cling/support/model/Res;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 0
    .param p1, "other"    # Lorg/teleal/cling/support/model/item/Item;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtists()[Lorg/teleal/cling/support/model/PersonWithRole;
    .locals 2

    .prologue
    .line 72
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicTrack;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/PersonWithRole;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/support/model/PersonWithRole;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/support/model/PersonWithRole;

    return-object v1
.end method

.method public getContributors()[Lorg/teleal/cling/support/model/Person;
    .locals 2

    .prologue
    .line 133
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicTrack;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Person;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/support/model/Person;

    return-object v1
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstArtist()Lorg/teleal/cling/support/model/PersonWithRole;
    .locals 1

    .prologue
    .line 68
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getFirstContributor()Lorg/teleal/cling/support/model/Person;
    .locals 1

    .prologue
    .line 129
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstPlaylist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTrackNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getPlaylists()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicTrack;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getStorageMedium()Lorg/teleal/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 120
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/MusicTrack;
    .locals 1
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 90
    return-object p0
.end method

.method public setArtists([Lorg/teleal/cling/support/model/PersonWithRole;)Lorg/teleal/cling/support/model/item/MusicTrack;
    .locals 4
    .param p1, "artists"    # [Lorg/teleal/cling/support/model/PersonWithRole;

    .prologue
    .line 77
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicTrack;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 78
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 81
    return-object p0

    .line 78
    :cond_0
    aget-object v0, p1, v1

    .line 79
    .local v0, "artist":Lorg/teleal/cling/support/model/PersonWithRole;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/MusicTrack;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setContributors([Lorg/teleal/cling/support/model/Person;)Lorg/teleal/cling/support/model/item/MusicTrack;
    .locals 4
    .param p1, "contributors"    # [Lorg/teleal/cling/support/model/Person;

    .prologue
    .line 138
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicTrack;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 139
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 142
    return-object p0

    .line 139
    :cond_0
    aget-object v0, p1, v1

    .line 140
    .local v0, "p":Lorg/teleal/cling/support/model/Person;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/MusicTrack;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/MusicTrack;
    .locals 1
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 151
    return-object p0
.end method

.method public setOriginalTrackNumber(Ljava/lang/Integer;)Lorg/teleal/cling/support/model/item/MusicTrack;
    .locals 1
    .param p1, "number"    # Ljava/lang/Integer;

    .prologue
    .line 98
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 99
    return-object p0
.end method

.method public setPlaylists([Ljava/lang/String;)Lorg/teleal/cling/support/model/item/MusicTrack;
    .locals 4
    .param p1, "playlists"    # [Ljava/lang/String;

    .prologue
    .line 112
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicTrack;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 113
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 116
    return-object p0

    .line 113
    :cond_0
    aget-object v0, p1, v1

    .line 114
    .local v0, "s":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/MusicTrack;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setStorageMedium(Lorg/teleal/cling/support/model/StorageMedium;)Lorg/teleal/cling/support/model/item/MusicTrack;
    .locals 1
    .param p1, "storageMedium"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 124
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/teleal/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicTrack;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 125
    return-object p0
.end method
