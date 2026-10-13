.class public Lorg/cybergarage/multiscreenhttp/HTTPRequest;
.super Lorg/cybergarage/multiscreenhttp/HTTPPacket;
.source "HTTPRequest.java"


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private httpSocket:Lorg/cybergarage/multiscreenhttp/HTTPSocket;

.field private method:Ljava/lang/String;

.field private requestHost:Ljava/lang/String;

.field private requestPort:I

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "org.cybergarage.http"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;-><init>()V

    .line 73
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->method:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->uri:Ljava/lang/String;

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->requestPort:I

    .line 233
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->httpSocket:Lorg/cybergarage/multiscreenhttp/HTTPSocket;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;-><init>(Ljava/io/InputStream;)V

    .line 73
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->method:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->uri:Ljava/lang/String;

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->requestPort:I

    .line 233
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->httpSocket:Lorg/cybergarage/multiscreenhttp/HTTPSocket;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/multiscreenhttp/HTTPSocket;)V
    .locals 1
    .param p1, "httpSock"    # Lorg/cybergarage/multiscreenhttp/HTTPSocket;

    .prologue
    .line 65
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;-><init>(Ljava/io/InputStream;)V

    .line 66
    invoke-direct {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setSocket(Lorg/cybergarage/multiscreenhttp/HTTPSocket;)V

    .line 67
    return-void
.end method

.method private setSocket(Lorg/cybergarage/multiscreenhttp/HTTPSocket;)V
    .locals 0
    .param p1, "value"    # Lorg/cybergarage/multiscreenhttp/HTTPSocket;

    .prologue
    .line 237
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->httpSocket:Lorg/cybergarage/multiscreenhttp/HTTPSocket;

    .line 238
    return-void
.end method


# virtual methods
.method public getFirstLineString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getVersion()Ljava/lang/String;

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

.method public getHeader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 293
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 295
    .local v1, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getFirstLineString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getHeaderString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "headerString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getSocket()Lorg/cybergarage/multiscreenhttp/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getSocket()Lorg/cybergarage/multiscreenhttp/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->method:Ljava/lang/String;

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParameterList()Lorg/cybergarage/multiscreenhttp/ParameterList;
    .locals 11

    .prologue
    .line 153
    new-instance v5, Lorg/cybergarage/multiscreenhttp/ParameterList;

    invoke-direct {v5}, Lorg/cybergarage/multiscreenhttp/ParameterList;-><init>()V

    .line 154
    .local v5, "paramList":Lorg/cybergarage/multiscreenhttp/ParameterList;
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "uri":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 172
    :cond_0
    return-object v5

    .line 157
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 158
    .local v7, "uriLen":I
    const/16 v9, 0x3f

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 159
    .local v4, "paramIdx":I
    if-ltz v4, :cond_0

    .line 161
    :goto_0
    if-lez v4, :cond_0

    .line 163
    const/16 v9, 0x3d

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 164
    .local v0, "eqIdx":I
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "name":Ljava/lang/String;
    const/16 v9, 0x26

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 167
    .local v2, "nextParamIdx":I
    add-int/lit8 v10, v0, 0x1

    if-lez v2, :cond_2

    move v9, v2

    :goto_1
    invoke-virtual {v6, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, "value":Ljava/lang/String;
    new-instance v3, Lorg/cybergarage/multiscreenhttp/Parameter;

    invoke-direct {v3, v1, v8}, Lorg/cybergarage/multiscreenhttp/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v3, "param":Lorg/cybergarage/multiscreenhttp/Parameter;
    invoke-virtual {v5, v3}, Lorg/cybergarage/multiscreenhttp/ParameterList;->add(Ljava/lang/Object;)Z

    .line 170
    move v4, v2

    goto :goto_0

    .line 167
    .end local v3    # "param":Lorg/cybergarage/multiscreenhttp/Parameter;
    .end local v8    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    goto :goto_1
.end method

.method public getParameterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getParameterList()Lorg/cybergarage/multiscreenhttp/ParameterList;

    move-result-object v0

    .line 178
    .local v0, "paramList":Lorg/cybergarage/multiscreenhttp/ParameterList;
    invoke-virtual {v0, p1}, Lorg/cybergarage/multiscreenhttp/ParameterList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRequestHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->requestHost:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestPort()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->requestPort:I

    return v0
.end method

.method public getSocket()Lorg/cybergarage/multiscreenhttp/HTTPSocket;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->httpSocket:Lorg/cybergarage/multiscreenhttp/HTTPSocket;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->uri:Ljava/lang/String;

    .line 144
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->hasFirstLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isGetRequest()Z
    .locals 1

    .prologue
    .line 97
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMethod(Ljava/lang/String;)Z
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "headerMethod":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 91
    const/4 v1, 0x0

    .line 92
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
    .line 117
    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPostRequest()Z
    .locals 1

    .prologue
    .line 102
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSOAPAction()Z
    .locals 1

    .prologue
    .line 198
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubscribeRequest()Z
    .locals 1

    .prologue
    .line 107
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUnsubscribeRequest()Z
    .locals 1

    .prologue
    .line 112
    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parseRequestLine(Ljava/lang/String;)Z
    .locals 3
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 265
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, " "

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v1

    .line 268
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setVersion(Ljava/lang/String;)V

    .line 275
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public post(Ljava/lang/String;II)Lorg/cybergarage/multiscreenhttp/HTTPResponse;
    .locals 12
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeOut"    # I

    .prologue
    .line 316
    new-instance v1, Lorg/cybergarage/multiscreenhttp/HTTPResponse;

    invoke-direct {v1}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;-><init>()V

    .line 321
    .local v1, "httpRes":Lorg/cybergarage/multiscreenhttp/HTTPResponse;
    :try_start_0
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    .line 322
    .local v6, "sock":Ljava/net/Socket;
    invoke-virtual {v6, p3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 325
    .local v8, "time":J
    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v7, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 326
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "socket connect cost time"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/multiscreenutil/Debug;->message(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 329
    .local v3, "out":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/PrintStream;

    const/4 v7, 0x0

    const-string v10, "UTF-8"

    invoke-direct {v5, v3, v7, v10}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 330
    .local v5, "pout":Ljava/io/PrintStream;
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 331
    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getContentString()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "outString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "]\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/multiscreenutil/Debug;->message(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v5}, Ljava/io/PrintStream;->flush()V

    .line 340
    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 341
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->set(Ljava/io/InputStream;)V

    .line 343
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 344
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 345
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 365
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "outString":Ljava/lang/String;
    .end local v5    # "pout":Ljava/io/PrintStream;
    .end local v6    # "sock":Ljava/net/Socket;
    .end local v8    # "time":J
    :goto_0
    return-object v1

    .line 348
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/net/ConnectException;
    sget-object v7, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception posting HTTP request: NOT_FOUND"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 351
    const/16 v7, 0x1f4

    invoke-virtual {v1, v7}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setStatusCode(I)V

    goto :goto_0

    .line 354
    .end local v0    # "e":Ljava/net/ConnectException;
    :catch_1
    move-exception v0

    .line 356
    .local v0, "e":Ljava/net/SocketException;
    sget-object v7, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception posting HTTP request: ISocketException"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 357
    const/16 v7, 0x1f4

    invoke-virtual {v1, v7}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setStatusCode(I)V

    goto :goto_0

    .line 359
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_2
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception posting HTTP request: IIOException"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 362
    const/16 v7, 0x1f4

    invoke-virtual {v1, v7}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setStatusCode(I)V

    goto :goto_0
.end method

.method public post(Lorg/cybergarage/multiscreenhttp/HTTPResponse;)V
    .locals 1
    .param p1, "httpRes"    # Lorg/cybergarage/multiscreenhttp/HTTPResponse;

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getSocket()Lorg/cybergarage/multiscreenhttp/HTTPSocket;

    move-result-object v0

    .line 310
    .local v0, "httpSock":Lorg/cybergarage/multiscreenhttp/HTTPSocket;
    invoke-virtual {v0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->post(Lorg/cybergarage/multiscreenhttp/HTTPResponse;)Z

    .line 311
    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->close()Z

    .line 312
    return-void
.end method

.method public print()V
    .locals 2

    .prologue
    .line 417
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public returnBadRequest()V
    .locals 1

    .prologue
    .line 397
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->returnResponse(I)V

    .line 398
    return-void
.end method

.method public returnOK()V
    .locals 1

    .prologue
    .line 392
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->returnResponse(I)V

    .line 393
    return-void
.end method

.method public returnResponse(I)V
    .locals 4
    .param p1, "statusCode"    # I

    .prologue
    .line 384
    new-instance v0, Lorg/cybergarage/multiscreenhttp/HTTPResponse;

    invoke-direct {v0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;-><init>()V

    .line 385
    .local v0, "httpRes":Lorg/cybergarage/multiscreenhttp/HTTPResponse;
    invoke-virtual {v0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setStatusCode(I)V

    .line 386
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setContentLength(J)V

    .line 387
    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->post(Lorg/cybergarage/multiscreenhttp/HTTPResponse;)V

    .line 388
    return-void
.end method

.method public set(Lorg/cybergarage/multiscreenhttp/HTTPRequest;)V
    .locals 1
    .param p1, "httpReq"    # Lorg/cybergarage/multiscreenhttp/HTTPRequest;

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->set(Lorg/cybergarage/multiscreenhttp/HTTPPacket;)V

    .line 375
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getSocket()Lorg/cybergarage/multiscreenhttp/HTTPSocket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setSocket(Lorg/cybergarage/multiscreenhttp/HTTPSocket;)V

    .line 376
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->method:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setRequestHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setRequestPort(I)V
    .locals 0
    .param p1, "host"    # I

    .prologue
    .line 221
    iput p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->requestPort:I

    .line 222
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setURI(Ljava/lang/String;Z)V

    .line 138
    return-void
.end method

.method public setURI(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isCheckRelativeURL"    # Z

    .prologue
    .line 128
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->uri:Ljava/lang/String;

    .line 129
    if-nez p2, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->uri:Ljava/lang/String;

    invoke-static {v0}, Lorg/cybergarage/multiscreenhttp/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 408
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getContentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
