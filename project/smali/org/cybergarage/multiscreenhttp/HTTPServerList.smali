.class public Lorg/cybergarage/multiscreenhttp/HTTPServerList;
.super Ljava/util/Vector;
.source "HTTPServerList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public addRequestListener(Lorg/cybergarage/multiscreenhttp/HTTPRequestListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/cybergarage/multiscreenhttp/HTTPRequestListener;

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->size()I

    move-result v1

    .line 47
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 52
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/multiscreenhttp/HTTPServer;

    move-result-object v2

    .line 50
    .local v2, "server":Lorg/cybergarage/multiscreenhttp/HTTPServer;
    invoke-virtual {v2, p1}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->addRequestListener(Lorg/cybergarage/multiscreenhttp/HTTPRequestListener;)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->size()I

    move-result v1

    .line 81
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 86
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/multiscreenhttp/HTTPServer;

    move-result-object v2

    .line 84
    .local v2, "server":Lorg/cybergarage/multiscreenhttp/HTTPServer;
    invoke-virtual {v2}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->close()V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBindAddress(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/multiscreenhttp/HTTPServer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->getBindAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBindPort(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/multiscreenhttp/HTTPServer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->getBindPort()I

    move-result v0

    return v0
.end method

.method public getHTTPServer(I)Lorg/cybergarage/multiscreenhttp/HTTPServer;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/multiscreenhttp/HTTPServer;

    return-object v0
.end method

.method public getHostAddress(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/multiscreenhttp/HTTPServer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(II)Z
    .locals 5
    .param p1, "port"    # I
    .param p2, "timeOut"    # I

    .prologue
    .line 99
    invoke-static {}, Lorg/cybergarage/multiscreennet/HostInterface;->getNHostAddresses()I

    move-result v3

    .line 101
    .local v3, "nHostAddrs":I
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->clear()V

    .line 103
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 112
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 113
    const/4 v4, 0x1

    .line 115
    :goto_1
    return v4

    .line 105
    :cond_0
    invoke-static {v2}, Lorg/cybergarage/multiscreennet/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "bindAddr":Ljava/lang/String;
    new-instance v1, Lorg/cybergarage/multiscreenhttp/HTTPServer;

    invoke-direct {v1}, Lorg/cybergarage/multiscreenhttp/HTTPServer;-><init>()V

    .line 107
    .local v1, "httpServer":Lorg/cybergarage/multiscreenhttp/HTTPServer;
    invoke-virtual {v1, p2}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->setClientSocketTimeOut(I)V

    .line 108
    invoke-virtual {v1, v0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->open(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    invoke-virtual {p0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "bindAddr":Ljava/lang/String;
    .end local v1    # "httpServer":Lorg/cybergarage/multiscreenhttp/HTTPServer;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public start()V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->size()I

    move-result v1

    .line 142
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 147
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/multiscreenhttp/HTTPServer;

    move-result-object v2

    .line 145
    .local v2, "server":Lorg/cybergarage/multiscreenhttp/HTTPServer;
    invoke-virtual {v2}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->start()V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->size()I

    move-result v1

    .line 152
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 157
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/multiscreenhttp/HTTPServer;

    move-result-object v2

    .line 155
    .local v2, "server":Lorg/cybergarage/multiscreenhttp/HTTPServer;
    invoke-virtual {v2}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->stop()V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
