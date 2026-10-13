.class public Lcom/hisilicon/multiscreen/http/HiHttpServer;
.super Ljava/lang/Object;
.source "HiHttpServer.java"

# interfaces
.implements Lorg/cybergarage/multiscreenhttp/HTTPRequestListener;


# static fields
.field public static final HTTP_SERVER_DEFAULT_PORT:I = 0x50

.field public static final HTTP_SERVER_DEFAULT_TIME_OUT:I = 0x3e8

.field public static final MAX_USER_PORT:I = 0xbfff

.field public static final MIN_USER_PORT:I = 0x400


# instance fields
.field private mHiHttpRecvMsgListener:Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;

.field private mHttpServerList:Lorg/cybergarage/multiscreenhttp/HTTPServerList;

.field private mServerPort:I

.field private mSocketTimeOut:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x50

    iput v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mServerPort:I

    .line 53
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mSocketTimeOut:I

    .line 59
    iput-object v1, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHiHttpRecvMsgListener:Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;

    .line 61
    iput-object v1, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHttpServerList:Lorg/cybergarage/multiscreenhttp/HTTPServerList;

    .line 84
    return-void
.end method

.method public constructor <init>(ILcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "listener"    # Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/multiscreen/http/HiHttpException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x50

    iput v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mServerPort:I

    .line 53
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mSocketTimeOut:I

    .line 59
    iput-object v1, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHiHttpRecvMsgListener:Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;

    .line 61
    iput-object v1, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHttpServerList:Lorg/cybergarage/multiscreenhttp/HTTPServerList;

    .line 73
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/http/HiHttpServer;->setServerPort(I)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/hisilicon/multiscreen/http/HiHttpServer;->setHttpRecvMsgListener(Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;)V

    .line 75
    return-void
.end method


# virtual methods
.method public debugOff()V
    .locals 0

    .prologue
    .line 253
    invoke-static {}, Lorg/cybergarage/multiscreenutil/Debug;->off()V

    .line 254
    return-void
.end method

.method public debugOn()V
    .locals 0

    .prologue
    .line 244
    invoke-static {}, Lorg/cybergarage/multiscreenutil/Debug;->on()V

    .line 245
    return-void
.end method

.method public getHttpRecvMsgListener()Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHiHttpRecvMsgListener:Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mServerPort:I

    return v0
.end method

.method public getSocketTimeOut()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mSocketTimeOut:I

    return v0
.end method

.method public httpRequestReceived(Lorg/cybergarage/multiscreenhttp/HTTPRequest;)V
    .locals 5
    .param p1, "httpReq"    # Lorg/cybergarage/multiscreenhttp/HTTPRequest;

    .prologue
    .line 185
    const/4 v2, 0x0

    .line 187
    .local v2, "sendMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHiHttpRecvMsgListener:Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;

    if-nez v3, :cond_0

    .line 189
    new-instance v3, Lcom/hisilicon/multiscreen/http/HiHttpException;

    const-string v4, "HttpRecvMsgListener is null!"

    invoke-direct {v3, v4}, Lcom/hisilicon/multiscreen/http/HiHttpException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_0
    const/4 v1, 0x0

    .line 199
    .local v1, "remoteIP":Ljava/lang/String;
    iget-object v3, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHiHttpRecvMsgListener:Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;

    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->getContent()[B

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;->onHttpMsgReceived([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    if-nez v2, :cond_1

    .line 203
    new-instance v3, Lcom/hisilicon/multiscreen/http/HiHttpException;

    const-string v4, "http Response is null!"

    invoke-direct {v3, v4}, Lcom/hisilicon/multiscreen/http/HiHttpException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    :cond_1
    new-instance v0, Lorg/cybergarage/multiscreenhttp/HTTPResponse;

    invoke-direct {v0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;-><init>()V

    .line 207
    .local v0, "httpRes":Lorg/cybergarage/multiscreenhttp/HTTPResponse;
    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setStatusCode(I)V

    .line 208
    const-string v3, "1.0"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setVersion(Ljava/lang/String;)V

    .line 209
    const-string v3, "close"

    invoke-virtual {v0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setConnection(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, v2}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setContent(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1, v0}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;->post(Lorg/cybergarage/multiscreenhttp/HTTPResponse;)V

    .line 213
    return-void
.end method

.method public setHttpRecvMsgListener(Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHiHttpRecvMsgListener:Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;

    .line 123
    return-void
.end method

.method public setServerPort(I)V
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/multiscreen/http/HiHttpException;
        }
    .end annotation

    .prologue
    .line 95
    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    const v0, 0xbfff

    if-le p1, v0, :cond_1

    .line 97
    :cond_0
    new-instance v0, Lcom/hisilicon/multiscreen/http/HiHttpException;

    const-string v1, "wrong port range!"

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/http/HiHttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    iput p1, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mServerPort:I

    .line 101
    return-void
.end method

.method public setSocketTimeOut(I)V
    .locals 0
    .param p1, "timeOut"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mSocketTimeOut:I

    .line 225
    return-void
.end method

.method public startServer()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHttpServerList:Lorg/cybergarage/multiscreenhttp/HTTPServerList;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lorg/cybergarage/multiscreenhttp/HTTPServerList;

    invoke-direct {v0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHttpServerList:Lorg/cybergarage/multiscreenhttp/HTTPServerList;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHttpServerList:Lorg/cybergarage/multiscreenhttp/HTTPServerList;

    iget v1, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mServerPort:I

    iget v2, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mSocketTimeOut:I

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->open(II)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHttpServerList:Lorg/cybergarage/multiscreenhttp/HTTPServerList;

    invoke-virtual {v0, p0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->addRequestListener(Lorg/cybergarage/multiscreenhttp/HTTPRequestListener;)V

    .line 151
    iget-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHttpServerList:Lorg/cybergarage/multiscreenhttp/HTTPServerList;

    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->start()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v0, "Fail to open HttpServerList, it is BindException."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopServer()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHttpServerList:Lorg/cybergarage/multiscreenhttp/HTTPServerList;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHttpServerList:Lorg/cybergarage/multiscreenhttp/HTTPServerList;

    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->close()V

    .line 169
    iget-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHttpServerList:Lorg/cybergarage/multiscreenhttp/HTTPServerList;

    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->stop()V

    .line 172
    iget-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHttpServerList:Lorg/cybergarage/multiscreenhttp/HTTPServerList;

    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPServerList;->clear()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpServer;->mHttpServerList:Lorg/cybergarage/multiscreenhttp/HTTPServerList;

    .line 175
    :cond_0
    return-void
.end method
