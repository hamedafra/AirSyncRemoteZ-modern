.class public Lorg/teleal/common/mock/http/MockHttpServletResponse;
.super Ljava/lang/Object;
.source "MockHttpServletResponse.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponsePrintWriter;,
        Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponseServletOutputStream;
    }
.end annotation


# static fields
.field private static final CHARSET_PREFIX:Ljava/lang/String; = "charset="

.field public static final DEFAULT_SERVER_PORT:I = 0x50


# instance fields
.field private bufferSize:I

.field private characterEncoding:Ljava/lang/String;

.field private committed:Z

.field private final content:Ljava/io/ByteArrayOutputStream;

.field private contentLength:I

.field private contentType:Ljava/lang/String;

.field private final cookies:Ljava/util/List;

.field private forwardedUrl:Ljava/lang/String;

.field private final headers:Ljava/util/Map;

.field private includedUrl:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private final outputStream:Ljavax/servlet/ServletOutputStream;

.field private outputStreamAccessAllowed:Z

.field private redirectedUrl:Ljava/lang/String;

.field private status:I

.field private statusMessage:Ljava/lang/String;

.field private writer:Ljava/io/PrintWriter;

.field private writerAccessAllowed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->outputStreamAccessAllowed:Z

    .line 61
    iput-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->writerAccessAllowed:Z

    .line 63
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->characterEncoding:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->content:Ljava/io/ByteArrayOutputStream;

    .line 67
    new-instance v0, Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponseServletOutputStream;

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->content:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0, v1}, Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponseServletOutputStream;-><init>(Lorg/teleal/common/mock/http/MockHttpServletResponse;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->outputStream:Ljavax/servlet/ServletOutputStream;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->contentLength:I

    .line 75
    const/16 v0, 0x1000

    iput v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->bufferSize:I

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->locale:Ljava/util/Locale;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->cookies:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->headers:Ljava/util/Map;

    .line 93
    const/16 v0, 0xc8

    iput v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->status:I

    .line 483
    return-void
.end method

.method static synthetic access$000(Lorg/teleal/common/mock/http/MockHttpServletResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/teleal/common/mock/http/MockHttpServletResponse;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setCommittedIfBufferSizeExceeded()V

    return-void
.end method

.method private addHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->doAddHeaderValue(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 400
    return-void
.end method

.method private doAddHeaderValue(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "replace"    # Z

    .prologue
    .line 403
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->headers:Ljava/util/Map;

    invoke-static {v1, p1}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getByName(Ljava/util/Map;Ljava/lang/String;)Lorg/teleal/common/mock/http/HeaderValueHolder;

    move-result-object v0

    .line 404
    .local v0, "header":Lorg/teleal/common/mock/http/HeaderValueHolder;
    if-nez v0, :cond_0

    .line 405
    new-instance v0, Lorg/teleal/common/mock/http/HeaderValueHolder;

    .end local v0    # "header":Lorg/teleal/common/mock/http/HeaderValueHolder;
    invoke-direct {v0}, Lorg/teleal/common/mock/http/HeaderValueHolder;-><init>()V

    .line 406
    .restart local v0    # "header":Lorg/teleal/common/mock/http/HeaderValueHolder;
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->headers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_0
    if-eqz p3, :cond_1

    .line 409
    invoke-virtual {v0, p2}, Lorg/teleal/common/mock/http/HeaderValueHolder;->setValue(Ljava/lang/Object;)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-virtual {v0, p2}, Lorg/teleal/common/mock/http/HeaderValueHolder;->addValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setCommittedIfBufferSizeExceeded()V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->getBufferSize()I

    move-result v0

    .line 224
    .local v0, "bufSize":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 225
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setCommitted(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method private setHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 395
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->doAddHeaderValue(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 396
    return-void
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 1
    .param p1, "cookie"    # Ljavax/servlet/http/Cookie;

    .prologue
    .line 263
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->cookies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 375
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->addHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->addHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 391
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->addHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 281
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->headers:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getByName(Ljava/util/Map;Ljava/lang/String;)Lorg/teleal/common/mock/http/HeaderValueHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 318
    return-object p1
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flushBuffer()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setCommitted(Z)V

    .line 213
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->bufferSize:I

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentAsByteArray()[B
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->flushBuffer()V

    .line 167
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getContentAsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->flushBuffer()V

    .line 173
    :try_start_0
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->characterEncoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->content:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->characterEncoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->contentLength:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCookie(Ljava/lang/String;)Ljavax/servlet/http/Cookie;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->cookies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/Cookie;

    .line 273
    .local v0, "cookie":Ljavax/servlet/http/Cookie;
    invoke-virtual {v0}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    .end local v0    # "cookie":Ljavax/servlet/http/Cookie;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->cookies:Ljava/util/List;

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->cookies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/servlet/http/Cookie;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/servlet/http/Cookie;

    check-cast v0, [Ljavax/servlet/http/Cookie;

    return-object v0
.end method

.method public getForwardedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->forwardedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->headers:Ljava/util/Map;

    invoke-static {v1, p1}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getByName(Ljava/util/Map;Ljava/lang/String;)Lorg/teleal/common/mock/http/HeaderValueHolder;

    move-result-object v0

    .line 300
    .local v0, "header":Lorg/teleal/common/mock/http/HeaderValueHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeaderNames()Ljava/util/Set;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->headers:Ljava/util/Map;

    invoke-static {v1, p1}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getByName(Ljava/util/Map;Ljava/lang/String;)Lorg/teleal/common/mock/http/HeaderValueHolder;

    move-result-object v0

    .line 310
    .local v0, "header":Lorg/teleal/common/mock/http/HeaderValueHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/common/mock/http/HeaderValueHolder;->getValues()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public getIncludedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->includedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->outputStreamAccessAllowed:Z

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OutputStream access not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->outputStream:Ljavax/servlet/ServletOutputStream;

    return-object v0
.end method

.method public getRedirectedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->redirectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->status:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 154
    iget-boolean v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->writerAccessAllowed:Z

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Writer access not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->writer:Ljava/io/PrintWriter;

    if-nez v1, :cond_1

    .line 158
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->characterEncoding:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->content:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->characterEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 160
    .local v0, "targetWriter":Ljava/io/Writer;
    :goto_0
    new-instance v1, Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponsePrintWriter;

    invoke-direct {v1, p0, v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse$ResponsePrintWriter;-><init>(Lorg/teleal/common/mock/http/MockHttpServletResponse;Ljava/io/Writer;)V

    iput-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->writer:Ljava/io/PrintWriter;

    .line 162
    .end local v0    # "targetWriter":Ljava/io/Writer;
    :cond_1
    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->writer:Ljava/io/PrintWriter;

    return-object v1

    .line 158
    :cond_2
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->content:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->committed:Z

    return v0
.end method

.method public isOutputStreamAccessAllowed()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->outputStreamAccessAllowed:Z

    return v0
.end method

.method public isWriterAccessAllowed()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->writerAccessAllowed:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->resetBuffer()V

    .line 239
    iput-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->characterEncoding:Ljava/lang/String;

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->contentLength:I

    .line 241
    iput-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->contentType:Ljava/lang/String;

    .line 242
    iput-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->locale:Ljava/util/Locale;

    .line 243
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->cookies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 244
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 245
    const/16 v0, 0xc8

    iput v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->status:I

    .line 246
    iput-object v1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->statusMessage:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public resetBuffer()V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot reset buffer - response is already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 220
    return-void
.end method

.method public sendError(I)V
    .locals 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set error status - response is already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    iput p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->status:I

    .line 355
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setCommitted(Z)V

    .line 356
    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set error status - response is already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    iput p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->status:I

    .line 346
    iput-object p2, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->statusMessage:Ljava/lang/String;

    .line 347
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setCommitted(Z)V

    .line 348
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot send redirect - response is already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->redirectedUrl:Ljava/lang/String;

    .line 363
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setCommitted(Z)V

    .line 364
    return-void
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 204
    iput p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->bufferSize:I

    .line 205
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "characterEncoding"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->characterEncoding:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setCommitted(Z)V
    .locals 0
    .param p1, "committed"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->committed:Z

    .line 231
    return-void
.end method

.method public setContentLength(I)V
    .locals 0
    .param p1, "contentLength"    # I

    .prologue
    .line 181
    iput p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->contentLength:I

    .line 182
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 4
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->contentType:Ljava/lang/String;

    .line 190
    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "charset="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "charsetIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 193
    const-string v2, "charset="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "encoding":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    .line 197
    .end local v0    # "charsetIndex":I
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 371
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method public setForwardedUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "forwardedUrl"    # Ljava/lang/String;

    .prologue
    .line 439
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->forwardedUrl:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-direct {p0, p1, p2}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method public setIncludedUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "includedUrl"    # Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->includedUrl:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 387
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/common/mock/http/MockHttpServletResponse;->setHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 250
    iput-object p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->locale:Ljava/util/Locale;

    .line 251
    return-void
.end method

.method public setOutputStreamAccessAllowed(Z)V
    .locals 0
    .param p1, "outputStreamAccessAllowed"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->outputStreamAccessAllowed:Z

    .line 114
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 417
    iput p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->status:I

    .line 418
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 421
    iput p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->status:I

    .line 422
    iput-object p2, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->statusMessage:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setWriterAccessAllowed(Z)V
    .locals 0
    .param p1, "writerAccessAllowed"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lorg/teleal/common/mock/http/MockHttpServletResponse;->writerAccessAllowed:Z

    .line 129
    return-void
.end method
