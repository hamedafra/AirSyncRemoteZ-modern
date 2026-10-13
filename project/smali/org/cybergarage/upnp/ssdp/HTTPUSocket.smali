.class public Lorg/cybergarage/upnp/ssdp/HTTPUSocket;
.super Ljava/lang/Object;
.source "HTTPUSocket.java"


# instance fields
.field private localAddr:Ljava/lang/String;

.field private ssdpUniSock:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->open()Z

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bindPort"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->open(I)Z

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "bindAddr"    # Ljava/lang/String;
    .param p2, "bindPort"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->open(Ljava/lang/String;I)Z

    .line 59
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    if-nez v2, :cond_0

    .line 187
    :goto_0
    return v1

    .line 179
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 180
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 184
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 69
    return-void
.end method

.method public getDatagramSocket()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUDPSocket()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public open()Z
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 107
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 111
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public open(I)Z
    .locals 5
    .param p1, "bindPort"    # I

    .prologue
    const/4 v2, 0x1

    .line 153
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 156
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 157
    .local v0, "bindSock":Ljava/net/InetSocketAddress;
    new-instance v3, Ljava/net/DatagramSocket;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 158
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 159
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "bindSock":Ljava/net/InetSocketAddress;
    :goto_0
    return v2

    .line 161
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "bindAddr"    # Ljava/lang/String;
    .param p2, "bindPort"    # I

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 123
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 124
    .local v0, "bindInetAddr":Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->setLocalAddress(Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x1

    .end local v0    # "bindInetAddr":Ljava/net/InetSocketAddress;
    :goto_0
    return v2

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 128
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 197
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 198
    .local v2, "inetAddr":Ljava/net/InetAddress;
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v3, v4, v2, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 199
    .local v0, "dgmPacket":Ljava/net/DatagramPacket;
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v3, 0x1

    .end local v0    # "dgmPacket":Ljava/net/DatagramPacket;
    .end local v2    # "inetAddr":Ljava/net/InetAddress;
    :goto_0
    return v3

    .line 201
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 206
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public receive()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 6

    .prologue
    .line 217
    const/16 v3, 0x400

    new-array v2, v3, [B

    .line 218
    .local v2, "ssdvRecvBuf":[B
    new-instance v1, Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;-><init>([BI)V

    .line 219
    .local v1, "recvPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setLocalAddress(Ljava/lang/String;)V

    .line 221
    :try_start_0
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1    # "recvPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :goto_0
    return-object v1

    .line 224
    .restart local v1    # "recvPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 80
    return-void
.end method
