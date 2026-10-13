.class public Lorg/teleal/common/mock/http/MockHttpServletRequest;
.super Ljava/lang/Object;
.source "MockHttpServletRequest.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletRequest;


# static fields
.field public static final DEFAULT_PROTOCOL:Ljava/lang/String; = "http"

.field public static final DEFAULT_REMOTE_ADDR:Ljava/lang/String; = "127.0.0.1"

.field public static final DEFAULT_REMOTE_HOST:Ljava/lang/String; = "localhost"

.field public static final DEFAULT_SERVER_ADDR:Ljava/lang/String; = "127.0.0.1"

.field public static final DEFAULT_SERVER_NAME:Ljava/lang/String; = "localhost"

.field public static final DEFAULT_SERVER_PORT:I = 0x50


# instance fields
.field private active:Z

.field private final attributes:Ljava/util/Hashtable;

.field private authType:Ljava/lang/String;

.field private characterEncoding:Ljava/lang/String;

.field private content:[B

.field private contentType:Ljava/lang/String;

.field private contextPath:Ljava/lang/String;

.field private cookies:[Ljavax/servlet/http/Cookie;

.field private final headers:Ljava/util/Hashtable;

.field private localAddr:Ljava/lang/String;

.field private localName:Ljava/lang/String;

.field private localPort:I

.field private final locales:Ljava/util/Vector;

.field private method:Ljava/lang/String;

.field private final parameters:Ljava/util/Map;

.field private pathInfo:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private queryParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queryString:Ljava/lang/String;

.field private remoteAddr:Ljava/lang/String;

.field private remoteHost:Ljava/lang/String;

.field private remotePort:I

.field private remoteUser:Ljava/lang/String;

.field private requestURI:Ljava/lang/String;

.field private requestedSessionIdFromCookie:Z

.field private requestedSessionIdFromURL:Z

.field private requestedSessionIdValid:Z

.field private scheme:Ljava/lang/String;

.field private secure:Z

.field private serverName:Ljava/lang/String;

.field private serverPort:I

.field private final servletContext:Ljavax/servlet/ServletContext;

.field private servletPath:Ljava/lang/String;

.field private session:Ljavax/servlet/http/HttpSession;

.field private userPrincipal:Ljava/security/Principal;

.field private userRoles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 192
    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lorg/teleal/common/mock/http/MockHttpServletRequest;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "requestURI"    # Ljava/lang/String;

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/teleal/common/mock/http/MockHttpServletRequest;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletContext;)V
    .locals 2
    .param p1, "servletContext"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 219
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lorg/teleal/common/mock/http/MockHttpServletRequest;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "servletContext"    # Ljavax/servlet/ServletContext;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "requestURI"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x50

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v3, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->active:Z

    .line 98
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->attributes:Ljava/util/Hashtable;

    .line 106
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->parameters:Ljava/util/Map;

    .line 108
    const-string v0, "http"

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->protocol:Ljava/lang/String;

    .line 110
    const-string v0, "http"

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->scheme:Ljava/lang/String;

    .line 112
    const-string v0, "localhost"

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->serverName:Ljava/lang/String;

    .line 114
    iput v4, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->serverPort:I

    .line 116
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->remoteAddr:Ljava/lang/String;

    .line 118
    const-string v0, "localhost"

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->remoteHost:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->locales:Ljava/util/Vector;

    .line 125
    iput-boolean v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->secure:Z

    .line 129
    iput v4, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->remotePort:I

    .line 131
    const-string v0, "localhost"

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->localName:Ljava/lang/String;

    .line 133
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->localAddr:Ljava/lang/String;

    .line 135
    iput v4, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->localPort:I

    .line 149
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->headers:Ljava/util/Hashtable;

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->contextPath:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->queryParameters:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->userRoles:Ljava/util/Set;

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->servletPath:Ljava/lang/String;

    .line 173
    iput-boolean v3, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->requestedSessionIdValid:Z

    .line 175
    iput-boolean v3, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->requestedSessionIdFromCookie:Z

    .line 177
    iput-boolean v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->requestedSessionIdFromURL:Z

    .line 235
    if-eqz p1, :cond_0

    .end local p1    # "servletContext":Ljavax/servlet/ServletContext;
    :goto_0
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->servletContext:Ljavax/servlet/ServletContext;

    .line 236
    iput-object p2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->method:Ljava/lang/String;

    .line 237
    iput-object p3, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->requestURI:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->locales:Ljava/util/Vector;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v0, "Accept"

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    return-void

    .line 235
    .restart local p1    # "servletContext":Ljavax/servlet/ServletContext;
    :cond_0
    new-instance p1, Lorg/teleal/common/mock/http/MockServletContext;

    .end local p1    # "servletContext":Ljavax/servlet/ServletContext;
    invoke-direct {p1}, Lorg/teleal/common/mock/http/MockServletContext;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpSession;)V
    .locals 2
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 249
    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lorg/teleal/common/mock/http/MockHttpServletRequest;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/util/Set;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/util/Set;)V
    .locals 6
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;
    .param p2, "principalName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/http/HttpSession;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p3, "principalRoles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    new-array v4, v0, [Ljavax/servlet/http/Cookie;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/teleal/common/mock/http/MockHttpServletRequest;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/util/Set;[Ljavax/servlet/http/Cookie;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/util/Set;[Ljavax/servlet/http/Cookie;Ljava/lang/String;)V
    .locals 2
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;
    .param p2, "principalName"    # Ljava/lang/String;
    .param p4, "cookies"    # [Ljavax/servlet/http/Cookie;
    .param p5, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/http/HttpSession;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljavax/servlet/http/Cookie;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "principalRoles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 259
    const-string v1, ""

    invoke-direct {p0, v0, p5, v1}, Lorg/teleal/common/mock/http/MockHttpServletRequest;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->session:Ljavax/servlet/http/HttpSession;

    .line 262
    if-nez p2, :cond_0

    :goto_0
    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->userPrincipal:Ljava/security/Principal;

    .line 272
    iput-object p3, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->userRoles:Ljava/util/Set;

    .line 273
    iput-object p4, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->cookies:[Ljavax/servlet/http/Cookie;

    .line 276
    const-string v0, "Accept"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->addHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    return-void

    .line 262
    :cond_0
    new-instance v0, Lorg/teleal/common/mock/http/MockHttpServletRequest$1;

    invoke-direct {v0, p0, p2}, Lorg/teleal/common/mock/http/MockHttpServletRequest$1;-><init>(Lorg/teleal/common/mock/http/MockHttpServletRequest;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 2
    .param p1, "cookie"    # Ljavax/servlet/http/Cookie;

    .prologue
    .line 764
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->cookies:[Ljavax/servlet/http/Cookie;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljavax/servlet/http/Cookie;

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->cookies:[Ljavax/servlet/http/Cookie;

    .line 765
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->cookies:[Ljavax/servlet/http/Cookie;

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->cookies:[Ljavax/servlet/http/Cookie;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 766
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 788
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->headers:Ljava/util/Hashtable;

    invoke-static {v1, p1}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getByName(Ljava/util/Map;Ljava/lang/String;)Lorg/teleal/common/mock/http/HeaderValueHolder;

    move-result-object v0

    .line 789
    .local v0, "header":Lorg/teleal/common/mock/http/HeaderValueHolder;
    if-nez v0, :cond_0

    .line 791
    new-instance v0, Lorg/teleal/common/mock/http/HeaderValueHolder;

    .end local v0    # "header":Lorg/teleal/common/mock/http/HeaderValueHolder;
    invoke-direct {v0}, Lorg/teleal/common/mock/http/HeaderValueHolder;-><init>()V

    .line 792
    .restart local v0    # "header":Lorg/teleal/common/mock/http/HeaderValueHolder;
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->headers:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    :cond_0
    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 796
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lorg/teleal/common/mock/http/HeaderValueHolder;->addValues(Ljava/util/Collection;)V

    .line 806
    :goto_0
    return-void

    .line 798
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 800
    invoke-virtual {v0, p2}, Lorg/teleal/common/mock/http/HeaderValueHolder;->addValueArray(Ljava/lang/Object;)V

    goto :goto_0

    .line 804
    :cond_2
    invoke-virtual {v0, p2}, Lorg/teleal/common/mock/http/HeaderValueHolder;->addValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 443
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->addParameter(Ljava/lang/String;[Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public addParameter(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 453
    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->parameters:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 454
    .local v1, "oldArr":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 456
    array-length v2, v1

    array-length v3, p2

    add-int/2addr v2, v3

    new-array v0, v2, [Ljava/lang/String;

    .line 457
    .local v0, "newArr":[Ljava/lang/String;
    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    array-length v2, v1

    array-length v3, p2

    invoke-static {p2, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->parameters:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .end local v0    # "newArr":[Ljava/lang/String;
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->parameters:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addParameters(Ljava/util/Map;)V
    .locals 6
    .param p1, "params"    # Ljava/util/Map;

    .prologue
    .line 474
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 477
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 478
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 480
    check-cast v1, Ljava/lang/String;

    .end local v1    # "key":Ljava/lang/Object;
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 482
    .restart local v1    # "key":Ljava/lang/Object;
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, v2, [Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 484
    check-cast v1, Ljava/lang/String;

    .end local v1    # "key":Ljava/lang/Object;
    check-cast v2, [Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->addParameter(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 488
    .restart local v1    # "key":Ljava/lang/Object;
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parameter map value must be single value  or array of type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 492
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public addPreferredLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 664
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->locales:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 665
    return-void
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 542
    invoke-virtual {p0, p1, p2}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->queryParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    return-void
.end method

.method public addRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 962
    invoke-virtual {p0, p1}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->addUserRole(Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method public addUserRole(Ljava/lang/String;)V
    .locals 1
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 967
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->userRoles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 968
    return-void
.end method

.method protected checkActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->active:Z

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request is not active anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    return-void
.end method

.method public clearAttributes()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 657
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->active:Z

    .line 307
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->checkActive()V

    .line 338
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->checkActive()V

    .line 344
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->authType:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->content:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->content:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->contextPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->contextPath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/project"

    goto :goto_0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->cookies:[Ljavax/servlet/http/Cookie;

    return-object v0
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 810
    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->headers:Ljava/util/Hashtable;

    invoke-static {v2, p1}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getByName(Ljava/util/Map;Ljava/lang/String;)Lorg/teleal/common/mock/http/HeaderValueHolder;

    move-result-object v0

    .line 811
    .local v0, "header":Lorg/teleal/common/mock/http/HeaderValueHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 812
    .local v1, "value":Ljava/lang/Object;
    :goto_0
    instance-of v2, v1, Ljava/util/Date;

    if-eqz v2, :cond_1

    .line 814
    check-cast v1, Ljava/util/Date;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 827
    :goto_1
    return-wide v2

    .line 811
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 816
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 818
    check-cast v1, Ljava/lang/Number;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_1

    .line 820
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_2
    if-eqz v1, :cond_3

    .line 822
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value for header \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is neither a Date nor a Number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 827
    :cond_3
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 833
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->headers:Ljava/util/Hashtable;

    invoke-static {v1, p1}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getByName(Ljava/util/Map;Ljava/lang/String;)Lorg/teleal/common/mock/http/HeaderValueHolder;

    move-result-object v0

    .line 834
    .local v0, "header":Lorg/teleal/common/mock/http/HeaderValueHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->headers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 853
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->headers:Ljava/util/Hashtable;

    invoke-static {v1, p1}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getByName(Ljava/util/Map;Ljava/lang/String;)Lorg/teleal/common/mock/http/HeaderValueHolder;

    move-result-object v0

    .line 854
    .local v0, "header":Lorg/teleal/common/mock/http/HeaderValueHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getValues()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 839
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 841
    .local v1, "headerValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v5, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->headers:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "o":Ljava/lang/Object;
    move-object v0, v3

    .line 843
    check-cast v0, Ljava/util/Map$Entry;

    .line 844
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/teleal/common/mock/http/HeaderValueHolder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/common/mock/http/HeaderValueHolder;

    invoke-virtual {v5}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/common/mock/http/HeaderValueHolder;

    invoke-virtual {v5}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v4, v5

    check-cast v4, [Ljava/lang/String;

    .line 845
    .local v4, "values":[Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 848
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/teleal/common/mock/http/HeaderValueHolder;>;"
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->content:[B

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Lorg/teleal/common/mock/http/DelegatingServletInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->content:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/teleal/common/mock/http/DelegatingServletInputStream;-><init>(Ljava/io/InputStream;)V

    .line 385
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 864
    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->headers:Ljava/util/Hashtable;

    invoke-static {v2, p1}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getByName(Ljava/util/Map;Ljava/lang/String;)Lorg/teleal/common/mock/http/HeaderValueHolder;

    move-result-object v0

    .line 865
    .local v0, "header":Lorg/teleal/common/mock/http/HeaderValueHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 866
    .local v1, "value":Ljava/lang/Object;
    :goto_0
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 868
    check-cast v1, Ljava/lang/Number;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 880
    :goto_1
    return v2

    .line 865
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 870
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 872
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 874
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_2
    if-eqz v1, :cond_3

    .line 876
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value for header \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not a Number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 880
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->localAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->localPort:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->locales:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public getLocales()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->locales:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 512
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->parameters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 513
    .local v0, "arr":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 523
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->pathInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->pathInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->pathInfo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->queryParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 926
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->getQueryParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->queryString:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 929
    .local v2, "q":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->queryString:Ljava/lang/String;

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->getQueryParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 932
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 937
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 939
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 941
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 943
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "q":Ljava/lang/StringBuilder;
    :goto_1
    return-object v3

    :cond_3
    iget-object v3, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->queryString:Ljava/lang/String;

    goto :goto_1
.end method

.method public getReader()Ljava/io/BufferedReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 599
    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->content:[B

    if-eqz v2, :cond_1

    .line 601
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->content:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 602
    .local v1, "sourceStream":Ljava/io/InputStream;
    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->characterEncoding:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->characterEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 604
    .local v0, "sourceReader":Ljava/io/Reader;
    :goto_0
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 608
    .end local v0    # "sourceReader":Ljava/io/Reader;
    .end local v1    # "sourceStream":Ljava/io/InputStream;
    :goto_1
    return-object v2

    .line 602
    .restart local v1    # "sourceStream":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 608
    .end local v1    # "sourceStream":Ljava/io/InputStream;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 694
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->remoteAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->remoteHost:Ljava/lang/String;

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->remotePort:I

    return v0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->remoteUser:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 689
    new-instance v0, Lorg/teleal/common/mock/http/MockRequestDispatcher;

    invoke-direct {v0, p1}, Lorg/teleal/common/mock/http/MockRequestDispatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->requestURI:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 3

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->scheme:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v0, "url":Ljava/lang/StringBuffer;
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->serverName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->serverPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1005
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1006
    return-object v0
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 987
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v0

    .line 988
    .local v0, "session":Ljavax/servlet/http/HttpSession;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->serverPort:I

    return v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->servletContext:Ljavax/servlet/ServletContext;

    return-object v0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->servletPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 1049
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Ljavax/servlet/http/HttpSession;
    .locals 2
    .param p1, "create"    # Z

    .prologue
    .line 1033
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->checkActive()V

    .line 1035
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->session:Ljavax/servlet/http/HttpSession;

    instance-of v0, v0, Lorg/teleal/common/mock/http/MockHttpSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->session:Ljavax/servlet/http/HttpSession;

    check-cast v0, Lorg/teleal/common/mock/http/MockHttpSession;

    invoke-virtual {v0}, Lorg/teleal/common/mock/http/MockHttpSession;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->session:Ljavax/servlet/http/HttpSession;

    .line 1040
    :cond_0
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->session:Ljavax/servlet/http/HttpSession;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 1042
    new-instance v0, Lorg/teleal/common/mock/http/MockHttpSession;

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->servletContext:Ljavax/servlet/ServletContext;

    invoke-direct {v0, v1}, Lorg/teleal/common/mock/http/MockHttpSession;-><init>(Ljavax/servlet/ServletContext;)V

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->session:Ljavax/servlet/http/HttpSession;

    .line 1044
    :cond_1
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->session:Ljavax/servlet/http/HttpSession;

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->userPrincipal:Ljava/security/Principal;

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 314
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->close()V

    .line 315
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->clearAttributes()V

    .line 316
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->active:Z

    return v0
.end method

.method public isAllParametersInQueryString()Z
    .locals 1

    .prologue
    .line 1088
    const/4 v0, 0x1

    return v0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 1

    .prologue
    .line 1069
    iget-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->requestedSessionIdFromCookie:Z

    return v0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 1

    .prologue
    .line 1079
    iget-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->requestedSessionIdFromURL:Z

    return v0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 1

    .prologue
    .line 1084
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->isRequestedSessionIdFromURL()Z

    move-result v0

    return v0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 1

    .prologue
    .line 1059
    iget-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->requestedSessionIdValid:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->secure:Z

    return v0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 1
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 972
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->userRoles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAllParameters()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 508
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 647
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->checkActive()V

    .line 648
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    return-void
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 499
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    return-void
.end method

.method public removeQueryParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->removeParameter(Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->queryParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 634
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->checkActive()V

    .line 635
    if-eqz p2, :cond_0

    .line 637
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 0
    .param p1, "authType"    # Ljava/lang/String;

    .prologue
    .line 744
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->authType:Ljava/lang/String;

    .line 745
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "characterEncoding"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->characterEncoding:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setContent([B)V
    .locals 0
    .param p1, "content"    # [B

    .prologue
    .line 359
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->content:[B

    .line 360
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->contentType:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextPath"    # Ljava/lang/String;

    .prologue
    .line 911
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->contextPath:Ljava/lang/String;

    .line 912
    return-void
.end method

.method public setCookies([Ljavax/servlet/http/Cookie;)V
    .locals 0
    .param p1, "cookies"    # [Ljavax/servlet/http/Cookie;

    .prologue
    .line 754
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->cookies:[Ljavax/servlet/http/Cookie;

    .line 755
    return-void
.end method

.method public setLocalAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "localAddr"    # Ljava/lang/String;

    .prologue
    .line 719
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->localAddr:Ljava/lang/String;

    .line 720
    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .locals 0
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 709
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->localName:Ljava/lang/String;

    .line 710
    return-void
.end method

.method public setLocalPort(I)V
    .locals 0
    .param p1, "localPort"    # I

    .prologue
    .line 729
    iput p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->localPort:I

    .line 730
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 886
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->method:Ljava/lang/String;

    .line 887
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 396
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->setParameter(Ljava/lang/String;[Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public setParameter(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 406
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 6
    .param p1, "params"    # Ljava/util/Map;

    .prologue
    .line 416
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 418
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 419
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 420
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 422
    check-cast v1, Ljava/lang/String;

    .end local v1    # "key":Ljava/lang/Object;
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    .restart local v1    # "key":Ljava/lang/Object;
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, v2, [Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 426
    check-cast v1, Ljava/lang/String;

    .end local v1    # "key":Ljava/lang/Object;
    check-cast v2, [Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/teleal/common/mock/http/MockHttpServletRequest;->setParameter(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 430
    .restart local v1    # "key":Ljava/lang/Object;
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parameter map value must be single value  or array of type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public setPathInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathInfo"    # Ljava/lang/String;

    .prologue
    .line 896
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->pathInfo:Ljava/lang/String;

    .line 897
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 559
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->protocol:Ljava/lang/String;

    .line 560
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 921
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->queryString:Ljava/lang/String;

    .line 922
    return-void
.end method

.method public setRemoteAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteAddr"    # Ljava/lang/String;

    .prologue
    .line 614
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->remoteAddr:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteHost"    # Ljava/lang/String;

    .prologue
    .line 624
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->remoteHost:Ljava/lang/String;

    .line 625
    return-void
.end method

.method public setRemotePort(I)V
    .locals 0
    .param p1, "remotePort"    # I

    .prologue
    .line 699
    iput p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->remotePort:I

    .line 700
    return-void
.end method

.method public setRemoteUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "remoteUser"    # Ljava/lang/String;

    .prologue
    .line 948
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->remoteUser:Ljava/lang/String;

    .line 949
    return-void
.end method

.method public setRequestURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestURI"    # Ljava/lang/String;

    .prologue
    .line 993
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->requestURI:Ljava/lang/String;

    .line 994
    return-void
.end method

.method public setRequestedSessionIdFromCookie(Z)V
    .locals 0
    .param p1, "requestedSessionIdFromCookie"    # Z

    .prologue
    .line 1064
    iput-boolean p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->requestedSessionIdFromCookie:Z

    .line 1065
    return-void
.end method

.method public setRequestedSessionIdFromURL(Z)V
    .locals 0
    .param p1, "requestedSessionIdFromURL"    # Z

    .prologue
    .line 1074
    iput-boolean p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->requestedSessionIdFromURL:Z

    .line 1075
    return-void
.end method

.method public setRequestedSessionIdValid(Z)V
    .locals 0
    .param p1, "requestedSessionIdValid"    # Z

    .prologue
    .line 1054
    iput-boolean p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->requestedSessionIdValid:Z

    .line 1055
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 569
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->scheme:Ljava/lang/String;

    .line 570
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "secure"    # Z

    .prologue
    .line 679
    iput-boolean p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->secure:Z

    .line 680
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    .line 579
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->serverName:Ljava/lang/String;

    .line 580
    return-void
.end method

.method public setServerPort(I)V
    .locals 0
    .param p1, "serverPort"    # I

    .prologue
    .line 589
    iput p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->serverPort:I

    .line 590
    return-void
.end method

.method public setServletPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "servletPath"    # Ljava/lang/String;

    .prologue
    .line 1011
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->servletPath:Ljava/lang/String;

    .line 1012
    return-void
.end method

.method public setSession(Ljavax/servlet/http/HttpSession;)V
    .locals 0
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 1028
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->session:Ljavax/servlet/http/HttpSession;

    .line 1029
    return-void
.end method

.method public setUserPrincipal(Ljava/security/Principal;)V
    .locals 0
    .param p1, "userPrincipal"    # Ljava/security/Principal;

    .prologue
    .line 977
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletRequest;->userPrincipal:Ljava/security/Principal;

    .line 978
    return-void
.end method
