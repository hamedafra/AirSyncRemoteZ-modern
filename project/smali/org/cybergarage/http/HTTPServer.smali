.class public Lorg/cybergarage/http/HTTPServer;
.super Ljava/lang/Object;
.source "HTTPServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT:I = 0x7d0

.field public static final DEFAULT_PORT:I = 0x50

.field public static final DEFAULT_TIMEOUT:I = 0x7d0

.field public static final NAME:Ljava/lang/String; = "CyberHTTP"

.field public static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private bindAddr:Ljava/net/InetAddress;

.field private bindPort:I

.field private httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

.field private httpServerThread:Ljava/lang/Thread;

.field private serverSock:Ljava/net/ServerSocket;

.field protected timeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v1, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 92
    iput-object v1, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/http/HTTPServer;->bindPort:I

    .line 100
    const/16 v0, 0x7d0

    iput v0, p0, Lorg/cybergarage/http/HTTPServer;->timeout:I

    .line 221
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    .line 247
    iput-object v1, p0, Lorg/cybergarage/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 82
    iput-object v1, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 84
    return-void
.end method

.method public static getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "osName":Ljava/lang/String;
    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "osVer":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CyberHTTP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 208
    :goto_0
    return-object v1

    .line 199
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 203
    .local v1, "sock":Ljava/net/Socket;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServer;->getTimeout()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v1    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .line 208
    goto :goto_0
.end method

.method public addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/http/HTTPRequestListener;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public close()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v3, :cond_0

    .line 190
    :goto_0
    return v1

    .line 180
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 181
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 182
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 183
    const/4 v3, 0x0

    iput v3, p0, Lorg/cybergarage/http/HTTPServer;->bindPort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    move v1, v2

    .line 188
    goto :goto_0
.end method

.method public getBindAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 110
    const-string v0, ""

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBindPort()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lorg/cybergarage/http/HTTPServer;->bindPort:I

    return v0
.end method

.method public getServerSock()Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public declared-synchronized getTimeout()I
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/cybergarage/http/HTTPServer;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v3, :cond_0

    .line 171
    :goto_0
    return v1

    .line 163
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 164
    iput p2, p0, Lorg/cybergarage/http/HTTPServer;->bindPort:I

    .line 165
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lorg/cybergarage/http/HTTPServer;->bindPort:I

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-direct {v3, v4, v5, v6}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v1, v2

    .line 169
    goto :goto_0
.end method

.method public open(Ljava/net/InetAddress;I)Z
    .locals 7
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v3, :cond_0

    .line 154
    :goto_0
    return v1

    .line 148
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lorg/cybergarage/http/HTTPServer;->bindPort:I

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/cybergarage/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-direct {v3, v4, v5, v6}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v1, v2

    .line 152
    goto :goto_0
.end method

.method public performRequestListener(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 4
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 235
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 236
    .local v1, "listenerSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 238
    iget-object v3, p0, Lorg/cybergarage/http/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3, v2}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/http/HTTPRequestListener;

    .line 239
    .local v0, "listener":Lorg/cybergarage/http/HTTPRequestListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/http/HTTPRequestListener;->httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "listener":Lorg/cybergarage/http/HTTPRequestListener;
    :cond_0
    return-void
.end method

.method public removeRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/http/HTTPRequestListener;

    .prologue
    .line 230
    iget-object v0, p0, Lorg/cybergarage/http/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 256
    .local v3, "thisThread":Ljava/lang/Thread;
    :goto_1
    iget-object v4, p0, Lorg/cybergarage/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    if-ne v4, v3, :cond_0

    .line 258
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 262
    :try_start_0
    const-string v4, "accept ..."

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServer;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 264
    .local v2, "sock":Ljava/net/Socket;
    if-eqz v2, :cond_2

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_2
    new-instance v1, Lorg/cybergarage/http/HTTPServerThread;

    invoke-direct {v1, p0, v2}, Lorg/cybergarage/http/HTTPServerThread;-><init>(Lorg/cybergarage/http/HTTPServer;Ljava/net/Socket;)V

    .line 273
    .local v1, "httpServThread":Lorg/cybergarage/http/HTTPServerThread;
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerThread;->start()V

    .line 274
    const-string v4, "httpServThread ..."

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_1

    .line 267
    .end local v1    # "httpServThread":Lorg/cybergarage/http/HTTPServerThread;
    .end local v2    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public declared-synchronized setTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/cybergarage/http/HTTPServer;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()Z
    .locals 3

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cyber.HTTPServer/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "name":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/cybergarage/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 282
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/cybergarage/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 283
    iget-object v1, p0, Lorg/cybergarage/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 284
    const/4 v1, 0x1

    return v1
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServer;->close()Z

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 292
    const/4 v0, 0x1

    return v0
.end method
