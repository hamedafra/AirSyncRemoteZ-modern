.class public Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
.super Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;
.source "SSDPSearchSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

.field private deviceSearchThread:Ljava/lang/Thread;

.field private useIPv6Address:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "bindAddr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "multicast"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;-><init>()V

    .line 119
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    .line 58
    invoke-virtual {p0, p1, p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "bindAddr"    # Ljava/net/InetAddress;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/HTTPMUSocket;-><init>()V

    .line 119
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    .line 67
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 68
    check-cast p1, Ljava/net/Inet6Address;

    .end local p1    # "bindAddr":Ljava/net/InetAddress;
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/net/Inet6Address;)Z

    .line 72
    :goto_0
    return-void

    .line 70
    .restart local p1    # "bindAddr":Ljava/net/InetAddress;
    :cond_0
    check-cast p1, Ljava/net/Inet4Address;

    .end local p1    # "bindAddr":Ljava/net/InetAddress;
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/net/Inet4Address;)Z

    goto :goto_0
.end method


# virtual methods
.method public addSearchListener(Lorg/cybergarage/upnp/device/SearchListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/SearchListener;

    .prologue
    .line 123
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public open(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bindAddr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 106
    const-string v0, "239.255.255.250"

    .line 107
    .local v0, "addr":Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 108
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 109
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 110
    iput-boolean v2, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 112
    :cond_0
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bind"    # Ljava/lang/String;
    .param p2, "multicast"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 95
    :goto_0
    const/16 v0, 0x76c

    invoke-virtual {p0, p2, v0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 90
    :cond_0
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/cybergarage/net/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot open a UDP Socket for IPv6 address on IPv4 interface or viceversa"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open(Ljava/net/Inet4Address;)Z
    .locals 2
    .param p1, "bindAddr"    # Ljava/net/Inet4Address;

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 79
    const-string v0, "239.255.255.250"

    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/net/Inet6Address;)Z
    .locals 2
    .param p1, "bindAddr"    # Ljava/net/Inet6Address;

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 84
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public performSearchListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 4
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 133
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 134
    .local v1, "listenerSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 136
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 138
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3, v2}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/SearchListener;

    .line 139
    .local v0, "listener":Lorg/cybergarage/upnp/device/SearchListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/SearchListener;->deviceSearchReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 134
    .end local v0    # "listener":Lorg/cybergarage/upnp/device/SearchListener;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method

.method public removeSearchListener(Lorg/cybergarage/upnp/device/SearchListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/SearchListener;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 155
    .local v2, "thisThread":Ljava/lang/Thread;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    if-ne v3, v2, :cond_1

    .line 156
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 159
    const/4 v1, 0x0

    .line 161
    .local v1, "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->receive()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isDiscover()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 173
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->performSearchListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 175
    .end local v1    # "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/16 v4, 0x3a

    .line 178
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Cyber.SSDPSearchSocket/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, "name":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "localAddr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 182
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->getMulticastAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->getMulticastPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 187
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    .line 188
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 189
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->close()Z

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    .line 197
    return-void
.end method
