.class public Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;
.super Lorg/teleal/cling/transport/spi/UpnpStream;
.source "HttpServerConnectionUpnpStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final connection:Lorg/apache/http/HttpServerConnection;

.field protected final httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

.field protected final httpService:Lorg/apache/http/protocol/HttpService;

.field protected final params:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lorg/teleal/cling/transport/spi/UpnpStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/protocol/ProtocolFactory;Lorg/apache/http/HttpServerConnection;Lorg/apache/http/params/HttpParams;)V
    .locals 4
    .param p1, "protocolFactory"    # Lorg/teleal/cling/protocol/ProtocolFactory;
    .param p2, "connection"    # Lorg/apache/http/HttpServerConnection;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lorg/teleal/cling/transport/spi/UpnpStream;-><init>(Lorg/teleal/cling/protocol/ProtocolFactory;)V

    .line 77
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 85
    iput-object p2, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    .line 86
    iput-object p3, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->params:Lorg/apache/http/params/HttpParams;

    .line 89
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseDate;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseDate;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 94
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 95
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 98
    new-instance v0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;

    .line 99
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpProcessor:Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 100
    new-instance v2, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v2}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    .line 101
    new-instance v3, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v3}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    .line 98
    invoke-direct {v0, p0, v1, v2, v3}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;-><init>(Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    .line 97
    iput-object v0, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpService:Lorg/apache/http/protocol/HttpService;

    .line 103
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpService:Lorg/apache/http/protocol/HttpService;

    invoke-virtual {v0, p3}, Lorg/apache/http/protocol/HttpService;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 104
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$1(Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->responseException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$2(Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Lorg/teleal/cling/model/message/StreamResponseMessage;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->responseSent(Lorg/teleal/cling/model/message/StreamResponseMessage;)V

    return-void
.end method


# virtual methods
.method public getConnection()Lorg/apache/http/HttpServerConnection;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 113
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->isOpen()Z
    :try_end_0
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 130
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 135
    :goto_1
    return-void

    .line 114
    :cond_1
    :try_start_2
    sget-object v2, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v3, "Handling request on open connection..."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 115
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    .line 116
    .local v0, "context":Lorg/apache/http/protocol/HttpContext;
    iget-object v2, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->httpService:Lorg/apache/http/protocol/HttpService;

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-virtual {v2, v3, v0}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_2
    .catch Lorg/apache/http/ConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 118
    .end local v0    # "context":Lorg/apache/http/protocol/HttpContext;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "ex":Lorg/apache/http/ConnectionClosedException;
    :try_start_3
    sget-object v2, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v3, "Client closed connection"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->responseException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :try_start_4
    iget-object v2, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 131
    :catch_1
    move-exception v1

    .line 132
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error closing connection: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 122
    .local v1, "ex":Ljava/net/SocketTimeoutException;
    :try_start_5
    sget-object v2, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server-side closed socket (this is \'normal\' behavior of Apache HTTP Core!): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 130
    :try_start_6
    iget-object v2, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 131
    :catch_3
    move-exception v1

    .line 132
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error closing connection: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 123
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 124
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_7
    sget-object v2, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "I/O exception during HTTP request processing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->responseException(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 130
    :try_start_8
    iget-object v2, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_1

    .line 131
    :catch_5
    move-exception v1

    .line 132
    sget-object v2, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error closing connection: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 126
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 127
    .local v1, "ex":Lorg/apache/http/HttpException;
    :try_start_9
    new-instance v2, Lorg/teleal/cling/transport/spi/UnsupportedDataException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Request malformed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 128
    .end local v1    # "ex":Lorg/apache/http/HttpException;
    :catchall_0
    move-exception v2

    .line 130
    :try_start_a
    iget-object v3, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->connection:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v3}, Lorg/apache/http/HttpServerConnection;->shutdown()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 134
    :goto_2
    throw v2

    .line 131
    :catch_7
    move-exception v1

    .line 132
    .local v1, "ex":Ljava/io/IOException;
    sget-object v3, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error closing connection: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_2

    .line 131
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 132
    .restart local v1    # "ex":Ljava/io/IOException;
    sget-object v2, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error closing connection: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
