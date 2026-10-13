.class public Lorg/teleal/cling/support/model/container/PlaylistContainer;
.super Lorg/teleal/cling/support/model/container/Container;
.source "PlaylistContainer.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.playlist"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/container/PlaylistContainer;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/teleal/cling/support/model/container/Container;-><init>()V

    .line 37
    sget-object v0, Lorg/teleal/cling/support/model/container/PlaylistContainer;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 38
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
    .line 49
    sget-object v5, Lorg/teleal/cling/support/model/container/PlaylistContainer;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/model/container/Container;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;Ljava/lang/Integer;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "childCount"    # Ljava/lang/Integer;

    .prologue
    .line 45
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/container/PlaylistContainer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/container/Container;)V
    .locals 0
    .param p1, "other"    # Lorg/teleal/cling/support/model/container/Container;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/container/Container;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getArtists()[Lorg/teleal/cling/support/model/PersonWithRole;
    .locals 2

    .prologue
    .line 57
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 58
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
    .line 161
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 162
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
    .line 131
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstArtist()Lorg/teleal/cling/support/model/PersonWithRole;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getFirstContributor()Lorg/teleal/cling/support/model/Person;
    .locals 1

    .prologue
    .line 157
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstProducer()Lorg/teleal/cling/support/model/Person;
    .locals 1

    .prologue
    .line 105
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstRights()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGenres()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 75
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
    .line 174
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProducers()[Lorg/teleal/cling/support/model/Person;
    .locals 2

    .prologue
    .line 109
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 110
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Person;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/support/model/Person;

    return-object v1
.end method

.method public getRights()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 145
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
    .line 122
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public setArtists([Lorg/teleal/cling/support/model/PersonWithRole;)Lorg/teleal/cling/support/model/container/PlaylistContainer;
    .locals 4
    .param p1, "artists"    # [Lorg/teleal/cling/support/model/PersonWithRole;

    .prologue
    .line 62
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 63
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 66
    return-object p0

    .line 63
    :cond_0
    aget-object v0, p1, v1

    .line 64
    .local v0, "artist":Lorg/teleal/cling/support/model/PersonWithRole;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setContributors([Lorg/teleal/cling/support/model/Person;)Lorg/teleal/cling/support/model/container/PlaylistContainer;
    .locals 4
    .param p1, "contributors"    # [Lorg/teleal/cling/support/model/Person;

    .prologue
    .line 166
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 167
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 170
    return-object p0

    .line 167
    :cond_0
    aget-object v0, p1, v1

    .line 168
    .local v0, "p":Lorg/teleal/cling/support/model/Person;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/PlaylistContainer;
    .locals 1
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 136
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/PlaylistContainer;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 92
    return-object p0
.end method

.method public setGenres([Ljava/lang/String;)Lorg/teleal/cling/support/model/container/PlaylistContainer;
    .locals 4
    .param p1, "genres"    # [Ljava/lang/String;

    .prologue
    .line 79
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 80
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 83
    return-object p0

    .line 80
    :cond_0
    aget-object v0, p1, v1

    .line 81
    .local v0, "genre":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/PlaylistContainer;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 179
    return-object p0
.end method

.method public setLongDescription(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/PlaylistContainer;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 101
    return-object p0
.end method

.method public setProducers([Lorg/teleal/cling/support/model/Person;)Lorg/teleal/cling/support/model/container/PlaylistContainer;
    .locals 4
    .param p1, "persons"    # [Lorg/teleal/cling/support/model/Person;

    .prologue
    .line 114
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 115
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 118
    return-object p0

    .line 115
    :cond_0
    aget-object v0, p1, v1

    .line 116
    .local v0, "p":Lorg/teleal/cling/support/model/Person;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setRights([Ljava/lang/String;)Lorg/teleal/cling/support/model/container/PlaylistContainer;
    .locals 4
    .param p1, "rights"    # [Ljava/lang/String;

    .prologue
    .line 149
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 150
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 153
    return-object p0

    .line 150
    :cond_0
    aget-object v0, p1, v1

    .line 151
    .local v0, "right":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setStorageMedium(Lorg/teleal/cling/support/model/StorageMedium;)Lorg/teleal/cling/support/model/container/PlaylistContainer;
    .locals 1
    .param p1, "storageMedium"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 126
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/teleal/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/PlaylistContainer;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 127
    return-object p0
.end method
