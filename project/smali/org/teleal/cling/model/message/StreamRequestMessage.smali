.class public Lorg/teleal/cling/model/message/StreamRequestMessage;
.super Lorg/teleal/cling/model/message/UpnpMessage;
.source "StreamRequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/UpnpMessage",
        "<",
        "Lorg/teleal/cling/model/message/UpnpRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 0
    .param p1, "source"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpMessage;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V
    .locals 1
    .param p1, "method"    # Lorg/teleal/cling/model/message/UpnpRequest$Method;
    .param p2, "uri"    # Ljava/net/URI;

    .prologue
    .line 39
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Lorg/teleal/cling/model/message/UpnpRequest$Method;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, v1, p3}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;[B)V
    .locals 2
    .param p1, "method"    # Lorg/teleal/cling/model/message/UpnpRequest$Method;
    .param p2, "uri"    # Ljava/net/URI;
    .param p3, "body"    # [B

    .prologue
    .line 65
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URI;)V

    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, v1, p3}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V
    .locals 1
    .param p1, "method"    # Lorg/teleal/cling/model/message/UpnpRequest$Method;
    .param p2, "url"    # Ljava/net/URL;

    .prologue
    .line 43
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Lorg/teleal/cling/model/message/UpnpRequest$Method;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, v1, p3}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;[B)V
    .locals 2
    .param p1, "method"    # Lorg/teleal/cling/model/message/UpnpRequest$Method;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "body"    # [B

    .prologue
    .line 69
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, v1, p3}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest;)V
    .locals 0
    .param p1, "operation"    # Lorg/teleal/cling/model/message/UpnpRequest;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest;Ljava/lang/String;)V
    .locals 1
    .param p1, "operation"    # Lorg/teleal/cling/model/message/UpnpRequest;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, p1, v0, p2}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpRequest;[B)V
    .locals 1
    .param p1, "operation"    # Lorg/teleal/cling/model/message/UpnpRequest;
    .param p2, "body"    # [B

    .prologue
    .line 61
    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, p1, v0, p2}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
