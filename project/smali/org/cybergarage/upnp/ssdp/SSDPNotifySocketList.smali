.class public Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
.super Ljava/util/Vector;
.source "SSDPNotifySocketList.java"


# instance fields
.field private binds:[Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    .line 34
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "binds"    # [Ljava/net/InetAddress;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    .line 42
    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 99
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 100
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 101
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->close()Z

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "sock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->clear()V

    .line 104
    return-void
.end method

.method public getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    return-object v0
.end method

.method public open()Z
    .locals 7

    .prologue
    .line 72
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    .line 74
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 75
    array-length v6, v1

    new-array v0, v6, [Ljava/lang/String;

    .line 76
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_1

    .line 77
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v4

    .line 81
    .local v4, "nHostAddrs":I
    new-array v0, v4, [Ljava/lang/String;

    .line 82
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 83
    invoke-static {v3}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    .end local v3    # "n":I
    .end local v4    # "nHostAddrs":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_3

    .line 88
    aget-object v6, v0, v2

    if-eqz v6, :cond_2

    .line 89
    new-instance v5, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    aget-object v6, v0, v2

    invoke-direct {v5, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 90
    .local v5, "ssdpNotifySocket":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v5    # "ssdpNotifySocket":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 93
    :cond_3
    const/4 v6, 0x1

    return v6
.end method

.method public setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V
    .locals 3
    .param p1, "ctrlPoint"    # Lorg/cybergarage/upnp/ControlPoint;

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 61
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 63
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "sock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 113
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 115
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->start()V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "sock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    .line 122
    .local v1, "nSockets":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-result-object v2

    .line 124
    .local v2, "sock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->stop()V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "sock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    :cond_0
    return-void
.end method
