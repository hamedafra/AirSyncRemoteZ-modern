.class public Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;
.super Lorg/apache/http/impl/DefaultHttpRequestFactory;
.source "UpnpHttpRequestFactory.java"


# static fields
.field private static final BASIC:[Ljava/lang/String;

.field private static final WITH_ENTITY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 37
    const-string v1, "SUBSCRIBE"

    aput-object v1, v0, v2

    .line 38
    const-string v1, "UNSUBSCRIBE"

    aput-object v1, v0, v3

    .line 36
    sput-object v0, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;->BASIC:[Ljava/lang/String;

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    .line 42
    const-string v1, "NOTIFY"

    aput-object v1, v0, v2

    .line 41
    sput-object v0, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;->WITH_ENTITY:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/http/impl/DefaultHttpRequestFactory;-><init>()V

    .line 47
    return-void
.end method

.method private static isOneOf([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "methods"    # [Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 55
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 51
    :cond_0
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const/4 v1, 0x1

    goto :goto_1

    .line 50
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/MethodNotSupportedException;
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;->BASIC:[Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    sget-object v0, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;->WITH_ENTITY:[Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/DefaultHttpRequestFactory;->newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public newHttpRequest(Lorg/apache/http/RequestLine;)Lorg/apache/http/HttpRequest;
    .locals 4
    .param p1, "requestline"    # Lorg/apache/http/RequestLine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/MethodNotSupportedException;
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Request line may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "method":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/transport/impl/apache/UpnpHttpRequestFactory;->newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpRequest;

    move-result-object v2

    return-object v2
.end method
