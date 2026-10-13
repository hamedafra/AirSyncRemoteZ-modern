.class public Lorg/teleal/cling/support/model/item/AudioBook;
.super Lorg/teleal/cling/support/model/item/AudioItem;
.source "AudioBook.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.audioItem.audioBook"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/AudioBook;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>()V

    .line 39
    sget-object v0, Lorg/teleal/cling/support/model/item/AudioBook;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBook;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 40
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/Person;Lorg/teleal/cling/support/model/Person;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "producer"    # Lorg/teleal/cling/support/model/Person;
    .param p6, "contributor"    # Lorg/teleal/cling/support/model/Person;
    .param p7, "date"    # Ljava/lang/String;
    .param p8, "resource"    # [Lorg/teleal/cling/support/model/Res;

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/AudioItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 56
    sget-object v0, Lorg/teleal/cling/support/model/item/AudioBook;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBook;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 57
    if-eqz p5, :cond_0

    .line 58
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-direct {v0, p5}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBook;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 59
    :cond_0
    if-eqz p6, :cond_1

    .line 60
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-direct {v0, p6}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBook;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 61
    :cond_1
    if-eqz p7, :cond_2

    .line 62
    invoke-virtual {p0, p7}, Lorg/teleal/cling/support/model/item/AudioBook;->setDate(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/AudioBook;

    .line 63
    :cond_2
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "producer"    # Ljava/lang/String;
    .param p6, "contributor"    # Ljava/lang/String;
    .param p7, "date"    # Ljava/lang/String;
    .param p8, "resource"    # [Lorg/teleal/cling/support/model/Res;

    .prologue
    .line 51
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/teleal/cling/support/model/Person;

    invoke-direct {v5, p5}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    new-instance v6, Lorg/teleal/cling/support/model/Person;

    invoke-direct {v6, p6}, Lorg/teleal/cling/support/model/Person;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/teleal/cling/support/model/item/AudioBook;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/Person;Lorg/teleal/cling/support/model/Person;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 52
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parent"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "resource"    # [Lorg/teleal/cling/support/model/Res;

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/teleal/cling/support/model/item/AudioBook;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/support/model/Person;Lorg/teleal/cling/support/model/Person;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 48
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
.method public getContributors()[Lorg/teleal/cling/support/model/Person;
    .locals 2

    .prologue
    .line 96
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/AudioBook;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 97
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
    .line 109
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBook;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstContributor()Lorg/teleal/cling/support/model/Person;
    .locals 1

    .prologue
    .line 92
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBook;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstProducer()Lorg/teleal/cling/support/model/Person;
    .locals 1

    .prologue
    .line 75
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBook;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Person;

    return-object v0
.end method

.method public getProducers()[Lorg/teleal/cling/support/model/Person;
    .locals 2

    .prologue
    .line 79
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/AudioBook;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/Person;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/support/model/Person;

    return-object v1
.end method

.method public getStorageMedium()Lorg/teleal/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBook;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public setContributors([Lorg/teleal/cling/support/model/Person;)Lorg/teleal/cling/support/model/item/AudioBook;
    .locals 4
    .param p1, "contributors"    # [Lorg/teleal/cling/support/model/Person;

    .prologue
    .line 101
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/AudioBook;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 102
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 105
    return-object p0

    .line 102
    :cond_0
    aget-object v0, p1, v1

    .line 103
    .local v0, "p":Lorg/teleal/cling/support/model/Person;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/AudioBook;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/AudioBook;
    .locals 1
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBook;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 114
    return-object p0
.end method

.method public setProducers([Lorg/teleal/cling/support/model/Person;)Lorg/teleal/cling/support/model/item/AudioBook;
    .locals 4
    .param p1, "persons"    # [Lorg/teleal/cling/support/model/Person;

    .prologue
    .line 84
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/AudioBook;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 85
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 88
    return-object p0

    .line 85
    :cond_0
    aget-object v0, p1, v1

    .line 86
    .local v0, "p":Lorg/teleal/cling/support/model/Person;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$PRODUCER;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/AudioBook;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setStorageMedium(Lorg/teleal/cling/support/model/StorageMedium;)Lorg/teleal/cling/support/model/item/AudioBook;
    .locals 1
    .param p1, "storageMedium"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 70
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/teleal/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/AudioBook;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 71
    return-object p0
.end method
