.class public final Lorg/teleal/common/util/HexBin;
.super Ljava/lang/Object;
.source "HexBin.java"


# static fields
.field private static final BASELENGTH:I = 0xff

.field private static final LOOKUPLENGTH:I = 0x10

.field private static hexNumberTable:[B

.field private static lookUpHexAlphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 32
    new-array v1, v3, [B

    sput-object v1, Lorg/teleal/common/util/HexBin;->hexNumberTable:[B

    .line 33
    const/16 v1, 0x10

    new-array v1, v1, [B

    sput-object v1, Lorg/teleal/common/util/HexBin;->lookUpHexAlphabet:[B

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 37
    sget-object v1, Lorg/teleal/common/util/HexBin;->hexNumberTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    const/16 v0, 0x39

    :goto_1
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    .line 40
    sget-object v1, Lorg/teleal/common/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v2, v0, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 42
    :cond_1
    const/16 v0, 0x46

    :goto_2
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2

    .line 43
    sget-object v1, Lorg/teleal/common/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 45
    :cond_2
    const/16 v0, 0x66

    :goto_3
    const/16 v1, 0x61

    if-lt v0, v1, :cond_3

    .line 46
    sget-object v1, Lorg/teleal/common/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 49
    :cond_3
    const/4 v0, 0x0

    :goto_4
    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    .line 50
    sget-object v1, Lorg/teleal/common/util/HexBin;->lookUpHexAlphabet:[B

    add-int/lit8 v2, v0, 0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 51
    :cond_4
    const/16 v0, 0xa

    :goto_5
    const/16 v1, 0xf

    if-gt v0, v1, :cond_5

    .line 52
    sget-object v1, Lorg/teleal/common/util/HexBin;->lookUpHexAlphabet:[B

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v2, v2, -0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 53
    :cond_5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/teleal/common/util/HexBin;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static bytesToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "binaryData"    # [B
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v8, 0x0

    .line 94
    :goto_0
    return-object v8

    .line 80
    :cond_0
    new-instance v6, Ljava/lang/String;

    invoke-static {p0}, Lorg/teleal/common/util/HexBin;->encode([B)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    .line 81
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 83
    .local v3, "i":I
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 84
    .local v2, "chars":[C
    move-object v0, v2

    .local v0, "arr$":[C
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-char v1, v0, v4

    .line 85
    .local v1, "c":C
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    const/4 v8, 0x2

    if-ne v3, v8, :cond_1

    .line 87
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const/4 v3, 0x1

    .line 84
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 93
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "binaryData"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 155
    if-nez p0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-object v1

    .line 158
    :cond_1
    const/4 v0, 0x0

    .line 160
    .local v0, "decoded":[B
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/teleal/common/util/HexBin;->decode([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    :goto_1
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 162
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static decode([B)[B
    .locals 8
    .param p0, "binaryData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 131
    if-nez p0, :cond_1

    move-object v0, v4

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    array-length v2, p0

    .line 134
    .local v2, "lengthData":I
    rem-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_2

    move-object v0, v4

    .line 135
    goto :goto_0

    .line 137
    :cond_2
    div-int/lit8 v3, v2, 0x2

    .line 138
    .local v3, "lengthDecode":I
    new-array v0, v3, [B

    .line 139
    .local v0, "decodedData":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 140
    mul-int/lit8 v5, v1, 0x2

    aget-byte v5, p0, v5

    invoke-static {v5}, Lorg/teleal/common/util/HexBin;->isHex(B)Z

    move-result v5

    if-eqz v5, :cond_3

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5}, Lorg/teleal/common/util/HexBin;->isHex(B)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move-object v0, v4

    .line 141
    goto :goto_0

    .line 143
    :cond_4
    sget-object v5, Lorg/teleal/common/util/HexBin;->hexNumberTable:[B

    mul-int/lit8 v6, v1, 0x2

    aget-byte v6, p0, v6

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x4

    sget-object v6, Lorg/teleal/common/util/HexBin;->hexNumberTable:[B

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    aget-byte v6, v6, v7

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "binaryData"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 174
    if-nez p0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-object v1

    .line 177
    :cond_1
    const/4 v0, 0x0

    .line 179
    .local v0, "encoded":[B
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/teleal/common/util/HexBin;->encode([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    :goto_1
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 181
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static encode([B)[B
    .locals 7
    .param p0, "binaryData"    # [B

    .prologue
    .line 118
    if-nez p0, :cond_1

    .line 119
    const/4 v0, 0x0

    .line 127
    :cond_0
    return-object v0

    .line 120
    :cond_1
    array-length v2, p0

    .line 121
    .local v2, "lengthData":I
    mul-int/lit8 v3, v2, 0x2

    .line 122
    .local v3, "lengthEncode":I
    new-array v0, v3, [B

    .line 123
    .local v0, "encodedData":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 124
    mul-int/lit8 v4, v1, 0x2

    sget-object v5, Lorg/teleal/common/util/HexBin;->lookUpHexAlphabet:[B

    aget-byte v6, p0, v1

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 125
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lorg/teleal/common/util/HexBin;->lookUpHexAlphabet:[B

    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static isHex(B)Z
    .locals 2
    .param p0, "octect"    # B

    .prologue
    .line 62
    sget-object v0, Lorg/teleal/common/util/HexBin;->hexNumberTable:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "hexEncoded"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/common/util/HexBin;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "hexEncoded"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/common/util/HexBin;->decode([B)[B

    move-result-object v0

    return-object v0
.end method
