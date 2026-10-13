.class public Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;
.super Lorg/apache/http/protocol/HttpService;
.source "HttpServerConnectionUpnpStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpnpHttpService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V
    .locals 0
    .param p2, "processor"    # Lorg/apache/http/protocol/HttpProcessor;
    .param p3, "reuse"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p4, "responseFactory"    # Lorg/apache/http/HttpResponseFactory;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->this$0:Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    .line 145
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    .line 146
    return-void
.end method


# virtual methods
.method protected doService(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 20
    .param p1, "httpRequest"    # Lorg/apache/http/HttpRequest;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p3, "ctx"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Processing HTTP request: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 155
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, "requestMethod":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, "requestURI":Ljava/lang/String;
    :try_start_0
    new-instance v10, Lorg/teleal/cling/model/message/StreamRequestMessage;

    .line 163
    invoke-static {v11}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->getByHttpName(Ljava/lang/String;)Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v15

    .line 164
    invoke-static {v12}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v16

    .line 162
    move-object/from16 v0, v16

    invoke-direct {v10, v15, v0}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .local v10, "requestMessage":Lorg/teleal/cling/model/message/StreamRequestMessage;
    invoke-virtual {v10}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v15

    check-cast v15, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v15}, Lorg/teleal/cling/model/message/UpnpRequest;->getMethod()Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v15

    sget-object v16, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual/range {v15 .. v16}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 173
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Method not supported by UPnP stack: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 174
    new-instance v15, Lorg/apache/http/MethodNotSupportedException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Method not supported: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 166
    .end local v10    # "requestMessage":Lorg/teleal/cling/model/message/StreamRequestMessage;
    :catch_0
    move-exception v4

    .line 167
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Invalid request URI: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, "msg":Ljava/lang/String;
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 169
    new-instance v15, Lorg/apache/http/HttpException;

    invoke-direct {v15, v8, v4}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 177
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "msg":Ljava/lang/String;
    .restart local v10    # "requestMessage":Lorg/teleal/cling/model/message/StreamRequestMessage;
    :cond_0
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Created new request message: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 180
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v9

    .line 181
    .local v9, "requestHttpMinorVersion":I
    invoke-virtual {v10}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v15

    check-cast v15, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v15, v9}, Lorg/teleal/cling/model/message/UpnpRequest;->setHttpMinorVersion(I)V

    .line 184
    new-instance v15, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-static/range {p1 .. p1}, Lorg/teleal/cling/transport/impl/apache/HeaderUtil;->get(Lorg/apache/http/HttpMessage;)Lorg/teleal/common/http/Headers;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>(Ljava/util/Map;)V

    invoke-virtual {v10, v15}, Lorg/teleal/cling/model/message/StreamRequestMessage;->setHeaders(Lorg/teleal/cling/model/message/UpnpHeaders;)V

    .line 187
    move-object/from16 v0, p1

    instance-of v15, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v15, :cond_6

    .line 188
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    const-string v16, "Request contains entity body, setting on UPnP message"

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object/from16 v5, p1

    .line 189
    check-cast v5, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 192
    .local v5, "entityEnclosingHttpRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    const/4 v7, 0x0

    .line 194
    .local v7, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 195
    invoke-static {v7}, Lorg/teleal/common/io/IO;->readBytes(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 197
    .local v3, "bodyBytes":[B
    if-eqz v7, :cond_1

    .line 198
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 201
    :cond_1
    array-length v15, v3

    if-lez v15, :cond_4

    invoke-virtual {v10}, Lorg/teleal/cling/model/message/StreamRequestMessage;->isContentTypeMissingOrText()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 203
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    const-string v16, "Request contains textual entity body, converting then setting string on message"

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v10, v3}, Lorg/teleal/cling/model/message/StreamRequestMessage;->setBodyCharacters([B)V

    .line 222
    .end local v3    # "bodyBytes":[B
    .end local v5    # "entityEnclosingHttpRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v7    # "is":Ljava/io/InputStream;
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->this$0:Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    invoke-virtual {v15, v10}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->process(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v14

    .line 237
    .local v14, "responseMsg":Lorg/teleal/cling/model/message/StreamResponseMessage;
    if-eqz v14, :cond_9

    .line 238
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Sending HTTP response message: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 242
    new-instance v16, Lorg/apache/http/message/BasicStatusLine;

    .line 243
    new-instance v17, Lorg/apache/http/ProtocolVersion;

    const-string v18, "HTTP"

    const/16 v19, 0x1

    invoke-virtual {v14}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v15

    check-cast v15, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v15}, Lorg/teleal/cling/model/message/UpnpResponse;->getHttpMinorVersion()I

    move-result v15

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v15}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 244
    invoke-virtual {v14}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v15

    check-cast v15, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v15}, Lorg/teleal/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v18

    .line 245
    invoke-virtual {v14}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v15

    check-cast v15, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v15}, Lorg/teleal/cling/model/message/UpnpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v15

    .line 242
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 241
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/StatusLine;)V

    .line 249
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Response status line: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v10}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->getResponseParams(Lorg/teleal/cling/model/message/UpnpOperation;)Lorg/apache/http/params/HttpParams;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 253
    invoke-virtual {v14}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lorg/teleal/cling/transport/impl/apache/HeaderUtil;->add(Lorg/apache/http/HttpMessage;Lorg/teleal/common/http/Headers;)V

    .line 256
    invoke-virtual {v14}, Lorg/teleal/cling/model/message/StreamResponseMessage;->hasBody()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v14}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getBodyType()Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    move-result-object v15

    sget-object v16, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual/range {v15 .. v16}, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 257
    new-instance v15, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v14}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getBodyBytes()[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 269
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->this$0:Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    invoke-static {v15, v14}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$2(Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Lorg/teleal/cling/model/message/StreamResponseMessage;)V

    .line 270
    .end local v14    # "responseMsg":Lorg/teleal/cling/model/message/StreamResponseMessage;
    :goto_2
    return-void

    .line 196
    .restart local v5    # "entityEnclosingHttpRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v15

    .line 197
    if-eqz v7, :cond_3

    .line 198
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 199
    :cond_3
    throw v15

    .line 206
    .restart local v3    # "bodyBytes":[B
    :cond_4
    array-length v15, v3

    if-lez v15, :cond_5

    .line 208
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    const-string v16, "Request contains binary entity body, setting bytes on message"

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 209
    sget-object v15, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v10, v15, v3}, Lorg/teleal/cling/model/message/StreamRequestMessage;->setBody(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 212
    :cond_5
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    const-string v16, "Request did not contain entity body"

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    .end local v3    # "bodyBytes":[B
    .end local v5    # "entityEnclosingHttpRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v7    # "is":Ljava/io/InputStream;
    :cond_6
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    const-string v16, "Request did not contain entity body"

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :catch_1
    move-exception v6

    .line 225
    .local v6, "ex":Ljava/lang/RuntimeException;
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Exception occured during UPnP stream processing: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    sget-object v16, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 227
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    sget-object v16, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Cause: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {v6}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    :cond_7
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    const-string v16, "Sending HTTP response: 500"

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 231
    const/16 v15, 0x1f4

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->this$0:Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    invoke-static {v15, v6}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$1(Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 258
    .end local v6    # "ex":Ljava/lang/RuntimeException;
    .restart local v14    # "responseMsg":Lorg/teleal/cling/model/message/StreamResponseMessage;
    :cond_8
    invoke-virtual {v14}, Lorg/teleal/cling/model/message/StreamResponseMessage;->hasBody()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v14}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getBodyType()Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    move-result-object v15

    sget-object v16, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual/range {v15 .. v16}, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 259
    new-instance v13, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v14}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v13, v15, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .local v13, "responseEntity":Lorg/apache/http/entity/StringEntity;
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_1

    .line 265
    .end local v13    # "responseEntity":Lorg/apache/http/entity/StringEntity;
    :cond_9
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->access$0()Ljava/util/logging/Logger;

    move-result-object v15

    const-string v16, "Sending HTTP response: 404"

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 266
    const/16 v15, 0x194

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    goto/16 :goto_1
.end method

.method protected getResponseParams(Lorg/teleal/cling/model/message/UpnpOperation;)Lorg/apache/http/params/HttpParams;
    .locals 3
    .param p1, "operation"    # Lorg/teleal/cling/model/message/UpnpOperation;

    .prologue
    .line 273
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 274
    .local v0, "localParams":Lorg/apache/http/params/HttpParams;
    new-instance v1, Lorg/apache/http/params/DefaultedHttpParams;

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream$UpnpHttpService;->this$0:Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;

    iget-object v2, v2, Lorg/teleal/cling/transport/impl/apache/HttpServerConnectionUpnpStream;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method
