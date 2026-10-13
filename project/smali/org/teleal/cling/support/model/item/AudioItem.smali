.class public Lorg/teleal/cling/support/model/item/AudioItem;
.super Lorg/teleal/cling/support/model/item/Item;
.source "AudioItem.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.audioItem"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/AudioItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/Item;-><init>()V

    .line 39
    sget-object v0, Lorg/teleal/cling/support/model/item/AudioItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioItem;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 40
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
    .line 51
    sget-object v5, Lorg/teleal/cling/support/model/item/AudioItem;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/DIDLObject$Class;)V

    .line 52
    if-eqz p5, :cond_0

    .line 53
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/item/AudioItem;->getResources()Ljava/util/List;

    move-result-object v0

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
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
    .line 47
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 0
    .param p1, "other"    # Lorg/teleal/cling/support/model/item/Item;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/item/Item;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstPublisher()Lorg/teleal/cling/support/model/Person;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstRelation()Ljava/net/URI;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public getFirstRights()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGenres()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/AudioItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 63
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
    .line 127
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPublishers()[Lorg/teleal/cling/support/model/Person;
    .locals 2

    .prologue
    .line 97
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/AudioItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 98
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Person;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/support/model/Person;

    return-object v1
.end method

.method public getRelations()[Ljava/net/URI;
    .locals 2

    .prologue
    .line 114
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/AudioItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/URI;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/URI;

    return-object v1
.end method

.method public getRights()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/AudioItem;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 141
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public setDescription(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/AudioItem;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioItem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 80
    return-object p0
.end method

.method public setGenres([Ljava/lang/String;)Lorg/teleal/cling/support/model/item/AudioItem;
    .locals 4
    .param p1, "genres"    # [Ljava/lang/String;

    .prologue
    .line 67
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/AudioItem;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 68
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 71
    return-object p0

    .line 68
    :cond_0
    aget-object v0, p1, v1

    .line 69
    .local v0, "genre":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/AudioItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/AudioItem;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$LANGUAGE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioItem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 132
    return-object p0
.end method

.method public setLongDescription(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/AudioItem;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$LONG_DESCRIPTION;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioItem;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 89
    return-object p0
.end method

.method public setPublishers([Lorg/teleal/cling/support/model/Person;)Lorg/teleal/cling/support/model/item/AudioItem;
    .locals 4
    .param p1, "publishers"    # [Lorg/teleal/cling/support/model/Person;

    .prologue
    .line 102
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/AudioItem;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 103
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 106
    return-object p0

    .line 103
    :cond_0
    aget-object v0, p1, v1

    .line 104
    .local v0, "publisher":Lorg/teleal/cling/support/model/Person;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$PUBLISHER;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/AudioItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setRelations([Ljava/net/URI;)Lorg/teleal/cling/support/model/item/AudioItem;
    .locals 4
    .param p1, "relations"    # [Ljava/net/URI;

    .prologue
    .line 119
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/AudioItem;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 120
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 123
    return-object p0

    .line 120
    :cond_0
    aget-object v0, p1, v1

    .line 121
    .local v0, "relation":Ljava/net/URI;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RELATION;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/AudioItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setRights([Ljava/lang/String;)Lorg/teleal/cling/support/model/item/AudioItem;
    .locals 4
    .param p1, "rights"    # [Ljava/lang/String;

    .prologue
    .line 145
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/AudioItem;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 146
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 149
    return-object p0

    .line 146
    :cond_0
    aget-object v0, p1, v1

    .line 147
    .local v0, "right":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$RIGHTS;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/AudioItem;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
