.class public Lorg/cybergarage/multiscreenhttp/HTTPSocket;
.super Ljava/lang/Object;
.source "HTTPSocket.java"


# instance fields
.field private sockIn:Ljava/io/InputStream;

.field private sockOut:Ljava/io/OutputStream;

.field private socket:Ljava/net/Socket;

.field private timeOut:I


# direct methods
.method public constructor <init>(Ljava/net/Socket;I)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "timeOut"    # I

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x7d0

    iput v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->timeOut:I

    .line 61
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->socket:Ljava/net/Socket;

    .line 91
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 93
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 38
    invoke-virtual {p0, p2}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->setTimeOut(I)V

    .line 39
    invoke-direct {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 40
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->open()Z

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/multiscreenhttp/HTTPSocket;I)V
    .locals 2
    .param p1, "socket"    # Lorg/cybergarage/multiscreenhttp/HTTPSocket;
    .param p2, "timeOut"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x7d0

    iput v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->timeOut:I

    .line 61
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->socket:Ljava/net/Socket;

    .line 91
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 93
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 45
    invoke-virtual {p0, p2}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->setTimeOut(I)V

    .line 46
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 47
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->setInputStream(Ljava/io/InputStream;)V

    .line 48
    invoke-direct {p1}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->setOutputStream(Ljava/io/OutputStream;)V

    .line 50
    return-void
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method private setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 98
    return-void
.end method

.method private setOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 108
    return-void
.end method

.method private setSocket(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->socket:Ljava/net/Socket;

    .line 66
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 2

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockIn:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 141
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 143
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->close()Z

    .line 55
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getTimeOut()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->timeOut:I

    return v0
.end method

.method public open()Z
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 124
    .local v1, "sock":Ljava/net/Socket;
    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getTimeOut()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 125
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 126
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->sockOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public post(Lorg/cybergarage/multiscreenhttp/HTTPResponse;)Z
    .locals 1
    .param p1, "httpRes"    # Lorg/cybergarage/multiscreenhttp/HTTPResponse;

    .prologue
    .line 217
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->hasContentInputStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getContentInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->post(Lorg/cybergarage/multiscreenhttp/HTTPResponse;Ljava/io/InputStream;)Z

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getContent()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->post(Lorg/cybergarage/multiscreenhttp/HTTPResponse;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public post(Lorg/cybergarage/multiscreenhttp/HTTPResponse;Ljava/io/InputStream;)Z
    .locals 4
    .param p1, "httpRes"    # Lorg/cybergarage/multiscreenhttp/HTTPResponse;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    .line 212
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getContentInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getContentLength()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->post(Lorg/cybergarage/multiscreenhttp/HTTPResponse;Ljava/io/InputStream;J)Z

    move-result v0

    return v0
.end method

.method public post(Lorg/cybergarage/multiscreenhttp/HTTPResponse;Ljava/io/InputStream;J)Z
    .locals 11
    .param p1, "httpRes"    # Lorg/cybergarage/multiscreenhttp/HTTPResponse;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "inLen"    # J

    .prologue
    const/4 v7, 0x0

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setDate(Ljava/util/Calendar;)V

    .line 181
    invoke-direct {p0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 185
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 186
    const-string v8, "\r\n"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 188
    invoke-static {}, Lorg/cybergarage/multiscreenhttp/HTTP;->getChunkSize()I

    move-result v0

    .line 189
    .local v0, "chunkSize":I
    new-array v3, v0, [B

    .line 190
    .local v3, "readBuf":[B
    const-wide/16 v4, 0x0

    .line 191
    .local v4, "readCnt":J
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 192
    .local v6, "readLen":I
    :goto_0
    if-lez v6, :cond_0

    cmp-long v8, v4, p3

    if-ltz v8, :cond_1

    .line 199
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 207
    const/4 v7, 0x1

    .end local v0    # "chunkSize":I
    .end local v3    # "readBuf":[B
    .end local v4    # "readCnt":J
    .end local v6    # "readLen":I
    :goto_1
    return v7

    .line 194
    .restart local v0    # "chunkSize":I
    .restart local v3    # "readBuf":[B
    .restart local v4    # "readCnt":J
    .restart local v6    # "readLen":I
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 195
    int-to-long v8, v6

    add-long/2addr v4, v8

    .line 196
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 201
    .end local v0    # "chunkSize":I
    .end local v3    # "readBuf":[B
    .end local v4    # "readCnt":J
    .end local v6    # "readLen":I
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public post(Lorg/cybergarage/multiscreenhttp/HTTPResponse;[B)Z
    .locals 3
    .param p1, "httpRes"    # Lorg/cybergarage/multiscreenhttp/HTTPResponse;
    .param p2, "content"    # [B

    .prologue
    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setDate(Ljava/util/Calendar;)V

    .line 160
    invoke-direct {p0}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 164
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 165
    const-string v2, "\r\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 166
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 167
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 169
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTimeOut(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 224
    iput p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->timeOut:I

    .line 225
    return-void
.end method
