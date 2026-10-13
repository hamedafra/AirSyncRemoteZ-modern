.class public Lorg/cybergarage/multiscreenhttp/HTTPPacket;
.super Ljava/lang/Object;
.source "HTTPPacket.java"


# static fields
.field public static final ENCODE_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private content:[B

.field private contentInput:Ljava/io/InputStream;

.field private firstLine:Ljava/lang/String;

.field private httpHeaderList:Ljava/util/Vector;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "org.cybergarage.http"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->logger:Ljava/util/logging/Logger;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 339
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 502
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->content:[B

    .line 549
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 62
    const-string v0, "1.0"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 339
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 502
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->content:[B

    .line 549
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 75
    const-string v0, "1.0"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->set(Ljava/io/InputStream;)V

    .line 77
    invoke-virtual {p0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/multiscreenhttp/HTTPPacket;)V
    .locals 2
    .param p1, "httpPacket"    # Lorg/cybergarage/multiscreenhttp/HTTPPacket;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 339
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 502
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->content:[B

    .line 549
    iput-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 68
    const-string v0, "1.0"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->set(Lorg/cybergarage/multiscreenhttp/HTTPPacket;)V

    .line 70
    invoke-virtual {p0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 71
    return-void
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "inStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 264
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 270
    .local v2, "sb":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 271
    .local v0, "c":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 293
    .end local v0    # "c":I
    :goto_1
    return-object v3

    .line 275
    .restart local v0    # "c":I
    :cond_1
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    .line 293
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 279
    :cond_2
    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    .line 284
    int-to-char v4, v0

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 288
    .end local v0    # "c":I
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private setFirstLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 305
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 353
    new-instance v0, Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .local v0, "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    iget-object v1, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 355
    return-void
.end method

.method public addHeader(Lorg/cybergarage/multiscreenhttp/HTTPHeader;)V
    .locals 1
    .param p1, "header"    # Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    .prologue
    .line 348
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 349
    return-void
.end method

.method public clearHeaders()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 378
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 379
    return-void
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    const-string v0, "CACHE-CONTROL"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    const-string v0, "CONNECTION"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->content:[B

    return-object v0
.end method

.method public getContentInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->contentInput:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 591
    const-string v0, "CONTENT-LENGTH"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getLongHeaderValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 531
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->content:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_0
    return-object v1

    .line 533
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 536
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    const-string v0, "CONTENT-TYPE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    const-string v0, "DATE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->firstLine:Ljava/lang/String;

    return-object v0
.end method

.method protected getFirstLineToken(I)Ljava/lang/String;
    .locals 5
    .param p1, "num"    # I

    .prologue
    .line 314
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->firstLine:Ljava/lang/String;

    const-string v4, " "

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v2, "st":Ljava/util/StringTokenizer;
    const-string v0, ""

    .line 319
    .local v0, "lastToken":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 320
    const/4 v3, 0x0

    .line 327
    :goto_0
    return-object v3

    .line 321
    :cond_0
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    if-le v1, p1, :cond_1

    move-object v3, v0

    .line 327
    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2

    .line 324
    const-string v3, ""

    goto :goto_0

    .line 325
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getHeader(I)Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getNHeaders()I

    move-result v3

    .line 365
    .local v3, "nHeaders":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 372
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 367
    :cond_1
    invoke-virtual {p0, v2}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeader(I)Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    move-result-object v0

    .line 368
    .local v0, "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "headerName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getHeaderString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 486
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 488
    .local v3, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 489
    .local v2, "nHeaders":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 495
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 491
    :cond_0
    invoke-virtual {p0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeader(I)Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    move-result-object v0

    .line 492
    .local v0, "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    move-result-object v0

    .line 415
    .local v0, "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    if-nez v0, :cond_0

    .line 416
    const-string v1, ""

    .line 417
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    const-string v0, "HOST"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerHeaderValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    move-result-object v0

    .line 467
    .local v0, "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    if-nez v0, :cond_0

    .line 468
    const/4 v1, 0x0

    .line 469
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/multiscreenutil/StringUtil;->toInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getLongHeaderValue(Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    move-result-object v0

    .line 475
    .local v0, "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    if-nez v0, :cond_0

    .line 476
    const-wide/16 v2, 0x0

    .line 477
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/multiscreenutil/StringUtil;->toLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getNHeaders()I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    const-string v0, "SERVER"

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 451
    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, v0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startWidth"    # Ljava/lang/String;
    .param p3, "endWidth"    # Ljava/lang/String;

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "headerValue":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 444
    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_1
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->content:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentInputStream()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->contentInput:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFirstLine()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->firstLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected set(Ljava/io/InputStream;)V
    .locals 28
    .param p1, "inStream"    # Ljava/io/InputStream;

    .prologue
    .line 109
    :try_start_0
    new-instance v22, Ljava/io/InputStreamReader;

    const-string v25, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 111
    .local v22, "reader":Ljava/io/InputStreamReader;
    invoke-direct/range {p0 .. p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, "firstLine":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 115
    new-instance v17, Lorg/cybergarage/multiscreenhttp/HTTPStatus;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;-><init>(Ljava/lang/String;)V

    .line 116
    .local v17, "httpStatus":Lorg/cybergarage/multiscreenhttp/HTTPStatus;
    invoke-virtual/range {v17 .. v17}, Lorg/cybergarage/multiscreenhttp/HTTPStatus;->getStatusCode()I

    move-result v23

    .line 117
    .local v23, "statCode":I
    const/16 v25, 0x64

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 125
    invoke-direct/range {p0 .. p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 126
    .local v16, "headerLine":Ljava/lang/String;
    :goto_0
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v25

    if-gtz v25, :cond_4

    .line 134
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "actualFirstLine":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_3

    .line 138
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 148
    .end local v6    # "actualFirstLine":Ljava/lang/String;
    .end local v16    # "headerLine":Ljava/lang/String;
    :cond_1
    const-wide/32 v10, 0x3b9ac9ff

    .line 150
    .local v10, "conLen":J
    invoke-direct/range {p0 .. p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 151
    .restart local v16    # "headerLine":Ljava/lang/String;
    :goto_1
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v25

    if-gtz v25, :cond_6

    .line 168
    :cond_2
    const-wide/32 v26, 0x3b9ac9ff

    cmp-long v25, v10, v26

    if-nez v25, :cond_8

    .line 173
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getFirstLine()Ljava/lang/String;

    move-result-object v14

    .line 174
    .local v14, "firstLineTmp":Ljava/lang/String;
    if-eqz v14, :cond_3

    const-string v25, "HTTP"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 236
    .end local v10    # "conLen":J
    .end local v13    # "firstLine":Ljava/lang/String;
    .end local v14    # "firstLineTmp":Ljava/lang/String;
    .end local v16    # "headerLine":Ljava/lang/String;
    .end local v17    # "httpStatus":Lorg/cybergarage/multiscreenhttp/HTTPStatus;
    .end local v22    # "reader":Ljava/io/InputStreamReader;
    .end local v23    # "statCode":I
    :cond_3
    :goto_2
    return-void

    .line 128
    .restart local v13    # "firstLine":Ljava/lang/String;
    .restart local v16    # "headerLine":Ljava/lang/String;
    .restart local v17    # "httpStatus":Lorg/cybergarage/multiscreenhttp/HTTPStatus;
    .restart local v22    # "reader":Ljava/io/InputStreamReader;
    .restart local v23    # "statCode":I
    :cond_4
    new-instance v15, Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    invoke-direct/range {v15 .. v16}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 129
    .local v15, "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    invoke-virtual {v15}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->hasName()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 130
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Lorg/cybergarage/multiscreenhttp/HTTPHeader;)V

    .line 131
    :cond_5
    invoke-direct/range {p0 .. p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 153
    .end local v15    # "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    .restart local v10    # "conLen":J
    :cond_6
    new-instance v15, Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    invoke-direct/range {v15 .. v16}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v15    # "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    invoke-virtual {v15}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->hasName()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 156
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Lorg/cybergarage/multiscreenhttp/HTTPHeader;)V

    .line 159
    invoke-virtual {v15}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "CONTENT-LENGTH"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 160
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getContentLength()J

    move-result-wide v10

    .line 163
    :cond_7
    invoke-direct/range {p0 .. p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    .line 180
    .end local v15    # "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    :cond_8
    const-wide/16 v26, 0x0

    cmp-long v25, v26, v10

    if-gez v25, :cond_3

    .line 182
    invoke-static {}, Lorg/cybergarage/multiscreenhttp/HTTP;->getChunkSize()I

    move-result v7

    .line 185
    .local v7, "chunkSize":I
    new-array v0, v7, [B

    move-object/from16 v19, v0

    .line 187
    .local v19, "readBuf":[B
    const-wide/16 v20, 0x0

    .line 188
    .local v20, "readCnt":J
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v8, "conBuf":Ljava/lang/StringBuffer;
    :goto_3
    cmp-long v25, v20, v10

    if-ltz v25, :cond_a

    .line 215
    :cond_9
    :goto_4
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 222
    .local v9, "conStr":Ljava/lang/String;
    const-string v25, "UTF-8"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setContent([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 232
    .end local v7    # "chunkSize":I
    .end local v8    # "conBuf":Ljava/lang/StringBuffer;
    .end local v9    # "conStr":Ljava/lang/String;
    .end local v10    # "conLen":J
    .end local v13    # "firstLine":Ljava/lang/String;
    .end local v16    # "headerLine":Ljava/lang/String;
    .end local v17    # "httpStatus":Lorg/cybergarage/multiscreenhttp/HTTPStatus;
    .end local v19    # "readBuf":[B
    .end local v20    # "readCnt":J
    .end local v22    # "reader":Ljava/io/InputStreamReader;
    .end local v23    # "statCode":I
    :catch_0
    move-exception v12

    .line 234
    .local v12, "e":Ljava/lang/Exception;
    const-string v25, "Exception"

    invoke-static/range {v25 .. v25}, Lorg/cybergarage/multiscreenutil/Debug;->message(Ljava/lang/String;)V

    goto :goto_2

    .line 195
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v7    # "chunkSize":I
    .restart local v8    # "conBuf":Ljava/lang/StringBuffer;
    .restart local v10    # "conLen":J
    .restart local v13    # "firstLine":Ljava/lang/String;
    .restart local v16    # "headerLine":Ljava/lang/String;
    .restart local v17    # "httpStatus":Lorg/cybergarage/multiscreenhttp/HTTPStatus;
    .restart local v19    # "readBuf":[B
    .restart local v20    # "readCnt":J
    .restart local v22    # "reader":Ljava/io/InputStreamReader;
    .restart local v23    # "statCode":I
    :cond_a
    const/16 v25, 0x0

    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    .line 196
    .local v18, "len":I
    if-ltz v18, :cond_9

    .line 200
    new-instance v24, Ljava/lang/String;

    const/16 v25, 0x0

    const-string v26, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, v25

    move/from16 v3, v18

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 201
    .local v24, "tmp":Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    goto :goto_3

    .line 208
    .end local v18    # "len":I
    .end local v24    # "tmp":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 210
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v25, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->logger:Ljava/util/logging/Logger;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception reading HTTP response"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method protected set(Lorg/cybergarage/multiscreenhttp/HTTPPacket;)V
    .locals 4
    .param p1, "httpPacket"    # Lorg/cybergarage/multiscreenhttp/HTTPPacket;

    .prologue
    .line 245
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getFirstLine()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->clearHeaders()V

    .line 248
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 249
    .local v2, "nHeaders":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 254
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getContent()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setContent([B)V

    .line 255
    return-void

    .line 251
    :cond_0
    invoke-virtual {p1, v1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeader(I)Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    move-result-object v0

    .line 252
    .local v0, "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->addHeader(Lorg/cybergarage/multiscreenhttp/HTTPHeader;)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected set(Lorg/cybergarage/multiscreenhttp/HTTPSocket;)V
    .locals 1
    .param p1, "httpSock"    # Lorg/cybergarage/multiscreenhttp/HTTPSocket;

    .prologue
    .line 240
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->set(Ljava/io/InputStream;)V

    .line 241
    return-void
.end method

.method public setCacheControl(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 626
    const-string v0, "max-age"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setCacheControl(Ljava/lang/String;I)V

    .line 627
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1
    .param p1, "directive"    # Ljava/lang/String;

    .prologue
    .line 615
    const-string v0, "CACHE-CONTROL"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;I)V
    .locals 3
    .param p1, "directive"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "strVal":Ljava/lang/String;
    const-string v1, "CACHE-CONTROL"

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .locals 1
    .param p1, "connection"    # Ljava/lang/String;

    .prologue
    .line 601
    const-string v0, "CONNECTION"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 514
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setContent([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContent([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 506
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->content:[B

    .line 507
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setContentLength(J)V

    .line 508
    return-void
.end method

.method public setContentInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 553
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 554
    return-void
.end method

.method public setContentLength(J)V
    .locals 1
    .param p1, "len"    # J

    .prologue
    .line 586
    const-string v0, "CONTENT-LENGTH"

    invoke-virtual {p0, v0, p1, p2}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setLongHeader(Ljava/lang/String;J)V

    .line 587
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 572
    const-string v0, "CONTENT-TYPE"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 671
    new-instance v0, Lorg/cybergarage/multiscreenhttp/Date;

    invoke-direct {v0, p1}, Lorg/cybergarage/multiscreenhttp/Date;-><init>(Ljava/util/Calendar;)V

    .line 672
    .local v0, "date":Lorg/cybergarage/multiscreenhttp/Date;
    const-string v1, "DATE"

    invoke-virtual {v0}, Lorg/cybergarage/multiscreenhttp/Date;->getDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public setHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 399
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public setHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 404
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    move-result-object v0

    .line 389
    .local v0, "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, p2}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 395
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeader(Lorg/cybergarage/multiscreenhttp/HTTPHeader;)V
    .locals 2
    .param p1, "header"    # Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    .prologue
    .line 409
    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public setHost(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 654
    move-object v0, p1

    .line 655
    .local v0, "hostAddr":Ljava/lang/String;
    invoke-static {p1}, Lorg/cybergarage/multiscreennet/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    :cond_0
    const-string v1, "HOST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method public setIntegerHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 456
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public setLongHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 461
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 640
    const-string v0, "SERVER"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public setStringHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 436
    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "startWidth"    # Ljava/lang/String;
    .param p4, "endWidth"    # Ljava/lang/String;

    .prologue
    .line 426
    move-object v0, p2

    .line 427
    .local v0, "headerValue":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    :cond_0
    invoke-virtual {v0, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "ver"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPPacket;->version:Ljava/lang/String;

    .line 89
    return-void
.end method
