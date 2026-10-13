.class public Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;
.super Ljava/lang/Object;
.source "StreamServerImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/StreamServer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/teleal/cling/transport/spi/StreamServer",
        "<",
        "Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;

.field protected globalParams:Lorg/apache/http/params/HttpParams;

.field protected router:Lorg/teleal/cling/transport/Router;

.field protected serverSocket:Ljava/net/ServerSocket;

.field private volatile stopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/teleal/cling/transport/spi/StreamServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;)V
    .locals 1
    .param p1, "configuration"    # Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->stopped:Z

    .line 62
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;

    .line 63
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/teleal/cling/transport/spi/StreamServerConfiguration;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Ljava/net/InetAddress;Lorg/teleal/cling/transport/Router;)V
    .locals 4
    .param p1, "bindAddress"    # Ljava/net/InetAddress;
    .param p2, "router"    # Lorg/teleal/cling/transport/Router;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->router:Lorg/teleal/cling/transport/Router;

    .line 76
    new-instance v1, Ljava/net/ServerSocket;

    .line 77
    iget-object v2, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-virtual {v2}, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->getListenPort()I

    move-result v2

    .line 78
    iget-object v3, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-virtual {v3}, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->getTcpConnectionBacklog()I

    move-result v3

    .line 76
    invoke-direct {v1, v2, v3, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 75
    iput-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    .line 82
    sget-object v1, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Created socket (for receiving TCP streams) on: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    .line 85
    const-string v2, "http.socket.timeout"

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-virtual {v3}, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->getDataWaitTimeoutSeconds()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 86
    const-string v2, "http.socket.buffer-size"

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-virtual {v3}, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->getBufferSizeKilobytes()I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 87
    const-string v2, "http.connection.stalecheck"

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-virtual {v3}, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->isStaleConnectionCheck()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 88
    const-string v2, "http.tcp.nodelay"

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->configuration:Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-virtual {v3}, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;->isTcpNoDelay()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Lorg/teleal/cling/transport/spi/InitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not initialize "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/teleal/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 7

    .prologue
    .line 111
    sget-object v4, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Entering blocking receiving loop, listening for HTTP stream requests on: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    :goto_0
    iget-boolean v4, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->stopped:Z

    if-eqz v4, :cond_2

    .line 158
    :cond_0
    :goto_1
    :try_start_0
    sget-object v4, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "Receiving loop stopped"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    sget-object v4, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "Closing streaming server socket"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 167
    :cond_1
    :goto_2
    return-void

    .line 117
    :cond_2
    :try_start_1
    iget-object v4, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 120
    .local v0, "clientSocket":Ljava/net/Socket;
    new-instance v3, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl$1;

    invoke-direct {v3, p0}, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl$1;-><init>(Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;)V

    .line 127
    .local v3, "httpServerConnection":Lorg/apache/http/impl/DefaultHttpServerConnection;
    sget-object v4, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Incoming connection from: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v3, v0, v4}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 132
    new-instance v1, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    .line 133
    iget-object v4, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->router:Lorg/teleal/cling/transport/Router;

    invoke-interface {v4}, Lorg/teleal/cling/transport/Router;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v4

    .line 135
    iget-object v5, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    .line 132
    invoke-direct {v1, v4, v3, v5}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;-><init>(Lorg/teleal/cling/protocol/ProtocolFactory;Lorg/apache/http/HttpServerConnection;Lorg/apache/http/params/HttpParams;)V

    .line 138
    .local v1, "connectionStream":Lorg/teleal/cling/transport/spi/UpnpStream;
    iget-object v4, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->router:Lorg/teleal/cling/transport/Router;

    invoke-interface {v4, v1}, Lorg/teleal/cling/transport/Router;->received(Lorg/teleal/cling/transport/spi/UpnpStream;)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 140
    .end local v0    # "clientSocket":Ljava/net/Socket;
    .end local v1    # "connectionStream":Lorg/teleal/cling/transport/spi/UpnpStream;
    .end local v3    # "httpServerConnection":Lorg/apache/http/impl/DefaultHttpServerConnection;
    :catch_0
    move-exception v2

    .line 141
    .local v2, "ex":Ljava/io/InterruptedIOException;
    sget-object v4, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "I/O has been interrupted, stopping receiving loop, bytes transfered: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Ljava/io/InterruptedIOException;->bytesTransferred:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    .end local v2    # "ex":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v2

    .line 144
    .local v2, "ex":Ljava/net/SocketException;
    iget-boolean v4, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->stopped:Z

    if-nez v4, :cond_0

    .line 146
    sget-object v4, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception using server socket: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 151
    .end local v2    # "ex":Ljava/net/SocketException;
    :catch_2
    move-exception v2

    .line 152
    .local v2, "ex":Ljava/io/IOException;
    sget-object v4, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception initializing receiving loop: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 164
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v4, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception closing streaming server socket: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 101
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->stopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    sget-object v1, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception closing streaming server socket: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 101
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
