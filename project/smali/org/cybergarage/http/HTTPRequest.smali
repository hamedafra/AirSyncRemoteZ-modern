.class public Lorg/cybergarage/http/HTTPRequest;
.super Lorg/cybergarage/http/HTTPPacket;
.source "HTTPRequest.java"


# instance fields
.field private httpSocket:Lorg/cybergarage/http/HTTPSocket;

.field private mTimeoutConnect:I

.field private mTimeoutRead:I

.field private method:Ljava/lang/String;

.field private postSocket:Ljava/net/Socket;

.field private requestHost:Ljava/lang/String;

.field private requestPort:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v0, 0x7d0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lorg/cybergarage/http/HTTPPacket;-><init>()V

    .line 82
    iput v0, p0, Lorg/cybergarage/http/HTTPRequest;->mTimeoutConnect:I

    .line 84
    iput v0, p0, Lorg/cybergarage/http/HTTPRequest;->mTimeoutRead:I

    .line 106
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestPort:I

    .line 259
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->httpSocket:Lorg/cybergarage/http/HTTPSocket;

    .line 409
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 88
    const-string v0, "1.0"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->setVersion(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/16 v0, 0x7d0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lorg/cybergarage/http/HTTPPacket;-><init>(Ljava/io/InputStream;)V

    .line 82
    iput v0, p0, Lorg/cybergarage/http/HTTPRequest;->mTimeoutConnect:I

    .line 84
    iput v0, p0, Lorg/cybergarage/http/HTTPRequest;->mTimeoutRead:I

    .line 106
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestPort:I

    .line 259
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->httpSocket:Lorg/cybergarage/http/HTTPSocket;

    .line 409
    iput-object v1, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPSocket;)V
    .locals 1
    .param p1, "httpSock"    # Lorg/cybergarage/http/HTTPSocket;

    .prologue
    .line 98
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/http/HTTPRequest;-><init>(Ljava/io/InputStream;)V

    .line 99
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPRequest;->setSocket(Lorg/cybergarage/http/HTTPSocket;)V

    .line 100
    return-void
.end method


# virtual methods
.method public getFirstLineString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->hasFirstLine()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 325
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lorg/cybergarage/http/HTTPPacket;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 340
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 342
    .local v1, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getFirstLineString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHeaderString()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "headerString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParameterList()Lorg/cybergarage/http/ParameterList;
    .locals 10

    .prologue
    .line 191
    new-instance v5, Lorg/cybergarage/http/ParameterList;

    invoke-direct {v5}, Lorg/cybergarage/http/ParameterList;-><init>()V

    .line 192
    .local v5, "paramList":Lorg/cybergarage/http/ParameterList;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "uri":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 209
    :cond_0
    return-object v5

    .line 195
    :cond_1
    const/16 v8, 0x3f

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 196
    .local v4, "paramIdx":I
    if-ltz v4, :cond_0

    .line 198
    :goto_0
    if-lez v4, :cond_0

    .line 200
    const/16 v8, 0x3d

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 201
    .local v0, "eqIdx":I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "name":Ljava/lang/String;
    const/16 v8, 0x26

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 203
    .local v2, "nextParamIdx":I
    add-int/lit8 v9, v0, 0x1

    if-lez v2, :cond_2

    move v8, v2

    .line 204
    :goto_1
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "value":Ljava/lang/String;
    new-instance v3, Lorg/cybergarage/http/Parameter;

    invoke-direct {v3, v1, v7}, Lorg/cybergarage/http/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v3, "param":Lorg/cybergarage/http/Parameter;
    invoke-virtual {v5, v3}, Lorg/cybergarage/http/ParameterList;->add(Ljava/lang/Object;)Z

    .line 207
    move v4, v2

    .line 208
    goto :goto_0

    .line 204
    .end local v3    # "param":Lorg/cybergarage/http/Parameter;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_1
.end method

.method public getParameterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getParameterList()Lorg/cybergarage/http/ParameterList;

    move-result-object v0

    .line 215
    .local v0, "paramList":Lorg/cybergarage/http/ParameterList;
    invoke-virtual {v0, p1}, Lorg/cybergarage/http/ParameterList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRequestHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestPort()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lorg/cybergarage/http/HTTPRequest;->requestPort:I

    return v0
.end method

