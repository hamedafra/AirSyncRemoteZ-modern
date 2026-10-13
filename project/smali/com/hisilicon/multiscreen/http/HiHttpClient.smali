.class public Lcom/hisilicon/multiscreen/http/HiHttpClient;
.super Ljava/lang/Object;
.source "HiHttpClient.java"


# instance fields
.field private mHostIp:Ljava/lang/String;

.field private mPort:I

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mHostIp:Ljava/lang/String;

    .line 18
    const/16 v0, 0x50

    iput v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mPort:I

    .line 20
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mTimeout:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "hostIp"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeOut"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mHostIp:Ljava/lang/String;

    .line 18
    const/16 v0, 0x50

    iput v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mPort:I

    .line 20
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mTimeout:I

    .line 40
    iput-object p1, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mHostIp:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mPort:I

    .line 42
    iput p3, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mTimeout:I

    .line 43
    return-void
.end method

.method private getWrongEmptyResponse(I)Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    .locals 2
    .param p1, "statusCode"    # I

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "retHiResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    const/4 v0, 0x0

    .line 231
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    .end local v1    # "retHiResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    invoke-direct {v1, p1, v0}, Lcom/hisilicon/multiscreen/http/HiHttpResponse;-><init>(ILjava/lang/String;)V

    .line 233
    .restart local v1    # "retHiResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    return-object v1
.end method


# virtual methods
.method public debugOff()V
    .locals 0

    .prologue
    .line 251
    invoke-static {}, Lorg/cybergarage/multiscreenutil/Debug;->off()V

    .line 252
    return-void
.end method

.method public debugOn()V
    .locals 0

    .prologue
    .line 242
    invoke-static {}, Lorg/cybergarage/multiscreenutil/Debug;->on()V

    .line 243
    return-void
.end method

.method public getHostIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mHostIp:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mPort:I

    return v0
.end method

.method public getTimeOut()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mTimeout:I

    return v0
.end method

