.class public Lorg/cybergarage/multiscreenhttp/HTTPHeader;
.super Ljava/lang/Object;
.source "HTTPHeader.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v3, ""

    invoke-virtual {p0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 40
    const-string v3, ""

    invoke-virtual {p0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 41
    if-nez p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 44
    .local v0, "colonIdx":I
    if-ltz v0, :cond_0

    .line 46
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([BII)V

    .line 48
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    .line 49
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p2}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static final getIntegerValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    invoke-static {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getIntegerValue([BLjava/lang/String;)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    :try_start_0
    invoke-static {p0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 153
    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getValue(Ljava/io/LineNumberReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "reader"    # Ljava/io/LineNumberReader;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "bigName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "lineStr":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-gtz v5, :cond_1

    .line 118
    :cond_0
    const-string v5, ""

    .end local v4    # "lineStr":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 96
    .restart local v4    # "lineStr":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v3, Lorg/cybergarage/multiscreenhttp/HTTPHeader;

    invoke-direct {v3, v4}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    invoke-virtual {v3}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->hasName()Z

    move-result v5

    if-nez v5, :cond_2

    .line 99
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v3}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "bigLineHeaderName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 107
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 108
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v3}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 113
    .end local v0    # "bigLineHeaderName":Ljava/lang/String;
    .end local v3    # "header":Lorg/cybergarage/multiscreenhttp/HTTPHeader;
    .end local v4    # "lineStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lorg/cybergarage/multiscreenutil/Debug;->warning(Ljava/lang/Exception;)V

    .line 116
    const-string v5, ""

    goto :goto_1
.end method

.method public static final getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "strReader":Ljava/io/StringReader;
    new-instance v0, Ljava/io/LineNumberReader;

    invoke-direct {v0, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 125
    .local v0, "lineReader":Ljava/io/LineNumberReader;
    invoke-static {v0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getValue(Ljava/io/LineNumberReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final getValue([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, p1}, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->name:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/cybergarage/multiscreenhttp/HTTPHeader;->value:Ljava/lang/String;

    .line 65
    return-void
.end method
