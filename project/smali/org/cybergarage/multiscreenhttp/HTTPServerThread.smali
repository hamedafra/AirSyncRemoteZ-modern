.class public Lorg/cybergarage/multiscreenhttp/HTTPServerThread;
.super Ljava/lang/Thread;
.source "HTTPServerThread.java"


# instance fields
.field private httpServer:Lorg/cybergarage/multiscreenhttp/HTTPServer;

.field private mTimeOut:I

.field private sock:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lorg/cybergarage/multiscreenhttp/HTTPServer;Ljava/net/Socket;I)V
    .locals 1
    .param p1, "httpServer"    # Lorg/cybergarage/multiscreenhttp/HTTPServer;
    .param p2, "sock"    # Ljava/net/Socket;
    .param p3, "timeOut"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPServerThread;->mTimeOut:I

    .line 37
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPServerThread;->httpServer:Lorg/cybergarage/multiscreenhttp/HTTPServer;

    .line 38
    iput-object p2, p0, Lorg/cybergarage/multiscreenhttp/HTTPServerThread;->sock:Ljava/net/Socket;

    .line 40
    iput p3, p0, Lorg/cybergarage/multiscreenhttp/HTTPServerThread;->mTimeOut:I

    .line 41
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 49
    new-instance v1, Lorg/cybergarage/multiscreenhttp/HTTPSocket;

    iget-object v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPServerThread;->sock:Ljava/net/Socket;

    iget v3, p0, Lorg/cybergarage/multiscreenhttp/HTTPServerThread;->mTimeOut:I

    invoke-direct {v1, v2, v3}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;-><init>(Ljava/net/Socket;I)V

    .line 50
    .local v1, "httpSock":Lorg/cybergarage/multiscreenhttp/HTTPSocket;
    invoke-virtual {v1}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->open()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lorg/cybergarage/multiscreenhttp/HTTPRequest;

    invoke-direct {v0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPRequest;-><init>(Lorg/cybergarage/multiscreenhttp/HTTPSocket;)V

    .line 53
    .local v0, "httpReq":Lorg/cybergarage/multiscreenhttp/HTTPRequest;
    iget-object v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPServerThread;->httpServer:Lorg/cybergarage/multiscreenhttp/HTTPServer;

    invoke-virtual {v2, v0}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->performRequestListener(Lorg/cybergarage/multiscreenhttp/HTTPRequest;)V

    .line 54
    invoke-virtual {v1}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->close()Z

    goto :goto_0
.end method