.method public sendRequest(Ljava/lang/String;)Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, "retHiResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    const/4 v2, 0x0

    .line 201
    .local v2, "retHttpResponse":Lorg/cybergarage/multiscreenhttp/HTTPResponse;
    if-nez p1, :cond_0

    .line 203
    const/16 v3, 0x194

    invoke-direct {p0, v3}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->getWrongEmptyResponse(I)Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    move-result-object v3

    .line 224
    :goto_0
    return-object v3

    .line 206
    :cond_0
    iget-object v3, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mHostIp:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 208
    const/16 v3, 0x1f4

    invoke-direct {p0, v3}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->getWrongEmptyResponse(I)Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    move-result-object v3

    goto :goto_0

    .line 210
    :cond_1
    new-instance v0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;

    invoke-direct {v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;-><init>()V

    .line 211
    .local v0, "request":Lorg/cybergarage/multiscreenhttp/HTTPRequest;
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 212
    const-string v3, "/"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 213
    const-string v3, "1.0"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setVersion(Ljava/lang/String;)V

    .line 214
    const-string v3, "close"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setConnection(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setContent(Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mHostIp:Ljava/lang/String;

    iget v4, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mPort:I

    iget v5, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mTimeout:I

    invoke-virtual {v0, v3, v4, v5}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->post(Ljava/lang/String;II)Lorg/cybergarage/multiscreenhttp/HTTPResponse;

    move-result-object v2

    .line 218
    new-instance v1, Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    .line 219
    .end local v1    # "retHiResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    invoke-virtual {v2}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getContent()[B

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/hisilicon/multiscreen/http/HiHttpResponse;-><init>(I[B)V

    .line 220
    .restart local v1    # "retHiResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    invoke-virtual {v2}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getContentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->setResponseMessage(Ljava/lang/String;)V

    move-object v3, v1

    .line 224
    goto :goto_0
.end method

.method public sendRequest(Ljava/lang/String;II[B)Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeOut"    # I
    .param p4, "msg"    # [B

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "retHiResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    const/4 v2, 0x0

    .line 121
    .local v2, "retHttpResponse":Lorg/cybergarage/multiscreenhttp/HTTPResponse;
    if-eqz p4, :cond_0

    array-length v3, p4

    if-nez v3, :cond_1

    .line 123
    :cond_0
    const/16 v3, 0x194

    invoke-direct {p0, v3}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->getWrongEmptyResponse(I)Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    move-result-object v3

    .line 144
    :goto_0
    return-object v3

    .line 126
    :cond_1
    if-nez p1, :cond_2

    .line 128
    const/16 v3, 0x1f4

    invoke-direct {p0, v3}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->getWrongEmptyResponse(I)Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    move-result-object v3

    goto :goto_0

    .line 131
    :cond_2
    new-instance v0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;

    invoke-direct {v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;-><init>()V

    .line 132
    .local v0, "request":Lorg/cybergarage/multiscreenhttp/HTTPRequest;
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 133
    const-string v3, "/"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 134
    const-string v3, "1.0"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setVersion(Ljava/lang/String;)V

    .line 135
    const-string v3, "close"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setConnection(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p4}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setContent([B)V

    .line 137
    invoke-virtual {v0, p1, p2, p3}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->post(Ljava/lang/String;II)Lorg/cybergarage/multiscreenhttp/HTTPResponse;

    move-result-object v2

    .line 139
    new-instance v1, Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    .line 140
    .end local v1    # "retHiResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    invoke-virtual {v2}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getContent()[B

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/hisilicon/multiscreen/http/HiHttpResponse;-><init>(I[B)V

    .line 141
    .restart local v1    # "retHiResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    invoke-virtual {v2}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getContentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->setResponseMessage(Ljava/lang/String;)V

    move-object v3, v1

    .line 144
    goto :goto_0
.end method

.method public sendRequest([B)Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    .locals 6
    .param p1, "msg"    # [B

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, "retHiResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    const/4 v2, 0x0

    .line 161
    .local v2, "retHttpResponse":Lorg/cybergarage/multiscreenhttp/HTTPResponse;
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 163
    :cond_0
    const/16 v3, 0x194

    invoke-direct {p0, v3}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->getWrongEmptyResponse(I)Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    move-result-object v3

    .line 185
    :goto_0
    return-object v3

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mHostIp:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 168
    const/16 v3, 0x1f4

    invoke-direct {p0, v3}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->getWrongEmptyResponse(I)Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    move-result-object v3

    goto :goto_0

    .line 171
    :cond_2
    new-instance v0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;

    invoke-direct {v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;-><init>()V

    .line 172
    .local v0, "request":Lorg/cybergarage/multiscreenhttp/HTTPRequest;
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 173
    const-string v3, "/"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 174
    const-string v3, "1.0"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setVersion(Ljava/lang/String;)V

    .line 175
    const-string v3, "close"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setConnection(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->setContent([B)V

    .line 177
    iget-object v3, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mHostIp:Ljava/lang/String;

    iget v4, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mPort:I

    iget v5, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mTimeout:I

    invoke-virtual {v0, v3, v4, v5}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->post(Ljava/lang/String;II)Lorg/cybergarage/multiscreenhttp/HTTPResponse;

    move-result-object v2

    .line 179
    new-instance v1, Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    .line 180
    .end local v1    # "retHiResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    invoke-virtual {v2}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getContent()[B

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/hisilicon/multiscreen/http/HiHttpResponse;-><init>(I[B)V

    .line 181
    .restart local v1    # "retHiResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    invoke-virtual {v2}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getContentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->setResponseMessage(Ljava/lang/String;)V

    move-object v3, v1

    .line 185
    goto :goto_0
.end method

.method public setHostIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostIp"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mHostIp:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mPort:I

    .line 73
    return-void
.end method

.method public setTimeOut(I)V
    .locals 0
    .param p1, "timeOut"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/hisilicon/multiscreen/http/HiHttpClient;->mTimeout:I

    .line 93
    return-void
.end method
