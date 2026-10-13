.class public Lorg/cybergarage/http/HTTPPacket;
.super Ljava/lang/Object;
.source "HTTPPacket.java"


# instance fields
.field private content:[B

.field private contentInput:Ljava/io/InputStream;

.field private firstLine:Ljava/lang/String;

.field private httpHeaderList:Ljava/util/Vector;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 377
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 537
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    .line 589
    iput-object v1, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 103
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 377
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 537
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    .line 589
    iput-object v1, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 116
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->set(Ljava/io/InputStream;)Z

    .line 118
    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/HTTPPacket;)V
    .locals 2
    .param p1, "httpPacket"    # Lorg/cybergarage/http/HTTPPacket;

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 377
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 537
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    .line 589
    iput-object v1, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 109
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->set(Lorg/cybergarage/http/HTTPPacket;)V

    .line 111
    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 112
    return-void
.end method

.method private readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "in"    # Ljava/io/BufferedInputStream;

    .prologue
    .line 155
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 156
    .local v1, "lineBuf":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x1

    new-array v2, v4, [B

    .line 159
    .local v2, "readBuf":[B
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .line 160
    .local v3, "readLen":I
    :goto_0
    if-lez v3, :cond_0

    .line 161
    const/4 v4, 0x0

    aget-byte v4, v2, v4
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 180
    .end local v3    # "readLen":I
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 163
    .restart local v3    # "readLen":I
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    aget-byte v4, v2, v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_2

    .line 164
    const/4 v4, 0x0

    aget-byte v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 165
    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    .line 168
    .end local v3    # "readLen":I
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 176
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_1

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private setFirstLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 349
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 391
    new-instance v0, Lorg/cybergarage/http/HTTPHeader;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/http/HTTPHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    iget-object v1, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 393
    return-void
.end method

.method public addHeader(Lorg/cybergarage/http/HTTPHeader;)V
    .locals 1
    .param p1, "header"    # Lorg/cybergarage/http/HTTPHeader;

    .prologue
    .line 386
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 387
    return-void
.end method

.method public clearHeaders()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 415
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    .line 416
    return-void
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x22

    const/4 v6, 0x0

    .line 626
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, "contentType":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 628
    const-string v0, ""

    .line 643
    :cond_0
    :goto_0
    return-object v0

    .line 629
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 630
    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 631
    .local v2, "charSetIdx":I
    if-gez v2, :cond_2

    .line 632
    const-string v0, ""

    goto :goto_0

    .line 633
    :cond_2
    const-string v4, "charset"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v1, v4, 0x1

    .line 634
    .local v1, "charSetEndIdx":I
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([BII)V

    .line 635
    .local v0, "charSet":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gez v4, :cond_3

    .line 636
    const-string v0, ""

    goto :goto_0

    .line 637
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_4

    .line 638
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 639
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gez v4, :cond_5

    .line 640
    const-string v0, ""

    goto :goto_0

    .line 641
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_0

    .line 642
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    return-object v0
.end method

.method public getContentInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 657
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getLongHeaderValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentRange()[J
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 720
    const/4 v7, 0x3

    new-array v4, v7, [J

    .line 721
    .local v4, "range":[J
    const-wide/16 v8, 0x0

    aput-wide v8, v4, v12

    aput-wide v8, v4, v11

    aput-wide v8, v4, v10

    .line 722
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasContentRange()Z

    move-result v7

    if-nez v7, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-object v4

    .line 724
    :cond_1
    const-string v7, "Content-Range"

    invoke-virtual {p0, v7}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 726
    .local v5, "rangeLine":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_2

    .line 727
    const-string v7, "Range"

    invoke-virtual {p0, v7}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 728
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 731
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, " ="

    invoke-direct {v6, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    .local v6, "strToken":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 735
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "bytesStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 739
    const-string v7, " -"

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, "firstPosStr":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 744
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 746
    const-string v7, "-/"

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 748
    .local v2, "lastPosStr":Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 751
    :goto_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 753
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "lengthStr":Ljava/lang/String;
    const/4 v7, 0x2

    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v7

    goto :goto_0

    .line 750
    .end local v3    # "lengthStr":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 743
    .end local v2    # "lastPosStr":Ljava/lang/String;
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method public getContentRangeFirstPosition()J
    .locals 4

    .prologue
    .line 763
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 764
    .local v0, "range":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    return-wide v2
.end method

.method public getContentRangeInstanceLength()J
    .locals 4

    .prologue
    .line 775
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 776
    .local v0, "range":[J
    const/4 v1, 0x2

    aget-wide v2, v0, v1

    return-wide v2
.end method

.method public getContentRangeLastPosition()J
    .locals 4

    .prologue
    .line 769
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 770
    .local v0, "range":[J
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    return-wide v2
.end method

.method public getContentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 568
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "charSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 570
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 577
    :goto_0
    return-object v2

    .line 572
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    invoke-direct {v2, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 574
    :catch_0
    move-exception v1

    .line 575
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 577
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFirstLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    return-object v0
.end method

.method protected getFirstLineToken(I)Ljava/lang/String;
    .locals 5
    .param p1, "num"    # I

    .prologue
    .line 358
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

    const-string v4, " "

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .local v2, "st":Ljava/util/StringTokenizer;
    const-string v0, ""

    .line 360
    .local v0, "lastToken":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-gt v1, p1, :cond_0

    .line 361
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1

    .line 362
    const-string v0, ""

    .line 365
    .end local v0    # "lastToken":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 363
    .restart local v0    # "lastToken":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHeader(I)Lorg/cybergarage/http/HTTPHeader;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/http/HTTPHeader;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getNHeaders()I

    move-result v3

    .line 403
    .local v3, "nHeaders":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 404
    invoke-virtual {p0, v2}, Lorg/cybergarage/http/HTTPPacket;->getHeader(I)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 405
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "headerName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 409
    .end local v0    # "header":Lorg/cybergarage/http/HTTPHeader;
    .end local v1    # "headerName":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 403
    .restart local v0    # "header":Lorg/cybergarage/http/HTTPHeader;
    .restart local v1    # "headerName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "header":Lorg/cybergarage/http/HTTPHeader;
    .end local v1    # "headerName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getHeaderString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 522
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 524
    .local v3, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 525
    .local v2, "nHeaders":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 526
    invoke-virtual {p0, v1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(I)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 527
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    .end local v0    # "header":Lorg/cybergarage/http/HTTPHeader;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 451
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    if-nez v0, :cond_0

    .line 452
    const-string v1, ""

    .line 453
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 840
    const-string v0, "HOST"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerHeaderValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 503
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    if-nez v0, :cond_0

    .line 504
    const/4 v1, 0x0

    .line 505
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/StringUtil;->toInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getLongHeaderValue(Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 511
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    if-nez v0, :cond_0

    .line 512
    const-wide/16 v2, 0x0

    .line 513
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/StringUtil;->toLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getNHeaders()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->httpHeaderList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    const-string v0, "Server"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 487
    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startWidth"    # Ljava/lang/String;
    .param p3, "endWidth"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 477
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "headerValue":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 479
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_0
    invoke-virtual {v0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 481
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 482
    :cond_1
    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 875
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hasConnection()Z
    .locals 1

    .prologue
    .line 666
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

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
    .line 603
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContentRange()Z
    .locals 1

    .prologue
    .line 705
    const-string v0, "Content-Range"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Range"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFirstLine()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lorg/cybergarage/http/HTTPPacket;->firstLine:Ljava/lang/String;

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
    .line 420
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransferEncoding()Z
    .locals 1

    .prologue
    .line 865
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->clearHeaders()V

    .line 129
    new-array v0, v1, [B

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 131
    return-void
.end method

.method public isChunked()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 880
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasTransferEncoding()Z

    move-result v2

    if-nez v2, :cond_1

    .line 885
    :cond_0
    :goto_0
    return v1

    .line 882
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "transEnc":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 885
    const-string v1, "Chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isCloseConnection()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 681
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasConnection()Z

    move-result v2

    if-nez v2, :cond_1

    .line 686
    :cond_0
    :goto_0
    return v1

    .line 683
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getConnection()Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "connection":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 686
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isKeepAliveConnection()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 691
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->hasConnection()Z

    move-result v2

    if-nez v2, :cond_1

    .line 696
    :cond_0
    :goto_0
    return v1

    .line 693
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->getConnection()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "connection":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 696
    const-string v1, "Keep-Alive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public read(Lorg/cybergarage/http/HTTPSocket;)Z
    .locals 1
    .param p1, "httpSock"    # Lorg/cybergarage/http/HTTPSocket;

    .prologue
    .line 336
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->init()V

    .line 337
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->set(Lorg/cybergarage/http/HTTPSocket;)Z

    move-result v0

    return v0
.end method

.method protected set(Lorg/cybergarage/http/HTTPPacket;)V
    .locals 4
    .param p1, "httpPacket"    # Lorg/cybergarage/http/HTTPPacket;

    .prologue
    .line 319
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPPacket;->getFirstLine()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPPacket;->clearHeaders()V

    .line 322
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 323
    .local v2, "nHeaders":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 324
    invoke-virtual {p1, v1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(I)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 325
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->addHeader(Lorg/cybergarage/http/HTTPHeader;)V

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v0    # "header":Lorg/cybergarage/http/HTTPHeader;
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPPacket;->getContent()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cybergarage/http/HTTPPacket;->setContent([B)V

    .line 328
    return-void
.end method

.method protected set(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->set(Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/io/InputStream;Z)Z
    .locals 32
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "onlyHeaders"    # Z

    .prologue
    .line 186
    :try_start_0
    new-instance v22, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 188
    .local v22, "reader":Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v13

    .line 189
    .local v13, "firstLine":Ljava/lang/String;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v28

    if-gtz v28, :cond_1

    .line 190
    :cond_0
    const/16 v28, 0x0

    .line 304
    .end local v13    # "firstLine":Ljava/lang/String;
    .end local v22    # "reader":Ljava/io/BufferedInputStream;
    :goto_0
    return v28

    .line 191
    .restart local v13    # "firstLine":Ljava/lang/String;
    .restart local v22    # "reader":Ljava/io/BufferedInputStream;
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 194
    new-instance v16, Lorg/cybergarage/http/HTTPStatus;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lorg/cybergarage/http/HTTPStatus;-><init>(Ljava/lang/String;)V

    .line 195
    .local v16, "httpStatus":Lorg/cybergarage/http/HTTPStatus;
    invoke-virtual/range {v16 .. v16}, Lorg/cybergarage/http/HTTPStatus;->getStatusCode()I

    move-result v23

    .line 196
    .local v23, "statCode":I
    const/16 v28, 0x64

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 203
    .local v15, "headerLine":Ljava/lang/String;
    :goto_1
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_3

    .line 204
    new-instance v14, Lorg/cybergarage/http/HTTPHeader;

    invoke-direct {v14, v15}, Lorg/cybergarage/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 205
    .local v14, "header":Lorg/cybergarage/http/HTTPHeader;
    invoke-virtual {v14}, Lorg/cybergarage/http/HTTPHeader;->hasName()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Lorg/cybergarage/http/HTTPHeader;)V

    .line 207
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 208
    goto :goto_1

    .line 210
    .end local v14    # "header":Lorg/cybergarage/http/HTTPHeader;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "actualFirstLine":Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_6

    .line 213
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/cybergarage/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 219
    .end local v4    # "actualFirstLine":Ljava/lang/String;
    .end local v15    # "headerLine":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 220
    .restart local v15    # "headerLine":Ljava/lang/String;
    :goto_2
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_7

    .line 221
    new-instance v14, Lorg/cybergarage/http/HTTPHeader;

    invoke-direct {v14, v15}, Lorg/cybergarage/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 222
    .restart local v14    # "header":Lorg/cybergarage/http/HTTPHeader;
    invoke-virtual {v14}, Lorg/cybergarage/http/HTTPHeader;->hasName()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 223
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Lorg/cybergarage/http/HTTPHeader;)V

    .line 224
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v15

    .line 225
    goto :goto_2

    .line 215
    .end local v14    # "header":Lorg/cybergarage/http/HTTPHeader;
    .restart local v4    # "actualFirstLine":Ljava/lang/String;
    :cond_6
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 227
    .end local v4    # "actualFirstLine":Ljava/lang/String;
    :cond_7
    const/16 v28, 0x1

    move/from16 v0, p2

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 228
    const-string v28, ""

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setContent(Ljava/lang/String;Z)V

    .line 229
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 232
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPPacket;->isChunked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    .line 234
    .local v17, "isChunkedRequest":Z
    const-wide/16 v10, 0x0

    .line 235
    .local v10, "contentLen":J
    const/16 v28, 0x1

    move/from16 v0, v17

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 237
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v8

    .line 240
    .local v8, "chunkSizeLine":Ljava/lang/String;
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x10

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v10

    .line 247
    .end local v8    # "chunkSizeLine":Ljava/lang/String;
    :goto_3
    :try_start_2
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    .local v9, "contentBuf":Ljava/io/ByteArrayOutputStream;
    :goto_4
    const-wide/16 v28, 0x0

    cmp-long v28, v28, v10

    if-gez v28, :cond_12

    .line 250
    invoke-static {}, Lorg/cybergarage/http/HTTP;->getChunkSize()I

    move-result v5

    .line 253
    .local v5, "chunkSize":I
    int-to-long v0, v5

    move-wide/from16 v28, v0

    cmp-long v28, v10, v28

    if-lez v28, :cond_e

    int-to-long v0, v5

    move-wide/from16 v28, v0

    :goto_5
    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v18, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 255
    .local v18, "readBuf":[B
    const-wide/16 v20, 0x0

    .line 256
    .local v20, "readCnt":J
    :goto_6
    cmp-long v28, v20, v10

    if-gez v28, :cond_a

    .line 259
    sub-long v6, v10, v20

    .line 260
    .local v6, "bufReadLen":J
    int-to-long v0, v5

    move-wide/from16 v28, v0

    cmp-long v28, v28, v6

    if-gez v28, :cond_9

    .line 261
    int-to-long v6, v5

    .line 262
    :cond_9
    const/16 v28, 0x0

    long-to-int v0, v6

    move/from16 v29, v0

    :try_start_3
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v19

    .line 263
    .local v19, "readLen":I
    if-gez v19, :cond_f

    .line 274
    .end local v6    # "bufReadLen":J
    .end local v19    # "readLen":I
    :cond_a
    :goto_7
    const/16 v28, 0x1

    move/from16 v0, v17

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    .line 276
    const-wide/16 v26, 0x0

    .line 278
    .local v26, "skipLen":J
    :cond_b
    :try_start_4
    const-string v28, "\r\n"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    sub-long v28, v28, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v24

    .line 279
    .local v24, "skipCnt":J
    const-wide/16 v28, 0x0

    cmp-long v28, v24, v28

    if-gez v28, :cond_10

    .line 285
    :goto_8
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/cybergarage/http/HTTPPacket;->readLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v8

    .line 287
    .restart local v8    # "chunkSizeLine":Ljava/lang/String;
    new-instance v28, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x2

    invoke-direct/range {v28 .. v31}, Ljava/lang/String;-><init>([BII)V

    const/16 v29, 0x10

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-wide v10

    goto/16 :goto_4

    .line 240
    .end local v5    # "chunkSize":I
    .end local v9    # "contentBuf":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "readBuf":[B
    .end local v20    # "readCnt":J
    .end local v24    # "skipCnt":J
    .end local v26    # "skipLen":J
    :cond_c
    const-wide/16 v10, 0x0

    goto/16 :goto_3

    .line 245
    .end local v8    # "chunkSizeLine":Ljava/lang/String;
    :cond_d
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/http/HTTPPacket;->getContentLength()J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-wide v10

    goto/16 :goto_3

    .restart local v5    # "chunkSize":I
    .restart local v9    # "contentBuf":Ljava/io/ByteArrayOutputStream;
    :cond_e
    move-wide/from16 v28, v10

    .line 253
    goto :goto_5

    .line 265
    .restart local v6    # "bufReadLen":J
    .restart local v18    # "readBuf":[B
    .restart local v19    # "readLen":I
    .restart local v20    # "readCnt":J
    :cond_f
    const/16 v28, 0x0

    :try_start_7
    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-virtual {v9, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 266
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v20, v20, v28

    goto/16 :goto_6

    .line 268
    .end local v19    # "readLen":I
    :catch_0
    move-exception v12

    .line 270
    .local v12, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-static {v12}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_7

    .line 299
    .end local v5    # "chunkSize":I
    .end local v6    # "bufReadLen":J
    .end local v9    # "contentBuf":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "contentLen":J
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "firstLine":Ljava/lang/String;
    .end local v15    # "headerLine":Ljava/lang/String;
    .end local v16    # "httpStatus":Lorg/cybergarage/http/HTTPStatus;
    .end local v17    # "isChunkedRequest":Z
    .end local v18    # "readBuf":[B
    .end local v20    # "readCnt":J
    .end local v22    # "reader":Ljava/io/BufferedInputStream;
    .end local v23    # "statCode":I
    :catch_1
    move-exception v12

    .line 300
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 301
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 281
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v5    # "chunkSize":I
    .restart local v9    # "contentBuf":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "contentLen":J
    .restart local v13    # "firstLine":Ljava/lang/String;
    .restart local v15    # "headerLine":Ljava/lang/String;
    .restart local v16    # "httpStatus":Lorg/cybergarage/http/HTTPStatus;
    .restart local v17    # "isChunkedRequest":Z
    .restart local v18    # "readBuf":[B
    .restart local v20    # "readCnt":J
    .restart local v22    # "reader":Ljava/io/BufferedInputStream;
    .restart local v23    # "statCode":I
    .restart local v24    # "skipCnt":J
    .restart local v26    # "skipLen":J
    :cond_10
    add-long v26, v26, v24

    .line 282
    :try_start_9
    const-string v28, "\r\n"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v28, v26, v28

    if-ltz v28, :cond_b

    goto :goto_8

    .line 289
    :catch_2
    move-exception v12

    .line 290
    .restart local v12    # "e":Ljava/lang/Exception;
    const-wide/16 v10, 0x0

    goto/16 :goto_4

    .line 294
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v24    # "skipCnt":J
    .end local v26    # "skipLen":J
    :cond_11
    const-wide/16 v10, 0x0

    goto/16 :goto_4

    .line 297
    .end local v5    # "chunkSize":I
    .end local v18    # "readBuf":[B
    .end local v20    # "readCnt":J
    :cond_12
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setContent([BZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 304
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 242
    .end local v9    # "contentBuf":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v28

    goto/16 :goto_3
.end method

.method protected set(Lorg/cybergarage/http/HTTPSocket;)Z
    .locals 1
    .param p1, "httpSock"    # Lorg/cybergarage/http/HTTPSocket;

    .prologue
    .line 314
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPPacket;->set(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public setCacheControl(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 796
    const-string v0, "max-age"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setCacheControl(Ljava/lang/String;I)V

    .line 797
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1
    .param p1, "directive"    # Ljava/lang/String;

    .prologue
    .line 785
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;I)V
    .locals 3
    .param p1, "directive"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "strVal":Ljava/lang/String;
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 671
    const-string v0, "Connection"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 558
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setContent(Ljava/lang/String;Z)V

    .line 559
    return-void
.end method

.method public setContent(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "updateWithContentLength"    # Z

    .prologue
    .line 553
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 554
    return-void
.end method

.method public setContent([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 548
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setContent([BZ)V

    .line 549
    return-void
.end method

.method public setContent([BZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "updateWithContentLength"    # Z

    .prologue
    .line 541
    iput-object p1, p0, Lorg/cybergarage/http/HTTPPacket;->content:[B

    .line 542
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 543
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setContentLength(J)V

    .line 544
    :cond_0
    return-void
.end method

.method public setContentInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 593
    iput-object p1, p0, Lorg/cybergarage/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 594
    return-void
.end method

.method public setContentLength(J)V
    .locals 1
    .param p1, "len"    # J

    .prologue
    .line 652
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1, p2}, Lorg/cybergarage/http/HTTPPacket;->setLongHeader(Ljava/lang/String;J)V

    .line 653
    return-void
.end method

.method public setContentRange(JJJ)V
    .locals 7
    .param p1, "firstPos"    # J
    .param p3, "lastPos"    # J
    .param p5, "length"    # J

    .prologue
    .line 710
    const-string v0, ""

    .line 711
    .local v0, "rangeStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x0

    cmp-long v1, v4, p5

    if-gez v1, :cond_0

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void

    .line 714
    :cond_0
    const-string v1, "*"

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 612
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 850
    new-instance v0, Lorg/cybergarage/http/Date;

    invoke-direct {v0, p1}, Lorg/cybergarage/http/Date;-><init>(Ljava/util/Calendar;)V

    .line 851
    .local v0, "date":Lorg/cybergarage/http/Date;
    const-string v1, "Date"

    invoke-virtual {v0}, Lorg/cybergarage/http/Date;->getDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    return-void
.end method

.method public setHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 435
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public setHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 440
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lorg/cybergarage/http/HTTPHeader;

    move-result-object v0

    .line 426
    .local v0, "header":Lorg/cybergarage/http/HTTPHeader;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0, p2}, Lorg/cybergarage/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/http/HTTPPacket;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeader(Lorg/cybergarage/http/HTTPHeader;)V
    .locals 2
    .param p1, "header"    # Lorg/cybergarage/http/HTTPHeader;

    .prologue
    .line 445
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 832
    move-object v0, p1

    .line 833
    .local v0, "hostAddr":Ljava/lang/String;
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 835
    :cond_0
    const-string v1, "HOST"

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method public setHost(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 824
    move-object v0, p1

    .line 825
    .local v0, "hostAddr":Ljava/lang/String;
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 827
    :cond_0
    const-string v1, "HOST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method public setIntegerHeader(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 492
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public setLongHeader(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 497
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 810
    const-string v0, "Server"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method public setStringHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 472
    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/cybergarage/http/HTTPPacket;->setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "startWidth"    # Ljava/lang/String;
    .param p4, "endWidth"    # Ljava/lang/String;

    .prologue
    .line 462
    move-object v0, p2

    .line 463
    .local v0, "headerValue":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    :cond_0
    invoke-virtual {v0, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 870
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "ver"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lorg/cybergarage/http/HTTPPacket;->version:Ljava/lang/String;

    .line 142
    return-void
.end method
