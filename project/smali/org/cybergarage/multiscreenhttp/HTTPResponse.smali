.class public Lorg/cybergarage/multiscreenhttp/HTTPResponse;
.super Lorg/cybergarage/multiscreenhttp/HTTPPacket;
.source "HTTPResponse.java"


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->statusCode:I

    .line 30
    const-string v0, "text/html; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lorg/cybergarage/multiscreenhttp/HTTPServer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setServer(Ljava/lang/String;)V

    .line 32
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setContent(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;-><init>(Ljava/io/InputStream;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->statusCode:I

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/multiscreenhttp/HTTPResponse;)V
    .locals 1
    .param p1, "httpRes"    # Lorg/cybergarage/multiscreenhttp/HTTPResponse;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->statusCode:I

    .line 37
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->set(Lorg/cybergarage/multiscreenhttp/HTTPPacket;)V

    .line 48
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->setStatusCode(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/multiscreenhttp/HTTPSocket;)V
    .locals 1
    .param p1, "httpSock"    # Lorg/cybergarage/multiscreenhttp/HTTPSocket;

    .prologue
    .line 58
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;-><init>(Ljava/io/InputStream;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getStatusLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStatusCode()I
    .locals 3

    .prologue
    .line 74
    iget v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->statusCode:I

    if-eqz v2, :cond_0

    .line 75
    iget v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->statusCode:I

    .line 81
    :goto_0
    return v2

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "firstLine":Ljava/lang/String;
    new-instance v1, Lorg/cybergarage/multiscreenhttp/HTTPStatus;

    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "httpStatus":Lorg/cybergarage/multiscreenhttp/HTTPStatus;
    invoke-virtual {v1}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->getStatusCode()I

    move-result v2

    iput v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->statusCode:I

    .line 81
    iget v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->statusCode:I

    goto :goto_0
.end method

.method public getStatusLineString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    iget v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->statusCode:I

    invoke-static {v1}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 69
    iput p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->statusCode:I

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getStatusLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPResponse;->getContentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
