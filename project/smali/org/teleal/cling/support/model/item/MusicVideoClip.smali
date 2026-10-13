.class public Lorg/teleal/cling/support/model/item/MusicVideoClip;
.super Lorg/teleal/cling/support/model/item/VideoItem;
.source "MusicVideoClip.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.videoItem.musicVideoClip"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/item/MusicVideoClip;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>()V

    .line 39
    sget-object v0, Lorg/teleal/cling/support/model/item/MusicVideoClip;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 40
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
    .line 51
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 52
    sget-object v0, Lorg/teleal/cling/support/model/item/MusicVideoClip;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 53
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

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/item/MusicVideoClip;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/teleal/cling/support/model/Res;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;)V
    .locals 0
    .param p1, "other"    # Lorg/teleal/cling/support/model/item/Item;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/item/VideoItem;-><init>(Lorg/teleal/cling/support/model/item/Item;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtists()[Lorg/teleal/cling/support/model/PersonWithRole;
    .locals 2

    .prologue
    .line 60
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 61
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
    .line 129
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 130
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
    .line 142
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstArtist()Lorg/teleal/cling/support/model/PersonWithRole;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getFirstContributor()Lorg/teleal/cling/support/model/Person;
    .locals 1

    .prologue
    .line 125
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstScheduledEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstScheduledStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledEndTimes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 113
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
    .line 95
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 96
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
    .line 73
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/MusicVideoClip;
    .locals 1
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 87
    return-object p0
.end method

.method public setArtists([Lorg/teleal/cling/support/model/PersonWithRole;)Lorg/teleal/cling/support/model/item/MusicVideoClip;
    .locals 4
    .param p1, "artists"    # [Lorg/teleal/cling/support/model/PersonWithRole;

    .prologue
    .line 65
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 66
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 69
    return-object p0

    .line 66
    :cond_0
    aget-object v0, p1, v1

    .line 67
    .local v0, "artist":Lorg/teleal/cling/support/model/PersonWithRole;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/teleal/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setContributors([Lorg/teleal/cling/support/model/Person;)Lorg/teleal/cling/support/model/item/MusicVideoClip;
    .locals 4
    .param p1, "contributors"    # [Lorg/teleal/cling/support/model/Person;

    .prologue
    .line 134
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 135
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 138
    return-object p0

    .line 135
    :cond_0
    aget-object v0, p1, v1

    .line 136
    .local v0, "p":Lorg/teleal/cling/support/model/Person;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/teleal/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;)Lorg/teleal/cling/support/model/item/MusicVideoClip;
    .locals 1
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 147
    return-object p0
.end method

.method public setScheduledEndTimes([Ljava/lang/String;)Lorg/teleal/cling/support/model/item/MusicVideoClip;
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 117
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 118
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 121
    return-object p0

    .line 118
    :cond_0
    aget-object v0, p1, v1

    .line 119
    .local v0, "s":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_END_TIME;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setScheduledStartTimes([Ljava/lang/String;)Lorg/teleal/cling/support/model/item/MusicVideoClip;
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 100
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 101
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 104
    return-object p0

    .line 101
    :cond_0
    aget-object v0, p1, v1

    .line 102
    .local v0, "s":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$SCHEDULED_START_TIME;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setStorageMedium(Lorg/teleal/cling/support/model/StorageMedium;)Lorg/teleal/cling/support/model/item/MusicVideoClip;
    .locals 1
    .param p1, "storageMedium"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 77
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/teleal/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/item/MusicVideoClip;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 78
    return-object p0
.end method
