.class public Lorg/teleal/cling/model/NetworkAddress;
.super Ljava/lang/Object;
.source "NetworkAddress.java"


# instance fields
.field protected address:Ljava/net/InetAddress;

.field protected hardwareAddress:[B

.field protected port:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I[B)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I[B)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "hardwareAddress"    # [B

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/teleal/cling/model/NetworkAddress;->address:Ljava/net/InetAddress;

    .line 40
    iput p2, p0, Lorg/teleal/cling/model/NetworkAddress;->port:I

    .line 41
    iput-object p3, p0, Lorg/teleal/cling/model/NetworkAddress;->hardwareAddress:[B

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 59
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

    .line 61
    check-cast v0, Lorg/teleal/cling/model/NetworkAddress;

    .line 63
    .local v0, "that":Lorg/teleal/cling/model/NetworkAddress;
    iget v3, p0, Lorg/teleal/cling/model/NetworkAddress;->port:I

    iget v4, v0, Lorg/teleal/cling/model/NetworkAddress;->port:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 64
    :cond_4
    iget-object v3, p0, Lorg/teleal/cling/model/NetworkAddress;->address:Ljava/net/InetAddress;

    iget-object v4, v0, Lorg/teleal/cling/model/NetworkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 65
    :cond_5
    iget-object v3, p0, Lorg/teleal/cling/model/NetworkAddress;->hardwareAddress:[B

    iget-object v4, v0, Lorg/teleal/cling/model/NetworkAddress;->hardwareAddress:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/teleal/cling/model/NetworkAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getHardwareAddress()[B
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/teleal/cling/model/NetworkAddress;->hardwareAddress:[B

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/teleal/cling/model/NetworkAddress;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lorg/teleal/cling/model/NetworkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    .line 73
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/teleal/cling/model/NetworkAddress;->port:I

    add-int v0, v1, v2

    .line 74
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lorg/teleal/cling/model/NetworkAddress;->hardwareAddress:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/teleal/cling/model/NetworkAddress;->hardwareAddress:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 75
    return v0

    .line 74
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
