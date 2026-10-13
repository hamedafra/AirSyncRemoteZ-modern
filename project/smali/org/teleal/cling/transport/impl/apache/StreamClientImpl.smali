.class public Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;
.super Ljava/lang/Object;
.source "StreamClientImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/StreamClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/teleal/cling/transport/spi/StreamClient",
        "<",
        "Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$teleal$cling$model$message$UpnpRequest$Method:[I

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final clientConnectionManager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

.field protected final configuration:Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

.field protected final globalParams:Lorg/apache/http/params/HttpParams;

.field protected final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static synthetic $SWITCH_TABLE$org$teleal$cling$model$message$UpnpRequest$Method()[I
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->$SWITCH_TABLE$org$teleal$cling$model$message$UpnpRequest$Method:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->values()[Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->MSEARCH:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->POST:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->$SWITCH_TABLE$org$teleal$cling$model$message$UpnpRequest$Method:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/teleal/cling/transport/spi/StreamClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;)V
    .locals 6
    .param p1, "configuration"    # Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    .line 78
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->configuration:Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    .line 80
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->getMaxTotalConnections()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 81
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->getConnectionTimeoutSeconds()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 82
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->getDataReadTimeoutSeconds()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 83
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->getContentCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->getSocketBufferSize()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 91
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->getSocketBufferSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 93
    :cond_0
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->getStaleCheckingEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 97
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 98
    .local v0, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 99
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->clientConnectionManager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 100
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->clientConnectionManager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 101
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->getRequestRetryCount()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 102
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->getRequestRetryCount()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 122
    :cond_1
    return-void
.end method

.method static synthetic access$2()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected createHttpRequest(Lorg/teleal/cling/model/message/UpnpMessage;Lorg/teleal/cling/model/message/UpnpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4
    .param p1, "upnpMessage"    # Lorg/teleal/cling/model/message/UpnpMessage;
    .param p2, "upnpRequestOperation"    # Lorg/teleal/cling/model/message/UpnpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/MethodNotSupportedException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->$SWITCH_TABLE$org$teleal$cling$model$message$UpnpRequest$Method()[I

    move-result-object v2

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/UpnpRequest;->getMethod()Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 198
    :pswitch_0
    new-instance v2, Lorg/apache/http/MethodNotSupportedException;

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :pswitch_1
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 196
    :goto_0
    return-object v1

    .line 171
    :pswitch_2
    new-instance v1, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$1;

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$1;-><init>(Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;Ljava/net/URI;)V

    goto :goto_0

    .line 178
    :pswitch_3
    new-instance v1, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$2;

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$2;-><init>(Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;Ljava/net/URI;)V

    goto :goto_0

    .line 185
    :pswitch_4
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 186
    .local v1, "post":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->createHttpRequestEntity(Lorg/teleal/cling/model/message/UpnpMessage;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 187
    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    .line 189
    .end local v1    # "post":Lorg/apache/http/HttpEntityEnclosingRequest;
    :pswitch_5
    new-instance v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$3;

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$3;-><init>(Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;Ljava/net/URI;)V

    .line 195
    .local v0, "notify":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->createHttpRequestEntity(Lorg/teleal/cling/model/message/UpnpMessage;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 196
    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local v0    # "notify":Lorg/apache/http/HttpEntityEnclosingRequest;
    move-object v1, v0

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected createHttpRequestEntity(Lorg/teleal/cling/model/message/UpnpMessage;)Lorg/apache/http/HttpEntity;
    .locals 4
    .param p1, "upnpMessage"    # Lorg/teleal/cling/model/message/UpnpMessage;

    .prologue
    .line 204
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->getBodyType()Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    move-result-object v2

    sget-object v3, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->BYTES:Lorg/teleal/cling/model/message/UpnpMessage$BodyType;

    invoke-virtual {v2, v3}, Lorg/teleal/cling/model/message/UpnpMessage$BodyType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    sget-object v2, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v3, "Preparing HTTP request entity as byte[]"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 206
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->getBodyBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 211
    :goto_0
    return-object v2

    .line 208
    :cond_0
    sget-object v2, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v3, "Preparing HTTP request entity as string"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 210
    :try_start_0
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->getContentTypeCharset()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "charset":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpMessage;->getBodyString()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    .end local v0    # "charset":Ljava/lang/String;
    :goto_1
    invoke-direct {v2, v3, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 214
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 211
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "charset":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v0, "UTF-8"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected createResponseHandler()Lorg/apache/http/client/ResponseHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/client/ResponseHandler",
            "<",
            "Lorg/teleal/cling/model/message/StreamResponseMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$4;

    invoke-direct {v0, p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl$4;-><init>(Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;)V

    return-object v0
.end method

.method public getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->configuration:Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/teleal/cling/transport/spi/StreamClientConfiguration;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestParams(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/apache/http/params/HttpParams;
    .locals 4
    .param p1, "requestMessage"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    .line 254
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 257
    .local v0, "localParams":Lorg/apache/http/params/HttpParams;
    const-string v2, "http.protocol.version"

    .line 258
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest;->getHttpMinorVersion()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    .line 256
    :goto_0
    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 266
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;

    move-result-object v1

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUdaMajorVersion()I

    move-result v2

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUdaMinorVersion()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;->getUserAgentValue(II)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 269
    new-instance v1, Lorg/apache/http/params/DefaultedHttpParams;

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->globalParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    return-object v1

    .line 258
    :cond_0
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    goto :goto_0
.end method

.method public sendRequest(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 7
    .param p1, "requestMessage"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/UpnpRequest;

    .line 132
    .local v2, "requestOperation":Lorg/teleal/cling/model/message/UpnpRequest;
    sget-object v3, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Preparing HTTP request message with method \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/UpnpRequest;->getHttpMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 137
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->createHttpRequest(Lorg/teleal/cling/model/message/UpnpMessage;Lorg/teleal/cling/model/message/UpnpRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 140
    .local v1, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {p0, p1}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->getRequestParams(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 141
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/teleal/cling/transport/impl/apache/HeaderUtil;->add(Lorg/apache/http/HttpMessage;Lorg/teleal/common/http/Headers;)V

    .line 143
    sget-object v3, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sending HTTP request: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->createResponseHandler()Lorg/apache/http/client/ResponseHandler;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/message/StreamResponseMessage;
    :try_end_0
    .catch Lorg/apache/http/MethodNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 155
    .end local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    return-object v3

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "ex":Lorg/apache/http/MethodNotSupportedException;
    sget-object v3, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Request aborted: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/MethodNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v3, v4

    .line 148
    goto :goto_0

    .line 149
    .end local v0    # "ex":Lorg/apache/http/MethodNotSupportedException;
    :catch_1
    move-exception v0

    .line 150
    .local v0, "ex":Lorg/apache/http/client/ClientProtocolException;
    sget-object v3, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HTTP protocol exception executing request: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 151
    sget-object v3, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cause: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v3, v4

    .line 152
    goto :goto_0

    .line 153
    .end local v0    # "ex":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 154
    .local v0, "ex":Ljava/io/IOException;
    sget-object v3, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Client connection was aborted: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v3, v4

    .line 155
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Shutting down HTTP client connection manager/pool"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;->clientConnectionManager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V

    .line 163
    return-void
.end method
