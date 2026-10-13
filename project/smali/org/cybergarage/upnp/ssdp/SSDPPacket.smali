.class public Lorg/cybergarage/upnp/ssdp/SSDPPacket;
.super Ljava/lang/Object;
.source "SSDPPacket.java"


# instance fields
.field private dgmPacket:Ljava/net/DatagramPacket;

.field private localAddr:Ljava/lang/String;

.field public packetBytes:[B

.field private timeStamp:J


# direct methods
.method public constructor <init>([BI)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->localAddr:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    .line 40
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p1, p2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    .line 41
    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "Cache-Control"

    invoke-static {v0, v1}, Lorg/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 5

    .prologue
    .line 115
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    .line 123
    :goto_0
    return-object v3

    .line 118
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 119
    .local v0, "packet":Ljava/net/DatagramPacket;
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    .line 120
    .local v2, "packetLen":I
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 121
    .local v1, "packetData":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    .line 123
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    goto :goto_0
.end method

.method public getDatagramPacket()Ljava/net/DatagramPacket;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "HOST"

    invoke-static {v0, v1}, Lorg/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostInetAddress()Ljava/net/InetAddress;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 186
    const-string v0, "127.0.0.1"

    .line 187
    .local v0, "addrStr":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "host":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 189
    .local v1, "canmaIdx":I
    if-ltz v1, :cond_1

    .line 190
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_0

    .line 192
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_1
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v0, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 197
    .local v3, "isockaddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    return-object v4
.end method

.method public getLeaseTime()I
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/ssdp/SSDP;->getLeaseTime(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->localAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "Location"

    invoke-static {v0, v1}, Lorg/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMAN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "MAN"

    invoke-static {v0, v1}, Lorg/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMX()I
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "MX"

    invoke-static {v0, v1}, Lorg/cybergarage/http/HTTPHeader;->getIntegerValue([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNT()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "NT"

    invoke-static {v0, v1}, Lorg/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNTS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "NTS"

    invoke-static {v0, v1}, Lorg/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    return v0
.end method

.method public getST()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "ST"

    invoke-static {v0, v1}, Lorg/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "Server"

    invoke-static {v0, v1}, Lorg/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->timeStamp:J

    return-wide v0
.end method

.method public getUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "USN"

    invoke-static {v0, v1}, Lorg/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getNTS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/NTS;->isAlive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isByeBye()Z
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getNTS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/NTS;->isByeBye(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDiscover()Z
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getMAN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/MAN;->isDiscover(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHiMultiScreenDevice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 218
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getNT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/upnp/device/NT;->isHiMultiScreenDevice(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/upnp/device/ST;->isHiMultiScreenDevice(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/USN;->isHiMultiScreenDevice(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isRootDevice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 206
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getNT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/upnp/device/NT;->isRootDevice(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/upnp/device/ST;->isRootDevice(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/USN;->isRootDevice(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->localAddr:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->timeStamp:J

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
