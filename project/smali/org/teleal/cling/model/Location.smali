.class public Lorg/teleal/cling/model/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field protected networkAddress:Lorg/teleal/cling/model/NetworkAddress;

.field protected path:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/NetworkAddress;Ljava/net/URI;)V
    .locals 0
    .param p1, "networkAddress"    # Lorg/teleal/cling/model/NetworkAddress;
    .param p2, "path"    # Ljava/net/URI;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/teleal/cling/model/Location;->networkAddress:Lorg/teleal/cling/model/NetworkAddress;

    .line 44
    iput-object p2, p0, Lorg/teleal/cling/model/Location;->path:Ljava/net/URI;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    if-ne p0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 60
    check-cast v0, Lorg/teleal/cling/model/Location;

    .line 62
    .local v0, "location":Lorg/teleal/cling/model/Location;
    iget-object v3, p0, Lorg/teleal/cling/model/Location;->networkAddress:Lorg/teleal/cling/model/NetworkAddress;

    iget-object v4, v0, Lorg/teleal/cling/model/Location;->networkAddress:Lorg/teleal/cling/model/NetworkAddress;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/NetworkAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 63
    :cond_4
    iget-object v3, p0, Lorg/teleal/cling/model/Location;->path:Ljava/net/URI;

    iget-object v4, v0, Lorg/teleal/cling/model/Location;->path:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getNetworkAddress()Lorg/teleal/cling/model/NetworkAddress;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/teleal/cling/model/Location;->networkAddress:Lorg/teleal/cling/model/NetworkAddress;

    return-object v0
.end method

.method public getPath()Ljava/net/URI;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/teleal/cling/model/Location;->path:Ljava/net/URI;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lorg/teleal/cling/model/Location;->networkAddress:Lorg/teleal/cling/model/NetworkAddress;

    invoke-virtual {v0}, Lorg/teleal/cling/model/NetworkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/model/Location;->networkAddress:Lorg/teleal/cling/model/NetworkAddress;

    invoke-virtual {v1}, Lorg/teleal/cling/model/NetworkAddress;->getPort()I

    move-result v1

    iget-object v2, p0, Lorg/teleal/cling/model/Location;->path:Ljava/net/URI;

    invoke-static {v0, v1, v2}, Lorg/teleal/common/util/URIUtil;->createAbsoluteURL(Ljava/net/InetAddress;ILjava/net/URI;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lorg/teleal/cling/model/Location;->networkAddress:Lorg/teleal/cling/model/NetworkAddress;

    invoke-virtual {v1}, Lorg/teleal/cling/model/NetworkAddress;->hashCode()I

    move-result v0

    .line 71
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/model/Location;->path:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 72
    return v0
.end method
