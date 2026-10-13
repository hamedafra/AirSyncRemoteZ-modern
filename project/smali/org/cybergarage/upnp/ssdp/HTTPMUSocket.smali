.class public Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;
.super Ljava/lang/Object;
.source "HTTPMUSocket.java"


# static fields
.field private static final BUFSIZE:I = 0x9c4


# instance fields
.field private ssdpMultiGroup:Ljava/net/InetSocketAddress;

.field private ssdpMultiIf:Ljava/net/NetworkInterface;

.field private ssdpMultiSock:Ljava/net/MulticastSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 60
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    .line 61
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "bindAddr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 60
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    .line 61
    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    .line 74
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 186
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    if-nez v2, :cond_0

    .line 199
    :goto_0
    return v1

    .line 190
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v2, v3, v4}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 191
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v2}, Ljava/net/MulticastSocket;->close()V

    .line 192
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->close()Z

    .line 79
    return-void
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    if-nez v3, :cond_1

    .line 88
    :cond_0
    const-string v3, ""

    .line 98
    :goto_0
    return-object v3

    .line 89
    :cond_1
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 90
    .local v2, "mcastAddr":Ljava/net/InetAddress;
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 91
    .local v1, "addrs":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 92
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 93
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3

    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3

    .line 94
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 95
    :cond_3
    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    .line 96
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 98
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_4
    const-string v3, ""

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMulticastAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->getMulticastInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastPort()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getSocket()Ljava/net/MulticastSocket;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method public open(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "bindAddr"    # Ljava/lang/String;

    .prologue
    .line 177
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->open(Ljava/lang/String;ILjava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 180
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;ILjava/net/InetAddress;)Z
    .locals 6
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "bindAddr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v2, 0x1

    .line 151
    :try_start_0
    new-instance v3, Ljava/net/MulticastSocket;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    .line 152
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 155
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V

    .line 157
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    const/16 v4, 0x9c4

    invoke-virtual {v3, v4}, Ljava/net/MulticastSocket;->setReceiveBufferSize(I)V

    .line 158
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    const/16 v4, 0x9c4

    invoke-virtual {v3, v4}, Ljava/net/MulticastSocket;->setSendBufferSize(I)V

    .line 160
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 161
    .local v0, "bindSockAddr":Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v3, v0}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 162
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 163
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v3

    iput-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 164
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    iget-object v4, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v3, v4, v5}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0    # "bindSockAddr":Ljava/net/InetSocketAddress;
    :goto_0
    return v2

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 168
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public post(Lorg/cybergarage/http/HTTPRequest;)Z
    .locals 3
    .param p1, "req"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 245
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->send(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public post(Lorg/cybergarage/http/HTTPRequest;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "req"    # Lorg/cybergarage/http/HTTPRequest;
    .param p2, "bindAddr"    # Ljava/lang/String;
    .param p3, "bindPort"    # I

    .prologue
    .line 240
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->send(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public receive()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const/16 v2, 0x400

    new-array v1, v2, [B

    .line 255
    .local v1, "ssdvRecvBuf":[B
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;-><init>([BI)V

    .line 256
    .local v0, "recvPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setLocalAddress(Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V

    .line 267
    return-object v0

    .line 263
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Multicast socket has already been closed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public send(Ljava/lang/String;)Z
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->send(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "bindAddr"    # Ljava/lang/String;
    .param p3, "bindPort"    # I

    .prologue
    .line 210
    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    .line 211
    :try_start_0
    new-instance v2, Ljava/net/MulticastSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 212
    .local v2, "msock":Ljava/net/MulticastSocket;
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 216
    :goto_0
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    .line 218
    .local v0, "dgmPacket":Ljava/net/DatagramPacket;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getTimeToLive()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 219
    invoke-virtual {v2, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 220
    invoke-virtual {v2}, Ljava/net/MulticastSocket;->close()V

    .line 226
    const/4 v3, 0x1

    .end local v0    # "dgmPacket":Ljava/net/DatagramPacket;
    .end local v2    # "msock":Ljava/net/MulticastSocket;
    :goto_1
    return v3

    .line 214
    :cond_0
    new-instance v2, Ljava/net/MulticastSocket;

    invoke-direct {v2}, Ljava/net/MulticastSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "msock":Ljava/net/MulticastSocket;
    goto :goto_0

    .line 222
    .end local v2    # "msock":Ljava/net/MulticastSocket;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 224
    const/4 v3, 0x0

    goto :goto_1
.end method
