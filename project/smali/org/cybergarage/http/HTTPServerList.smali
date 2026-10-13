.class public Lorg/cybergarage/http/HTTPServerList;
.super Ljava/util/Vector;
.source "HTTPServerList.java"


# instance fields
.field private binds:[Ljava/net/InetAddress;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 33
    const/16 v0, 0xfa4

    iput v0, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    .line 36
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "list"    # [Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 33
    const/16 v0, 0xfa4

    iput v0, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    .line 39
    iput-object p1, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 40
    iput p2, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    .line 41
    return-void
.end method


# virtual methods
.method public addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/cybergarage/http/HTTPRequestListener;

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    .line 50
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 52
    .local v2, "server":Lorg/cybergarage/http/HTTPServer;
    invoke-virtual {v2, p1}, Lorg/cybergarage/http/HTTPServer;->addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "server":Lorg/cybergarage/http/HTTPServer;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    .line 68
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 69
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 70
    .local v2, "server":Lorg/cybergarage/http/HTTPServer;
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPServer;->close()Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "server":Lorg/cybergarage/http/HTTPServer;
    :cond_0
    return-void
.end method

.method public getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPServerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/http/HTTPServer;

    return-object v0
.end method

.method public open()I
    .locals 9

    .prologue
    .line 75
    iget-object v1, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 77
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 78
    array-length v7, v1

    new-array v0, v7, [Ljava/lang/String;

    .line 79
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_1

    .line 80
    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v6

    .line 84
    .local v6, "nHostAddrs":I
    new-array v0, v6, [Ljava/lang/String;

    .line 85
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_1
    if-ge v5, v6, :cond_1

    .line 86
    invoke-static {v5}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 89
    .end local v5    # "n":I
    .end local v6    # "nHostAddrs":I
    :cond_1
    const/4 v4, 0x0

    .line 90
    .local v4, "j":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 91
    new-instance v2, Lorg/cybergarage/http/HTTPServer;

    invoke-direct {v2}, Lorg/cybergarage/http/HTTPServer;-><init>()V

    .line 92
    .local v2, "httpServer":Lorg/cybergarage/http/HTTPServer;
    aget-object v7, v0, v3

    if-eqz v7, :cond_2

    aget-object v7, v0, v3

    iget v8, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    invoke-virtual {v2, v7, v8}, Lorg/cybergarage/http/HTTPServer;->open(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 93
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->close()V

    .line 94
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->clear()V

    .line 90
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPServerList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 100
    .end local v2    # "httpServer":Lorg/cybergarage/http/HTTPServer;
    :cond_4
    return v4
.end method

.method public open(I)Z
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 106
    iput p1, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    .line 107
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->open()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    .line 117
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 119
    .local v2, "server":Lorg/cybergarage/http/HTTPServer;
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPServer;->start()Z

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "server":Lorg/cybergarage/http/HTTPServer;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    .line 126
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/HTTPServer;

    move-result-object v2

    .line 128
    .local v2, "server":Lorg/cybergarage/http/HTTPServer;
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPServer;->stop()Z

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v2    # "server":Lorg/cybergarage/http/HTTPServer;
    :cond_0
    return-void
.end method
