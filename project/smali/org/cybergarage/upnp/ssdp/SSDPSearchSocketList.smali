.class public Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
.super Ljava/util/Vector;
.source "SSDPSearchSocketList.java"


# instance fields
.field private binds:[Ljava/net/InetAddress;

.field private multicastIPv4:Ljava/lang/String;

.field private multicastIPv6:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->binds:[Ljava/net/InetAddress;

    .line 34
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv4:Ljava/lang/String;

    .line 35
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv6:Ljava/lang/String;

    .line 36
    const/16 v0, 0x76c

    iput v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->port:I

    .line 40
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "binds"    # [Ljava/net/InetAddress;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->binds:[Ljava/net/InetAddress;

    .line 34
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv4:Ljava/lang/String;

    .line 35
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv6:Ljava/lang/String;

    .line 36
    const/16 v0, 0x76c

    iput v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->port:I

    .line 46
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->binds:[Ljava/net/InetAddress;

    .line 47
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "binds"    # [Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "multicastIPv4"    # Ljava/lang/String;
    .param p4, "multicastIPv6"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->binds:[Ljava/net/InetAddress;

    .line 34
    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv4:Ljava/lang/String;

    .line 35
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv6:Ljava/lang/String;

    .line 36
    const/16 v0, 0x76c

    iput v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->port:I

    .line 58
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->binds:[Ljava/net/InetAddress;

    .line 59
    iput p2, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->port:I

    .line 60
    iput-object p3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv4:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv6:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public addSearchListener(Lorg/cybergarage/upnp/device/SearchListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/SearchListener;

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->size()I

    move-result v1

    .line 79
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 80
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->getSSDPSearchSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    move-result-object v2

    .line 81
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->addSearchListener(Lorg/cybergarage/upnp/device/SearchListener;)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->size()I

    move-result v1

    .line 121
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->getSSDPSearchSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    move-result-object v2

    .line 123
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->close()Z

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v2    # "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->clear()V

    .line 126
    return-void
.end method

.method public getSSDPSearchSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    return-object v0
.end method

.method public open()Z
    .locals 9

    .prologue
    .line 90
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->binds:[Ljava/net/InetAddress;

    .line 92
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 93
    array-length v6, v1

    new-array v0, v6, [Ljava/lang/String;

    .line 94
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_1

    .line 95
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v4

    .line 99
    .local v4, "nHostAddrs":I
    new-array v0, v4, [Ljava/lang/String;

    .line 100
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 101
    invoke-static {v3}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 105
    .end local v3    # "n":I
    .end local v4    # "nHostAddrs":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_4

    .line 106
    aget-object v6, v0, v2

    if-eqz v6, :cond_2

    .line 108
    aget-object v6, v0, v2

    invoke-static {v6}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 109
    new-instance v5, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    aget-object v6, v0, v2

    iget v7, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->port:I

    iget-object v8, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv6:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    .local v5, "ssdpSearchSocket":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    :goto_3
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v5    # "ssdpSearchSocket":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 111
    :cond_3
    new-instance v5, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    aget-object v6, v0, v2

    iget v7, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->port:I

    iget-object v8, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->multicastIPv4:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .restart local v5    # "ssdpSearchSocket":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    goto :goto_3

    .line 115
    .end local v5    # "ssdpSearchSocket":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method public start()V
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->size()I

    move-result v1

    .line 135
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->getSSDPSearchSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    move-result-object v2

    .line 137
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->start()V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->size()I

    move-result v1

    .line 144
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 145
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->getSSDPSearchSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;

    move-result-object v2

    .line 146
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;->stop()V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocket;
    :cond_0
    return-void
.end method