.method public getSocket()Lorg/cybergarage/http/HTTPSocket;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->httpSocket:Lorg/cybergarage/http/HTTPSocket;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 182
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isGetRequest()Z
    .locals 1

    .prologue
    .line 130
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHeadRequest()Z
    .locals 1

    .prologue
    .line 140
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKeepAlive()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 356
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->isCloseConnection()Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v2

    .line 358
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->isKeepAliveConnection()Z

    move-result v4

    if-ne v4, v3, :cond_2

    move v2, v3

    .line 359
    goto :goto_0

    .line 360
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "httpVer":Ljava/lang/String;
    const-string v4, "1.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v3

    .line 362
    .local v1, "isHTTP10":Z
    :goto_1
    if-eq v1, v3, :cond_0

    move v2, v3

    .line 364
    goto :goto_0

    .end local v1    # "isHTTP10":Z
    :cond_3
    move v1, v2

    .line 361
    goto :goto_1
.end method

.method public isMethod(Ljava/lang/String;)Z
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "headerMethod":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 124
    const/4 v1, 0x0

    .line 125
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isNotifyRequest()Z
    .locals 1

    .prologue
    .line 155
    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPostRequest()Z
    .locals 1

    .prologue
    .line 135
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSOAPAction()Z
    .locals 1

    .prologue
    .line 224
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubscribeRequest()Z
    .locals 1

    .prologue
    .line 145
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUnsubscribeRequest()Z
    .locals 1

    .prologue
    .line 150
    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parseRequestLine(Ljava/lang/String;)Z
    .locals 3
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 305
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, " "

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v1

    .line 308
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPRequest;->setVersion(Ljava/lang/String;)V

    .line 315
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public post(Ljava/lang/String;I)Lorg/cybergarage/http/HTTPResponse;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/http/HTTPRequest;->post(Ljava/lang/String;IZ)Lorg/cybergarage/http/HTTPResponse;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;IZ)Lorg/cybergarage/http/HTTPResponse;
    .locals 15
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "isKeepAlive"    # Z

    .prologue
    .line 413
    new-instance v6, Lorg/cybergarage/http/HTTPResponse;

    invoke-direct {v6}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 415
    .local v6, "httpRes":Lorg/cybergarage/http/HTTPResponse;
    invoke-virtual/range {p0 .. p1}, Lorg/cybergarage/http/HTTPRequest;->setHost(Ljava/lang/String;)V

    .line 417
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_8

    const-string v12, "Keep-Alive"

    :goto_0
    invoke-virtual {p0, v12}, Lorg/cybergarage/http/HTTPRequest;->setConnection(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->isHeadRequest()Z

    move-result v9

    .line 421
    .local v9, "isHeaderRequest":Z
    const/4 v10, 0x0

    .line 422
    .local v10, "out":Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 426
    .local v7, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-nez v12, :cond_0

    .line 429
    new-instance v12, Ljava/net/Socket;

    invoke-direct {v12}, Ljava/net/Socket;-><init>()V

    iput-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 431
    iget-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    new-instance v13, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v13, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v14, p0, Lorg/cybergarage/http/HTTPRequest;->mTimeoutConnect:I

    invoke-virtual {v12, v13, v14}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 432
    iget-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    iget v13, p0, Lorg/cybergarage/http/HTTPRequest;->mTimeoutRead:I

    invoke-virtual {v12, v13}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 436
    :cond_0
    iget-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v12}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 437
    new-instance v11, Ljava/io/PrintStream;

    invoke-direct {v11, v10}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 438
    .local v11, "pout":Ljava/io/PrintStream;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 439
    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->isChunked()Z

    move-result v8

    .line 443
    .local v8, "isChunkedRequest":Z
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getContentString()Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "content":Ljava/lang/String;
    const/4 v4, 0x0

    .line 445
    .local v4, "contentLength":I
    if-eqz v3, :cond_1

    .line 446
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 448
    :cond_1
    if-lez v4, :cond_3

    .line 450
    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    .line 454
    int-to-long v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "chunSizeBuf":Ljava/lang/String;
    invoke-virtual {v11, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 456
    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 458
    .end local v2    # "chunSizeBuf":Ljava/lang/String;
    :cond_2
    invoke-virtual {v11, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 459
    const/4 v12, 0x1

    if-ne v8, v12, :cond_3

    .line 460
    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 463
    :cond_3
    const/4 v12, 0x1

    if-ne v8, v12, :cond_4

    .line 465
    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 466
    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 469
    :cond_4
    invoke-virtual {v11}, Ljava/io/PrintStream;->flush()V

    .line 471
    iget-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v12}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 472
    invoke-virtual {v6, v7, v9}, Lorg/cybergarage/http/HTTPResponse;->set(Ljava/io/InputStream;Z)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    if-nez p3, :cond_7

    .line 492
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 498
    :goto_1
    if-eqz v7, :cond_5

    .line 501
    :try_start_2
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 507
    :cond_5
    :goto_2
    if-eqz v10, :cond_6

    .line 510
    :try_start_3
    iget-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    .line 516
    :cond_6
    :goto_3
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 520
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "contentLength":I
    .end local v8    # "isChunkedRequest":Z
    .end local v11    # "pout":Ljava/io/PrintStream;
    :cond_7
    :goto_4
    return-object v6

    .line 417
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v9    # "isHeaderRequest":Z
    .end local v10    # "out":Ljava/io/OutputStream;
    :cond_8
    const-string v12, "close"

    goto/16 :goto_0

    .line 474
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v9    # "isHeaderRequest":Z
    .restart local v10    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v5

    .line 476
    .local v5, "e":Ljava/net/SocketException;
    const/16 v12, 0x1f4

    :try_start_4
    invoke-virtual {v6, v12}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 477
    invoke-static {v5}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 488
    if-nez p3, :cond_7

    .line 492
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 498
    :goto_5
    if-eqz v7, :cond_9

    .line 501
    :try_start_6
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 507
    :cond_9
    :goto_6
    if-eqz v10, :cond_a

    .line 510
    :try_start_7
    iget-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    .line 516
    :cond_a
    :goto_7
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    goto :goto_4

    .line 479
    .end local v5    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v5

    .line 483
    .local v5, "e":Ljava/io/IOException;
    const/16 v12, 0x1f4

    :try_start_8
    invoke-virtual {v6, v12}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 484
    invoke-static {v5}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 488
    if-nez p3, :cond_7

    .line 492
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 498
    :goto_8
    if-eqz v7, :cond_b

    .line 501
    :try_start_a
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 507
    :cond_b
    :goto_9
    if-eqz v10, :cond_c

    .line 510
    :try_start_b
    iget-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 516
    :cond_c
    :goto_a
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    goto :goto_4

    .line 488
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    if-nez p3, :cond_f

    .line 492
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 498
    :goto_b
    if-eqz v7, :cond_d

    .line 501
    :try_start_d
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 507
    :cond_d
    :goto_c
    if-eqz v10, :cond_e

    .line 510
    :try_start_e
    iget-object v13, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v13}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 516
    :cond_e
    :goto_d
    const/4 v13, 0x0

    iput-object v13, p0, Lorg/cybergarage/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    :cond_f
    throw v12

    .line 494
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v4    # "contentLength":I
    .restart local v8    # "isChunkedRequest":Z
    .restart local v11    # "pout":Ljava/io/PrintStream;
    :catch_2
    move-exception v12

    goto :goto_1

    .line 503
    :catch_3
    move-exception v12

    goto :goto_2

    .line 494
    .end local v3    # "content":Ljava/lang/String;
    .end local v4    # "contentLength":I
    .end local v8    # "isChunkedRequest":Z
    .end local v11    # "pout":Ljava/io/PrintStream;
    .local v5, "e":Ljava/net/SocketException;
    :catch_4
    move-exception v12

    goto :goto_5

    .line 503
    :catch_5
    move-exception v12

    goto :goto_6

    .line 494
    .local v5, "e":Ljava/io/IOException;
    :catch_6
    move-exception v12

    goto :goto_8

    .line 503
    :catch_7
    move-exception v12

    goto :goto_9

    .line 494
    .end local v5    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v13

    goto :goto_b

    .line 503
    :catch_9
    move-exception v13

    goto :goto_c

    .line 512
    :catch_a
    move-exception v13

    goto :goto_d

    .restart local v5    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v12

    goto :goto_a

    .local v5, "e":Ljava/net/SocketException;
    :catch_c
    move-exception v12

    goto :goto_7

    .end local v5    # "e":Ljava/net/SocketException;
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v4    # "contentLength":I
    .restart local v8    # "isChunkedRequest":Z
    .restart local v11    # "pout":Ljava/io/PrintStream;
    :catch_d
    move-exception v12

    goto :goto_3
