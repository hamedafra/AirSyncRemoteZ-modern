.class public Lorg/teleal/cling/model/message/StreamResponseMessage;
.super Lorg/teleal/cling/model/message/UpnpMessage;
.source "StreamResponseMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/UpnpMessage",
        "<",
        "Lorg/teleal/cling/model/message/UpnpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, v1, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/message/header/ContentTypeHeader;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "contentType"    # Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v1, p2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/common/util/MimeType;)V
    .locals 1
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "mimeType"    # Lorg/teleal/common/util/MimeType;

    .prologue
    .line 68
    new-instance v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    invoke-direct {v0, p2}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/teleal/common/util/MimeType;)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/message/header/ContentTypeHeader;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/StreamResponseMessage;)V
    .locals 0
    .param p1, "source"    # Lorg/teleal/cling/model/message/StreamResponseMessage;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpMessage;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V
    .locals 1
    .param p1, "status"    # Lorg/teleal/cling/model/message/UpnpResponse$Status;

    .prologue
    .line 36
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-direct {v0, p1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 0
    .param p1, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 1
    .param p1, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, p1, v0, p2}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse;[B)V
    .locals 1
    .param p1, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p2, "body"    # [B

    .prologue
    .line 54
    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, p1, v0, p2}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "body"    # [B

    .prologue
    .line 58
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-direct {p0, v0, v1, p1}, Lorg/teleal/cling/model/message/UpnpMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public constructor <init>([BLorg/teleal/cling/model/message/header/ContentTypeHeader;)V
    .locals 2
    .param p1, "body"    # [B
    .param p2, "contentType"    # Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>([B)V

    .line 73
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v1, p2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 74
    return-void
.end method

.method public constructor <init>([BLorg/teleal/common/util/MimeType;)V
    .locals 1
    .param p1, "body"    # [B
    .param p2, "mimeType"    # Lorg/teleal/common/util/MimeType;

    .prologue
    .line 77
    new-instance v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    invoke-direct {v0, p2}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/teleal/common/util/MimeType;)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>([BLorg/teleal/cling/model/message/header/ContentTypeHeader;)V

    .line 78
    return-void
.end method
