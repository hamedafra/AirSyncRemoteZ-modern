.class public Lorg/cybergarage/multiscreenhttp/HTTPServer;
.super Ljava/lang/Object;
.source "HTTPServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEFAULT_PORT:I = 0x50

.field public static final NAME:Ljava/lang/String; = "HiMultiScreenHTTP"

.field public static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private bindAddr:Ljava/net/InetAddress;

.field private bindPort:I

.field private httpRequestListenerList:Lorg/cybergarage/multiscreenutil/ListenerList;

.field private httpServerThread:Ljava/lang/Thread;

.field private mTimeOut:I

.field private serverSock:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->mTimeOut:I

    .line 63
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 65
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->bindPort:I

    .line 161
    new-instance v0, Lorg/cybergarage/multiscreenutil/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/multiscreenutil/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/multiscreenutil/ListenerList;

    .line 191
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 56
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 57
    return-void
.end method

.method public static getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "osName":Ljava/lang/String;
    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "osVer":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HiMultiScreenHTTP"

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
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v2, :cond_0

    .line 148
    :goto_0
    return-object v1

    .line 144
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public addRequestListener(Lorg/cybergarage/multiscreenhttp/HTTPRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/multiscreenhttp/HTTPRequestListener;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/multiscreenutil/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/multiscreenutil/ListenerList;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 127
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 130
    const/4 v1, 0x0

    iput v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->bindPort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "close Excption"

    invoke-static {v1}, Lorg/cybergarage/multiscreenutil/Debug;->message(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBindAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 77
    const-string v0, ""

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBindPort()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->bindPort:I

    return v0
.end method

.method public getClientSocketTimeOut()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->mTimeOut:I

    return v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 96
    const-string v0, ""

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getServerSock()Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v1, 0x1

    .line 106
    iget-object v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v2, :cond_0

    .line 118
    :goto_0
    return v1

    .line 110
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 111
    iput p2, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->bindPort:I

    .line 112
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, p2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->serverSock:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performRequestListener(Lorg/cybergarage/multiscreenhttp/HTTPRequest;)V
    .locals 4
    .param p1, "httpReq"    # Lorg/cybergarage/multiscreenhttp/HTTPRequest;

    .prologue
    .line 175
    iget-object v3, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/multiscreenutil/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/multiscreenutil/ListenerList;->size()I

    move-result v1

    .line 176
    .local v1, "listenerSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 185
    return-void

    .line 178
    :cond_0
    iget-object v3, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/multiscreenutil/ListenerList;

    invoke-virtual {v3, v2}, Lorg/cybergarage/multiscreenutil/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/multiscreenhttp/HTTPRequestListener;

    .line 180
    .local v0, "listener":Lorg/cybergarage/multiscreenhttp/HTTPRequestListener;
    if-eqz v0, :cond_1

    .line 182
    invoke-interface {v0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPRequestListener;->httpRequestReceived(Lorg/cybergarage/multiscreenhttp/HTTPRequest;)V

    .line 176
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeRequestListener(Lorg/cybergarage/multiscreenhttp/HTTPRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/multiscreenhttp/HTTPRequestListener;

    .prologue
    .line 170
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->httpRequestListenerList:Lorg/cybergarage/multiscreenutil/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/multiscreenutil/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 200
    .local v3, "thisThread":Ljava/lang/Thread;
    :goto_1
    iget-object v4, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    if-ne v4, v3, :cond_0

    .line 202
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 206
    :try_start_0
    const-string v4, "accept ..."

    invoke-static {v4}, Lorg/cybergarage/multiscreenutil/Debug;->message(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->accept()Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 218
    .local v2, "sock":Ljava/net/Socket;
    new-instance v1, Lorg/cybergarage/multiscreenhttp/HTTPServerThread;

    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->getClientSocketTimeOut()I

    move-result v4

    invoke-direct {v1, p0, v2, v4}, Lorg/cybergarage/multiscreenhttp/HTTPServerThread;-><init>(Lorg/cybergarage/multiscreenhttp/HTTPServer;Ljava/net/Socket;I)V

    .line 219
    .local v1, "httpServThread":Lorg/cybergarage/multiscreenhttp/HTTPServerThread;
    invoke-virtual {v1}, Lorg/cybergarage/multiscreenhttp/HTTPServerThread;->start()V

    .line 220
    const-string v4, "httpServThread ..."

    invoke-static {v4}, Lorg/cybergarage/multiscreenutil/Debug;->message(Ljava/lang/String;)V

    goto :goto_1

    .line 212
    .end local v1    # "httpServThread":Lorg/cybergarage/multiscreenhttp/HTTPServerThread;
    .end local v2    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/multiscreenutil/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setClientSocketTimeOut(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 237
    iput p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->mTimeOut:I

    .line 238
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 227
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 228
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 233
    return-void
.end method
