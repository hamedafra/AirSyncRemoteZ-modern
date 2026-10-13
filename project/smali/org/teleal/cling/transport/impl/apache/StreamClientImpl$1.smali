.class Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$1;
.super Lorg/apache/http/client/methods/HttpGet;
.source "StreamClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->createHttpRequest(Lorg/teleal/cling/model/message/UpnpMessage;Lorg/teleal/cling/model/message/UpnpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;


# direct methods
.method constructor <init>(Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;Ljava/net/URI;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/net/URI;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$1;->this$0:Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;

    .line 171
    invoke-direct {p0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->getHttpName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