.end method

.method public post(Lorg/cybergarage/http/HTTPResponse;)Z
    .locals 17
    .param p1, "httpRes"    # Lorg/cybergarage/http/HTTPResponse;

    .prologue
    .line 382
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v10

    .line 383
    .local v10, "httpSock":Lorg/cybergarage/http/HTTPSocket;
    const-wide/16 v12, 0x0

    .line 384
    .local v12, "offset":J
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/http/HTTPResponse;->getContentLength()J

    move-result-wide v8

    .line 385
    .local v8, "length":J
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPRequest;->hasContentRange()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 387
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPRequest;->getContentRangeFirstPosition()J

    move-result-wide v4

    .line 388
    .local v4, "firstPos":J
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPRequest;->getContentRangeLastPosition()J

    move-result-wide v6

    .line 391
    .local v6, "lastPos":J
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-gtz v2, :cond_0

    .line 392
    const-wide/16 v2, 0x1

    sub-long v6, v8, v2

    .line 393
    :cond_0
    cmp-long v2, v4, v8

    if-gtz v2, :cond_1

    cmp-long v2, v6, v8

    if-lez v2, :cond_2

    .line 394
    :cond_1
    const/16 v2, 0x1a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/cybergarage/http/HTTPRequest;->returnResponse(I)Z

    move-result v2

    .line 401
    .end local v4    # "firstPos":J
    .end local v6    # "lastPos":J
    :goto_0
    return v2

    .restart local v4    # "firstPos":J
    .restart local v6    # "lastPos":J
    :cond_2
    move-object/from16 v3, p1

    .line 395
    invoke-virtual/range {v3 .. v9}, Lorg/cybergarage/http/HTTPResponse;->setContentRange(JJJ)V

    .line 396
    const/16 v2, 0xce

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 398
    move-wide v12, v4

    .line 399
    sub-long v2, v6, v4

    const-wide/16 v14, 0x1

    add-long v8, v2, v14

    .line 401
    .end local v4    # "firstPos":J
    .end local v6    # "lastPos":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPRequest;->isHeadRequest()Z

    move-result v16

    move-object/from16 v11, p1

    move-wide v14, v8

    invoke-virtual/range {v10 .. v16}, Lorg/cybergarage/http/HTTPSocket;->post(Lorg/cybergarage/http/HTTPResponse;JJZ)Z

    move-result v2

    goto :goto_0
