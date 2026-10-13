.class public Lorg/teleal/cling/support/model/item/Movie;
.super Lorg/teleal/cling/support/model/item/VideoItem;
.source "Movie.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.videoItem.movie"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/Movie;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>()V

    .line 36
    sget-object v0, Lorg/teleal/cling/support/model/item/Movie;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/Movie;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 37
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "resource"    # [Lorg/teleal/cling/support/model/Res;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 49
    sget-object v0, Lorg/teleal/cling/support/model/item/Movie;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/Movie;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 50
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
    .line 44
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/Movie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 0
    .param p1, "other"    # Lorg/teleal/cling/support/model/item/Item;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getChannelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/Movie;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDVDRegionCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/Movie;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getFirstScheduledEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/Movie;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstScheduledStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/Movie;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledEndTimes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/Movie;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getScheduledStartTimes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/Movie;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 85
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
    .line 53
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/Movie;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public setChannelName(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/Movie;
    .locals 1
    .param p1, "channelName"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$CHANNEL_NAME;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/Movie;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 76
    return-object p0
.end method

.method public setDVDRegionCode(Ljava/lang/Integer;)Lorg/teleal/cling/support/model/item/Movie;
    .locals 1
    .param p1, "DVDRegionCode"    # Ljava/lang/Integer;

    .prologue
    .line 66
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$DVD_REGION_CODE;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/Movie;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 67
    return-object p0
.end method

.method public setScheduledEndTimes([Ljava/lang/String;)Lorg/teleal/cling/support/model/item/Movie;
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 106
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/Movie;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 107
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 110
    return-object p0

    .line 107
    :cond_0
    aget-object v0, p1, v1

    .line 108
    .local v0, "s":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/Movie;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setScheduledStartTimes([Ljava/lang/String;)Lorg/teleal/cling/support/model/item/Movie;
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 89
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/Movie;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 90
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 93
    return-object p0

    .line 90
    :cond_0
    aget-object v0, p1, v1

    .line 91
    .local v0, "s":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/Movie;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setStorageMedium(Lorg/teleal/cling/support/model/StorageMedium;)Lorg/teleal/cling/support/model/item/Movie;
    .locals 1
    .param p1, "storageMedium"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 57
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/teleal/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/Movie;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 58
    return-object p0
.end method
