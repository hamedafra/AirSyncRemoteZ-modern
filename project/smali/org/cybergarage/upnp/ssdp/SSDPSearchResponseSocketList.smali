.class public Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
.super Ljava/util/Vector;
.source "SSDPSearchResponseSocketList.java"


# instance fields
.field private binds:[Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    .line 36
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "binds"    # [Ljava/net/InetAddress;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    .line 42
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 113
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 115
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->close()Z

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    .line 118
    return-void
.end method

.method public getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    return-object v0
.end method

.method public open()Z
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x76c

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->open(I)Z

    move-result v0

    return v0
.end method

.method public open(I)Z
    .locals 9
    .param p1, "port"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    .line 79
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 80
    array-length v8, v1

    new-array v0, v8, [Ljava/lang/String;

    .line 81
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v1

    if-ge v3, v8, :cond_1

    .line 82
    aget-object v8, v1, v3

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v6

    .line 86
    .local v6, "nHostAddrs":I
    new-array v0, v6, [Ljava/lang/String;

    .line 87
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 88
    invoke-static {v5}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v5

    .line 87
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 92
    .end local v5    # "n":I
    .end local v6    # "nHostAddrs":I
    :cond_1
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    :try_start_0
    array-length v8, v0

    if-ge v4, v8, :cond_2

    .line 93
    new-instance v7, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    aget-object v8, v0, v4

    invoke-direct {v7, v8, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;-><init>(Ljava/lang/String;I)V

    .line 94
    .local v7, "socket":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 96
    .end local v7    # "socket":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    .line 98
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    .line 99
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    .line 100
    const/4 v8, 0x0

    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return v8

    :cond_2
    const/4 v8, 0x1

    goto :goto_3
.end method

.method public post(Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z
    .locals 9
    .param p1, "req"    # Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;

    .prologue
    const/16 v8, 0x76c

    .line 148
    const/4 v3, 0x1

    .line 149
    .local v3, "ret":Z
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v2

    .line 150
    .local v2, "nSockets":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 151
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v4

    .line 152
    .local v4, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "bindAddr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;->setLocalAddress(Ljava/lang/String;)V

    .line 154
    const-string v5, "239.255.255.250"

    .line 155
    .local v5, "ssdpAddr":Ljava/lang/String;
    invoke-static {v0}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 156
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v5

    .line 158
    :cond_0
    invoke-virtual {v4, v5, v8, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 159
    const/4 v3, 0x0

    .line 162
    :cond_1
    invoke-static {}, Lorg/cybergarage/upnp/ssdp/SSDP;->getBroadCastAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v8, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "bindAddr":Ljava/lang/String;
    .end local v4    # "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    .end local v5    # "ssdpAddr":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method public setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V
    .locals 3
    .param p1, "ctrlPoint"    # Lorg/cybergarage/upnp/ControlPoint;

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 57
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 59
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 127
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 129
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->start()V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    .line 136
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 137
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    move-result-object v2

    .line 138
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->stop()V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    .end local v2    # "sock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    :cond_0
    return-void
.end method