.end method

.method public print()V
    .locals 2

    .prologue
    .line 580
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public read()Z
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->read(Lorg/cybergarage/http/HTTPSocket;)Z

    move-result v0

    return v0
.end method

.method public returnBadRequest()Z
    .locals 1

    .prologue
    .line 560
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnOK()Z
    .locals 1

    .prologue
    .line 555
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnResponse(I)Z
    .locals 4
    .param p1, "statusCode"    # I

    .prologue
    .line 547
    new-instance v0, Lorg/cybergarage/http/HTTPResponse;

    invoke-direct {v0}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 548
    .local v0, "httpRes":Lorg/cybergarage/http/HTTPResponse;
    invoke-virtual {v0, p1}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 549
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/http/HTTPResponse;->setContentLength(J)V

    .line 550
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    move-result v1

    return v1
.end method

.method public set(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 1
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 537
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPRequest;->set(Lorg/cybergarage/http/HTTPPacket;)V

    .line 538
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getSocket()Lorg/cybergarage/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPRequest;->setSocket(Lorg/cybergarage/http/HTTPSocket;)V

    .line 539
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->method:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setRequestHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setRequestPort(I)V
    .locals 0
    .param p1, "host"    # I

    .prologue
    .line 247
    iput p1, p0, Lorg/cybergarage/http/HTTPRequest;->requestPort:I

    .line 248
    return-void
.end method

.method public setSocket(Lorg/cybergarage/http/HTTPSocket;)V
    .locals 0
    .param p1, "value"    # Lorg/cybergarage/http/HTTPSocket;

    .prologue
    .line 263
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->httpSocket:Lorg/cybergarage/http/HTTPSocket;

    .line 264
    return-void
.end method

.method public setTimeoutConnect(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 291
    iput p1, p0, Lorg/cybergarage/http/HTTPRequest;->mTimeoutConnect:I

    .line 292
    return-void
.end method

.method public setTimeoutRead(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 296
    iput p1, p0, Lorg/cybergarage/http/HTTPRequest;->mTimeoutRead:I

    .line 297
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPRequest;->setURI(Ljava/lang/String;Z)V

    .line 176
    return-void
.end method

.method public setURI(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isCheckRelativeURL"    # Z

    .prologue
    .line 166
    iput-object p1, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 167
    if-nez p2, :cond_0

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    invoke-static {v0}, Lorg/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPRequest;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 569
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 571
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPRequest;->getContentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
