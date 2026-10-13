.class Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$4;
.super Ljava/lang/Object;
.source "StreamClientImpl.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->createResponseHandler()Lorg/apache/http/client/ResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Lorg/teleal/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;


# direct methods
.method constructor <init>(Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$4;->this$0:Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$4;->handleResponse(Lorg/apache/http/HttpResponse;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 8
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 224
    .local v3, "statusLine":Lorg/apache/http/StatusLine;
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->access$2()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received HTTP response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 228
    new-instance v2, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(ILjava/lang/String;)V

    .line 231
    .local v2, "responseOperation":Lorg/teleal/cling/model/message/UpnpResponse;
    new-instance v1, Lorg/teleal/cling/model/message/StreamResponseMessage;

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 234
    .local v1, "responseMessage":Lorg/teleal/cling/model/message/StreamResponseMessage;
    new-instance v4, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-static {p1}, Lorg/teleal/cling/transport/impl/apache/HeaderUtil;->get(Lorg/apache/http/HttpMessage;)Lorg/teleal/common/http/Headers;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v4}, Lorg/teleal/cling/model/message/StreamResponseMessage;->setHeaders(Lorg/teleal/cling/model/message/UpnpHeaders;)V

    .line 237
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 238
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object v1

    .line 240
    :cond_1
    invoke-virtual {v1}, Lorg/teleal/cling/model/message/StreamResponseMessage;->isContentTypeMissingOrText()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->access$2()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "HTTP response message contains text entity"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 242
    sget-object v4, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->STRING:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    const-string v5, "utf-8"

    invoke-static {v0, v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/teleal/cling/model/message/StreamResponseMessage;->setBody(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_2
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->access$2()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "HTTP response message contains binary entity"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 245
    sget-object v4, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/teleal/cling/model/message/StreamResponseMessage;->setBody(Lorg/teleal/cling/model/message/UpnpMessage$BodyType;Ljava/lang/Object;)V

    goto :goto_0
.end method
