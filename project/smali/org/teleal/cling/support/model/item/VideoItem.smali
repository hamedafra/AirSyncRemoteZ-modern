.class public Lorg/teleal/cling/support/model/item/VideoItem;
.super Lorg/teleal/cling/support/model/item/Item;
.source "VideoItem.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.videoItem"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/VideoItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/Item;-><init>()V

    .line 40
    sget-object v0, Lorg/teleal/cling/support/model/item/VideoItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 41
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
    .line 52
    sget-object v5, Lorg/teleal/cling/support/model/item/VideoItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;)V

    .line 53
    if-eqz p5, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/item/VideoItem;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
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
    .line 48
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 0
    .param p1, "other"    # Lorg/teleal/cling/support/model/item/Item;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/item/Item;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getActors()[Lorg/teleal/cling/support/model/PersonWithRole;
    .locals 2

    .prologue
    .line 124
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ACTOR;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/VideoItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/PersonWithRole;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/support/model/PersonWithRole;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/support/model/PersonWithRole;

    return-object v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDirectors()[Lorg/teleal/cling/support/model/Person;
    .locals 2

    .prologue
    .line 141
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/VideoItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Person;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/support/model/Person;

    return-object v1
.end method

.method public getFirstActor()Lorg/teleal/cling/support/model/PersonWithRole;
    .locals 1

    .prologue
    .line 120
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ACTOR;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getFirstDirector()Lorg/teleal/cling/support/model/Person;
    .locals 1

    .prologue
    .line 137
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstProducer()Lorg/teleal/cling/support/model/Person;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstPublisher()Lorg/teleal/cling/support/model/Person;
    .locals 1

    .prologue
    .line 154
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstRelation()Ljava/net/URI;
    .locals 1

    .prologue
    .line 180
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public getGenres()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/VideoItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 64
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
    .line 171
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProducers()[Lorg/teleal/cling/support/model/Person;
    .locals 2

    .prologue
    .line 98
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/VideoItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Person;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/support/model/Person;

    return-object v1
.end method

.method public getPublishers()[Lorg/teleal/cling/support/model/Person;
    .locals 2

    .prologue
    .line 158
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/VideoItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Person;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/support/model/Person;

    return-object v1
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RATING;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRelations()[Ljava/net/URI;
    .locals 2

    .prologue
    .line 184
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/VideoItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/URI;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/URI;

    return-object v1
.end method

.method public setActors([Lorg/teleal/cling/support/model/PersonWithRole;)Lorg/teleal/cling/support/model/item/VideoItem;
    .locals 4
    .param p1, "persons"    # [Lorg/teleal/cling/support/model/PersonWithRole;

    .prologue
    .line 129
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ACTOR;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/VideoItem;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 130
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 133
    return-object p0

    .line 130
    :cond_0
    aget-object v0, p1, v1

    .line 131
    .local v0, "p":Lorg/teleal/cling/support/model/PersonWithRole;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ACTOR;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ACTOR;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/VideoItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/VideoItem;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 81
    return-object p0
.end method

.method public setDirectors([Lorg/teleal/cling/support/model/Person;)Lorg/teleal/cling/support/model/item/VideoItem;
    .locals 4
    .param p1, "persons"    # [Lorg/teleal/cling/support/model/Person;

    .prologue
    .line 146
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/VideoItem;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 147
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 150
    return-object p0

    .line 147
    :cond_0
    aget-object v0, p1, v1

    .line 148
    .local v0, "p":Lorg/teleal/cling/support/model/Person;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DIRECTOR;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/VideoItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setGenres([Ljava/lang/String;)Lorg/teleal/cling/support/model/item/VideoItem;
    .locals 4
    .param p1, "genres"    # [Ljava/lang/String;

    .prologue
    .line 68
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/VideoItem;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 69
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 72
    return-object p0

    .line 69
    :cond_0
    aget-object v0, p1, v1

    .line 70
    .local v0, "genre":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/VideoItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/VideoItem;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 176
    return-object p0
.end method

.method public setLongDescription(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/VideoItem;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 90
    return-object p0
.end method

.method public setProducers([Lorg/teleal/cling/support/model/Person;)Lorg/teleal/cling/support/model/item/VideoItem;
    .locals 4
    .param p1, "persons"    # [Lorg/teleal/cling/support/model/Person;

    .prologue
    .line 103
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/VideoItem;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 104
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 107
    return-object p0

    .line 104
    :cond_0
    aget-object v0, p1, v1

    .line 105
    .local v0, "p":Lorg/teleal/cling/support/model/Person;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/VideoItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setPublishers([Lorg/teleal/cling/support/model/Person;)Lorg/teleal/cling/support/model/item/VideoItem;
    .locals 4
    .param p1, "publishers"    # [Lorg/teleal/cling/support/model/Person;

    .prologue
    .line 163
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/VideoItem;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 164
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 167
    return-object p0

    .line 164
    :cond_0
    aget-object v0, p1, v1

    .line 165
    .local v0, "publisher":Lorg/teleal/cling/support/model/Person;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/VideoItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setRating(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/VideoItem;
    .locals 1
    .param p1, "rating"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RATING;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$RATING;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/VideoItem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 116
    return-object p0
.end method

.method public setRelations([Ljava/net/URI;)Lorg/teleal/cling/support/model/item/VideoItem;
    .locals 4
    .param p1, "relations"    # [Ljava/net/URI;

    .prologue
    .line 189
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/VideoItem;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 190
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 193
    return-object p0

    .line 190
    :cond_0
    aget-object v0, p1, v1

    .line 191
    .local v0, "relation":Ljava/net/URI;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/VideoItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
