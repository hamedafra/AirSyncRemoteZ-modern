.class public abstract Lorg/teleal/cling/model/message/UpnpMessage;
.super Ljava/lang/Object;
.source "UpnpMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/model/message/UpnpMessage$BodyType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lorg/teleal/cling/model/message/UpnpOperation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private body:Ljava/lang/Object;

.field private bodyType:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

.field private headers:Lorg/teleal/cling/model/message/UpnpHeaders;

.field private operation:Lorg/teleal/cling/model/message/UpnpOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private udaMajorVersion:I

.field private udaMinorVersion:I


# direct methods
.method protected constructor <init>(Lorg/teleal/cling/model/message/UpnpMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/message/UpnpMessage",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    .local p1, "source":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->udaMajorVersion:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->udaMinorVersion:I

    .line 51
    new-instance v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->headers:Lorg/teleal/cling/model/message/UpnpHeaders;

    .line 53
    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->bodyType:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    .line 56
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->operation:Lorg/teleal/cling/model/message/UpnpOperation;

    .line 57
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->headers:Lorg/teleal/cling/model/message/UpnpHeaders;

    .line 58
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->getBody()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->body:Ljava/lang/Object;

    .line 59
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->getBodyType()Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->bodyType:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    .line 60
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->getUdaMajorVersion()I

    move-result v0

    iput v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->udaMajorVersion:I

    .line 61
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->getUdaMinorVersion()I

    move-result v0

    iput v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->udaMinorVersion:I

    .line 62
    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/model/message/UpnpOperation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    .local p1, "operation":Lorg/teleal/cling/model/message/UpnpOperation;, "TO;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->udaMajorVersion:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->udaMinorVersion:I

    .line 51
    new-instance v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->headers:Lorg/teleal/cling/model/message/UpnpHeaders;

    .line 53
    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->bodyType:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    .line 65
    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->operation:Lorg/teleal/cling/model/message/UpnpOperation;

    .line 66
    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/model/message/UpnpOperation;Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V
    .locals 1
    .param p3, "body"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Lorg/teleal/cling/model/message/UpnpMessage$BodyType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    .local p1, "operation":Lorg/teleal/cling/model/message/UpnpOperation;, "TO;"
    .local p2, "bodyType":Lorg/teleal/cling/model/message/UpnpMessage$BodyType;, "Lorg/teleal/cling/model/message/UpnpMessage$BodyType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->udaMajorVersion:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->udaMinorVersion:I

    .line 51
    new-instance v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->headers:Lorg/teleal/cling/model/message/UpnpHeaders;

    .line 53
    sget-object v0, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->bodyType:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    .line 69
    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->operation:Lorg/teleal/cling/model/message/UpnpOperation;

    .line 70
    iput-object p2, p0, Lorg/teleal/cling/model/message/UpnpMessage;->bodyType:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    .line 71
    iput-object p3, p0, Lorg/teleal/cling/model/message/UpnpMessage;->body:Ljava/lang/Object;

    .line 72
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public getBodyBytes()[B
    .locals 3

    .prologue
    .line 145
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->hasBody()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getBodyType()Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v1, v2}, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBodyString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->hasBody()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getBodyType()Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v1, v2}, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getBody()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 136
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBodyType()Lorg/teleal/cling/model/message/UpnpMessage$BodyType;
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->bodyType:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    return-object v0
.end method

.method public getContentTypeCharset()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getContentTypeHeader()Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    move-result-object v0

    .line 186
    .local v0, "ct":Lorg/teleal/cling/model/message/header/ContentTypeHeader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/common/util/MimeType;

    invoke-virtual {v1}, Lorg/teleal/common/util/MimeType;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "charset"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentTypeHeader()Lorg/teleal/cling/model/message/header/ContentTypeHeader;
    .locals 3

    .prologue
    .line 171
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    return-object v0
.end method

.method public getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->headers:Lorg/teleal/cling/model/message/UpnpHeaders;

    return-object v0
.end method

.method public getOperation()Lorg/teleal/cling/model/message/UpnpOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->operation:Lorg/teleal/cling/model/message/UpnpOperation;

    return-object v0
.end method

.method public getUdaMajorVersion()I
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    iget v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->udaMajorVersion:I

    return v0
.end method

.method public getUdaMinorVersion()I
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    iget v0, p0, Lorg/teleal/cling/model/message/UpnpMessage;->udaMinorVersion:I

    return v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getBody()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHostHeader()Z
    .locals 2

    .prologue
    .line 190
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentTypeMissingOrText()Z
    .locals 3

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    const/4 v1, 0x1

    .line 159
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getContentTypeHeader()Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    move-result-object v0

    .line 164
    .local v0, "contentTypeHeader":Lorg/teleal/cling/model/message/header/ContentTypeHeader;
    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->isText()Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isContentTypeText()Z
    .locals 2

    .prologue
    .line 175
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getContentTypeHeader()Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    move-result-object v0

    .line 176
    .local v0, "ct":Lorg/teleal/cling/model/message/header/ContentTypeHeader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->isText()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isContentTypeTextUDA()Z
    .locals 2

    .prologue
    .line 180
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getContentTypeHeader()Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    move-result-object v0

    .line 181
    .local v0, "ct":Lorg/teleal/cling/model/message/header/ContentTypeHeader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->isUDACompliantXML()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBody(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V
    .locals 0
    .param p2, "body"    # Ljava/lang/Object;

    .prologue
    .line 103
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    .local p1, "bodyType":Lorg/teleal/cling/model/message/UpnpMessage$BodyType;, "Lorg/teleal/cling/model/message/UpnpMessage$BodyType;"
    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->bodyType:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    .line 104
    iput-object p2, p0, Lorg/teleal/cling/model/message/UpnpMessage;->body:Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public setBodyCharacters([B)V
    .locals 3
    .param p1, "characterData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 108
    .line 109
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    sget-object v1, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    .line 110
    new-instance v2, Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getContentTypeCharset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getContentTypeCharset()Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    invoke-direct {v2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 108
    invoke-virtual {p0, v1, v2}, Lorg/teleal/cling/model/message/UpnpMessage;->setBody(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    .line 117
    return-void

    .line 114
    :cond_0
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method public setBodyType(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;)V
    .locals 0

    .prologue
    .line 128
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    .local p1, "bodyType":Lorg/teleal/cling/model/message/UpnpMessage$BodyType;, "Lorg/teleal/cling/model/message/UpnpMessage$BodyType;"
    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->bodyType:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    .line 129
    return-void
.end method

.method public setHeaders(Lorg/teleal/cling/model/message/UpnpHeaders;)V
    .locals 0
    .param p1, "headers"    # Lorg/teleal/cling/model/message/UpnpHeaders;

    .prologue
    .line 95
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    iput-object p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->headers:Lorg/teleal/cling/model/message/UpnpHeaders;

    .line 96
    return-void
.end method

.method public setUdaMajorVersion(I)V
    .locals 0
    .param p1, "udaMajorVersion"    # I

    .prologue
    .line 79
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    iput p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->udaMajorVersion:I

    .line 80
    return-void
.end method

.method public setUdaMinorVersion(I)V
    .locals 0
    .param p1, "udaMinorVersion"    # I

    .prologue
    .line 87
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    iput p1, p0, Lorg/teleal/cling/model/message/UpnpMessage;->udaMinorVersion:I

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    .local p0, "this":Lorg/teleal/cling/model/message/UpnpMessage;, "Lorg/teleal/cling/model/message/UpnpMessage<TO;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
