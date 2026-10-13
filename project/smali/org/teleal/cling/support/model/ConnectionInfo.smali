.class public Lorg/teleal/cling/support/model/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/model/ConnectionInfo$Direction;,
        Lorg/teleal/cling/support/model/ConnectionInfo$Status;
    }
.end annotation


# instance fields
.field protected final avTransportID:I

.field protected final connectionID:I

.field protected connectionStatus:Lorg/teleal/cling/support/model/ConnectionInfo$Status;

.field protected final direction:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

.field protected final peerConnectionID:I

.field protected final peerConnectionManager:Lorg/teleal/cling/model/ServiceReference;

.field protected final protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

.field protected final rcsID:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 83
    const/4 v6, -0x1

    sget-object v7, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->Input:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    sget-object v8, Lorg/teleal/cling/support/model/ConnectionInfo$Status;->Unknown:Lorg/teleal/cling/support/model/ConnectionInfo$Status;

    move-object v0, p0

    move v2, v1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v8}, Lorg/teleal/cling/support/model/ConnectionInfo;-><init>(IIILorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/model/ServiceReference;ILorg/teleal/cling/support/model/ConnectionInfo$Direction;Lorg/teleal/cling/support/model/ConnectionInfo$Status;)V

    .line 84
    return-void
.end method

.method public constructor <init>(IIILorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/model/ServiceReference;ILorg/teleal/cling/support/model/ConnectionInfo$Direction;Lorg/teleal/cling/support/model/ConnectionInfo$Status;)V
    .locals 1
    .param p1, "connectionID"    # I
    .param p2, "rcsID"    # I
    .param p3, "avTransportID"    # I
    .param p4, "protocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfo;
    .param p5, "peerConnectionManager"    # Lorg/teleal/cling/model/ServiceReference;
    .param p6, "peerConnectionID"    # I
    .param p7, "direction"    # Lorg/teleal/cling/support/model/ConnectionInfo$Direction;
    .param p8, "connectionStatus"    # Lorg/teleal/cling/support/model/ConnectionInfo$Status;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lorg/teleal/cling/support/model/ConnectionInfo$Status;->Unknown:Lorg/teleal/cling/support/model/ConnectionInfo$Status;

    iput-object v0, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/teleal/cling/support/model/ConnectionInfo$Status;

    .line 92
    iput p1, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->connectionID:I

    .line 93
    iput p2, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->rcsID:I

    .line 94
    iput p3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->avTransportID:I

    .line 95
    iput-object p4, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    .line 96
    iput-object p5, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/teleal/cling/model/ServiceReference;

    .line 97
    iput p6, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->peerConnectionID:I

    .line 98
    iput-object p7, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->direction:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    .line 99
    iput-object p8, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/teleal/cling/support/model/ConnectionInfo$Status;

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    if-ne p0, p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v1

    .line 141
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

    .line 143
    check-cast v0, Lorg/teleal/cling/support/model/ConnectionInfo;

    .line 145
    .local v0, "that":Lorg/teleal/cling/support/model/ConnectionInfo;
    iget v3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->avTransportID:I

    iget v4, v0, Lorg/teleal/cling/support/model/ConnectionInfo;->avTransportID:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 146
    :cond_4
    iget v3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->connectionID:I

    iget v4, v0, Lorg/teleal/cling/support/model/ConnectionInfo;->connectionID:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 147
    :cond_5
    iget v3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->peerConnectionID:I

    iget v4, v0, Lorg/teleal/cling/support/model/ConnectionInfo;->peerConnectionID:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 148
    :cond_6
    iget v3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->rcsID:I

    iget v4, v0, Lorg/teleal/cling/support/model/ConnectionInfo;->rcsID:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 149
    :cond_7
    iget-object v3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/teleal/cling/support/model/ConnectionInfo$Status;

    iget-object v4, v0, Lorg/teleal/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/teleal/cling/support/model/ConnectionInfo$Status;

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 150
    :cond_8
    iget-object v3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->direction:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    iget-object v4, v0, Lorg/teleal/cling/support/model/ConnectionInfo;->direction:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 151
    :cond_9
    iget-object v3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/teleal/cling/model/ServiceReference;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/teleal/cling/model/ServiceReference;

    iget-object v4, v0, Lorg/teleal/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/teleal/cling/model/ServiceReference;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/ServiceReference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    .line 152
    goto :goto_0

    .line 151
    :cond_b
    iget-object v3, v0, Lorg/teleal/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/teleal/cling/model/ServiceReference;

    if-nez v3, :cond_a

    .line 153
    :cond_c
    iget-object v3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    iget-object v4, v0, Lorg/teleal/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/support/model/ProtocolInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_d
    iget-object v3, v0, Lorg/teleal/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getAvTransportID()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->avTransportID:I

    return v0
.end method

.method public getConnectionID()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->connectionID:I

    return v0
.end method

.method public declared-synchronized getConnectionStatus()Lorg/teleal/cling/support/model/ConnectionInfo$Status;
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/teleal/cling/support/model/ConnectionInfo$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirection()Lorg/teleal/cling/support/model/ConnectionInfo$Direction;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->direction:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    return-object v0
.end method

.method public getPeerConnectionID()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->peerConnectionID:I

    return v0
.end method

.method public getPeerConnectionManager()Lorg/teleal/cling/model/ServiceReference;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/teleal/cling/model/ServiceReference;

    return-object v0
.end method

.method public getProtocolInfo()Lorg/teleal/cling/support/model/ProtocolInfo;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    return-object v0
.end method

.method public getRcsID()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->rcsID:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 160
    iget v0, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->connectionID:I

    .line 161
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->rcsID:I

    add-int v0, v1, v3

    .line 162
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->avTransportID:I

    add-int v0, v1, v3

    .line 163
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/ProtocolInfo;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 164
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/teleal/cling/model/ServiceReference;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->peerConnectionManager:Lorg/teleal/cling/model/ServiceReference;

    invoke-virtual {v2}, Lorg/teleal/cling/model/ServiceReference;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 165
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->peerConnectionID:I

    add-int v0, v1, v2

    .line 166
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->direction:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    invoke-virtual {v2}, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 167
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/teleal/cling/support/model/ConnectionInfo$Status;

    invoke-virtual {v2}, Lorg/teleal/cling/support/model/ConnectionInfo$Status;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 168
    return v0

    :cond_1
    move v1, v2

    .line 163
    goto :goto_0
.end method

.method public declared-synchronized setConnectionStatus(Lorg/teleal/cling/support/model/ConnectionInfo$Status;)V
    .locals 1
    .param p1, "connectionStatus"    # Lorg/teleal/cling/support/model/ConnectionInfo$Status;

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/teleal/cling/support/model/ConnectionInfo;->connectionStatus:Lorg/teleal/cling/support/model/ConnectionInfo$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/ConnectionInfo;->getConnectionStatus()Lorg/teleal/cling/support/model/ConnectionInfo$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
