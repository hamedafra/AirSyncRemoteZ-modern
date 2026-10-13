.class public Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;
.super Lorg/teleal/cling/transport/spi/UpnpStream;
.source "HttpExchangeUpnpStream.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private httpExchange:Lcom/sun/net/httpserver/HttpExchange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/teleal/cling/transport/spi/UpnpStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/protocol/ProtocolFactory;Lcom/sun/net/httpserver/HttpExchange;)V
    .locals 0
    .param p1, "protocolFactory"    # Lorg/teleal/cling/protocol/ProtocolFactory;
    .param p2, "httpExchange"    # Lcom/sun/net/httpserver/HttpExchange;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/teleal/cling/transport/spi/UpnpStream;-><init>(Lorg/teleal/cling/protocol/ProtocolFactory;)V

    .line 54
    iput-object p2, p0, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->httpExchange:Lcom/sun/net/httpserver/HttpExchange;

    .line 55
    return-void
.end method


# virtual methods
.method public getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->httpExchange:Lcom/sun/net/httpserver/HttpExchange;

    return-object v0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 64
    :try_start_0
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Processing HTTP request: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/net/httpserver/HttpExchange;->getRequestURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 68
    new-instance v5, Lorg/teleal/cling/model/message/StreamRequestMessage;

    .line 69
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->getByHttpName(Ljava/lang/String;)Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v9

    .line 70
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/net/httpserver/HttpExchange;->getRequestURI()Ljava/net/URI;

    move-result-object v10

    .line 68
    invoke-direct {v5, v9, v10}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    .line 73
    .local v5, "requestMessage":Lorg/teleal/cling/model/message/StreamRequestMessage;
    invoke-virtual {v5}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v9

    check-cast v9, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v9}, Lorg/teleal/cling/model/message/UpnpRequest;->getMethod()Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v9

    sget-object v10, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v9, v10}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 74
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Method not supported by UPnP stack: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 75
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Method not supported: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/net/httpserver/HttpExchange;->getRequestMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v5    # "requestMessage":Lorg/teleal/cling/model/message/StreamRequestMessage;
    :catch_0
    move-exception v8

    .line 166
    .local v8, "t":Ljava/lang/Throwable;
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception occured during UPnP stream processing: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 167
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 168
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Cause: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :cond_0
    :try_start_1
    iget-object v9, p0, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->httpExchange:Lcom/sun/net/httpserver/HttpExchange;

    const/16 v10, 0x1f4

    const-wide/16 v12, -0x1

    invoke-virtual {v9, v10, v12, v13}, Lcom/sun/net/httpserver/HttpExchange;->sendResponseHeaders(IJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :goto_0
    invoke-virtual {p0, v8}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->responseException(Ljava/lang/Throwable;)V

    .line 178
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 79
    .restart local v5    # "requestMessage":Lorg/teleal/cling/model/message/StreamRequestMessage;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v9

    check-cast v9, Lorg/teleal/cling/model/message/UpnpRequest;

    .line 80
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/net/httpserver/HttpExchange;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "HTTP/1.1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    .line 79
    :goto_2
    invoke-virtual {v9, v10}, Lorg/teleal/cling/model/message/UpnpRequest;->setHttpMinorVersion(I)V

    .line 83
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Created new request message: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 86
    new-instance v9, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/net/httpserver/HttpExchange;->getRequestHeaders()Lcom/sun/net/httpserver/Headers;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v9}, Lorg/teleal/cling/model/message/StreamRequestMessage;->setHeaders(Lorg/teleal/cling/model/message/UpnpHeaders;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    const/4 v3, 0x0

    .line 92
    .local v3, "is":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/net/httpserver/HttpExchange;->getRequestBody()Ljava/io/InputStream;

    move-result-object v3

    .line 93
    invoke-static {v3}, Lorg/teleal/common/io/IO;->readBytes(Ljava/io/InputStream;)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 95
    .local v0, "bodyBytes":[B
    if-eqz v3, :cond_2

    .line 96
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 99
    :cond_2
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Reading request body bytes: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 101
    array-length v9, v0

    if-lez v9, :cond_6

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/StreamRequestMessage;->isContentTypeMissingOrText()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 103
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v10, "Request contains textual entity body, converting then setting string on message"

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v5, v0}, Lorg/teleal/cling/model/message/StreamRequestMessage;->setBodyCharacters([B)V

    .line 116
    :goto_3
    invoke-virtual {p0, v5}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->process(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v7

    .line 119
    .local v7, "responseMessage":Lorg/teleal/cling/model/message/StreamResponseMessage;
    if-eqz v7, :cond_b

    .line 120
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Preparing HTTP response message: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/net/httpserver/HttpExchange;->getResponseHeaders()Lcom/sun/net/httpserver/Headers;

    move-result-object v9

    .line 124
    invoke-virtual {v7}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v10

    .line 123
    invoke-virtual {v9, v10}, Lcom/sun/net/httpserver/Headers;->putAll(Ljava/util/Map;)V

    .line 128
    invoke-virtual {v7}, Lorg/teleal/cling/model/message/StreamResponseMessage;->hasBody()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getBodyBytes()[B

    move-result-object v6

    .line 129
    .local v6, "responseBodyBytes":[B
    :goto_4
    if-eqz v6, :cond_9

    array-length v1, v6

    .line 131
    .local v1, "contentLength":I
    :goto_5
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Sending HTTP response message: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " with content length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v10

    invoke-virtual {v7}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v9

    check-cast v9, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v9}, Lorg/teleal/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v9

    int-to-long v12, v1

    invoke-virtual {v10, v9, v12, v13}, Lcom/sun/net/httpserver/HttpExchange;->sendResponseHeaders(IJ)V

    .line 134
    if-lez v1, :cond_3

    .line 135
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v10, "Response message has body, writing bytes to stream..."

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 136
    const/4 v4, 0x0

    .line 138
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_5
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/net/httpserver/HttpExchange;->getResponseBody()Ljava/io/OutputStream;

    move-result-object v4

    .line 139
    invoke-static {v4, v6}, Lorg/teleal/common/io/IO;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 140
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 142
    if-eqz v4, :cond_3

    .line 143
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 153
    .end local v1    # "contentLength":I
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v6    # "responseBodyBytes":[B
    :cond_3
    :goto_6
    invoke-virtual {p0, v7}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->responseSent(Lorg/teleal/cling/model/message/StreamResponseMessage;)V

    goto/16 :goto_1

    .line 80
    .end local v0    # "bodyBytes":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v7    # "responseMessage":Lorg/teleal/cling/model/message/StreamResponseMessage;
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 94
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v9

    .line 95
    if-eqz v3, :cond_5

    .line 96
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 97
    :cond_5
    throw v9

    .line 106
    .restart local v0    # "bodyBytes":[B
    :cond_6
    array-length v9, v0

    if-lez v9, :cond_7

    .line 108
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v10, "Request contains binary entity body, setting bytes on message"

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 109
    sget-object v9, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v5, v9, v0}, Lorg/teleal/cling/model/message/StreamRequestMessage;->setBody(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 112
    :cond_7
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v10, "Request did not contain entity body"

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 128
    .restart local v7    # "responseMessage":Lorg/teleal/cling/model/message/StreamResponseMessage;
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 129
    .restart local v6    # "responseBodyBytes":[B
    :cond_9
    const/4 v1, -0x1

    goto :goto_5

    .line 141
    .restart local v1    # "contentLength":I
    .restart local v4    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    .line 142
    if-eqz v4, :cond_a

    .line 143
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 144
    :cond_a
    throw v9

    .line 149
    .end local v1    # "contentLength":I
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v6    # "responseBodyBytes":[B
    :cond_b
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    const-string v10, "Sending HTTP response status: 404"

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->getHttpExchange()Lcom/sun/net/httpserver/HttpExchange;

    move-result-object v9

    const/16 v10, 0x194

    const-wide/16 v12, -0x1

    invoke-virtual {v9, v10, v12, v13}, Lcom/sun/net/httpserver/HttpExchange;->sendResponseHeaders(IJ)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    .line 172
    .end local v0    # "bodyBytes":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "requestMessage":Lorg/teleal/cling/model/message/StreamRequestMessage;
    .end local v7    # "responseMessage":Lorg/teleal/cling/model/message/StreamResponseMessage;
    .restart local v8    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 173
    .local v2, "ex":Ljava/io/IOException;
    sget-object v9, Lorg/teleal/cling/transport/impl/HttpExchangeUpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Couldn\'t send error response: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
