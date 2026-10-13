.class public Lorg/teleal/cling/model/types/HostPort;
.super Ljava/lang/Object;
.source "HostPort.java"


# instance fields
.field private host:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/teleal/cling/model/types/HostPort;->host:Ljava/lang/String;

    .line 35
    iput p2, p0, Lorg/teleal/cling/model/types/HostPort;->port:I

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 57
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

    .line 59
    check-cast v0, Lorg/teleal/cling/model/types/HostPort;

    .line 61
    .local v0, "hostPort":Lorg/teleal/cling/model/types/HostPort;
    iget v3, p0, Lorg/teleal/cling/model/types/HostPort;->port:I

    iget v4, v0, Lorg/teleal/cling/model/types/HostPort;->port:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 62
    :cond_4
    iget-object v3, p0, Lorg/teleal/cling/model/types/HostPort;->host:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/model/types/HostPort;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/teleal/cling/model/types/HostPort;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/teleal/cling/model/types/HostPort;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lorg/teleal/cling/model/types/HostPort;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 70
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/teleal/cling/model/types/HostPort;->port:I

    add-int v0, v1, v2

    .line 71
    return v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/teleal/cling/model/types/HostPort;->host:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 51
    iput p1, p0, Lorg/teleal/cling/model/types/HostPort;->port:I

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/teleal/cling/model/types/HostPort;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/teleal/cling/model/types/HostPort;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
