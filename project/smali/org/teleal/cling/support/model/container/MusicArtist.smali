.class public Lorg/teleal/cling/support/model/container/MusicArtist;
.super Lorg/teleal/cling/support/model/container/PersonContainer;
.source "MusicArtist.java"


# static fields
.field public static final CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Class;

    const-string v1, "object.container.person.musicArtist"

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/container/MusicArtist;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/teleal/cling/support/model/container/PersonContainer;-><init>()V

    .line 33
    sget-object v0, Lorg/teleal/cling/support/model/container/MusicArtist;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicArtist;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "creator"    # Ljava/lang/String;
    .param p5, "childCount"    # Ljava/lang/Integer;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/support/model/container/PersonContainer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    sget-object v0, Lorg/teleal/cling/support/model/container/MusicArtist;->CLASS:Lorg/teleal/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicArtist;->setClazz(Lorg/teleal/cling/support/model/DIDLObject$Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 47
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
    .line 41
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/container/MusicArtist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/container/Container;)V
    .locals 0
    .param p1, "other"    # Lorg/teleal/cling/support/model/container/Container;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/model/container/PersonContainer;-><init>(Lorg/teleal/cling/support/model/container/Container;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getArtistDiscographyURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST_DISCO_URI;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicArtist;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    return-object v0
.end method

.method public getFirstGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicArtist;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGenres()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/MusicArtist;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public setArtistDiscographyURI(Ljava/net/URI;)Lorg/teleal/cling/support/model/container/MusicArtist;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 71
    new-instance v0, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST_DISCO_URI;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ARTIST_DISCO_URI;-><init>(Ljava/net/URI;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/container/MusicArtist;->replaceFirstProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 72
    return-object p0
.end method

.method public setGenres([Ljava/lang/String;)Lorg/teleal/cling/support/model/container/MusicArtist;
    .locals 4
    .param p1, "genres"    # [Ljava/lang/String;

    .prologue
    .line 59
    const-class v1, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/support/model/container/MusicArtist;->removeProperties(Ljava/lang/Class;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 60
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 63
    return-object p0

    .line 60
    :cond_0
    aget-object v0, p1, v1

    .line 61
    .local v0, "genre":Ljava/lang/String;
    new-instance v3, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;

    invoke-direct {v3, v0}, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$GENRE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/model/container/MusicArtist;->addProperty(Lorg/teleal/cling/support/model/DIDLObject$Property;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
