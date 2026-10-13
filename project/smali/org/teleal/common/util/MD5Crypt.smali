.class public Lorg/teleal/common/util/MD5Crypt;
.super Ljava/lang/Object;
.source "MD5Crypt.java"


# static fields
.field private static final SALTCHARS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

.field private static final itoa64:Ljava/lang/String; = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final bytes2u(B)I
    .locals 1
    .param p0, "inp"    # B

    .prologue
    .line 59
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private static final clearbits([B)V
    .locals 2
    .param p0, "bits"    # [B

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 50
    const/4 v1, 0x0

    aput-byte v1, p0, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public static final crypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v2, "salt":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 73
    .local v1, "rnd":Ljava/util/Random;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 74
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const-string v4, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 75
    .local v0, "index":I
    const-string v3, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 79
    .end local v0    # "index":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$1$"

    invoke-static {p0, v3, v4}, Lorg/teleal/common/util/MD5Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "salt"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "$1$"

    invoke-static {p0, p1, v0}, Lorg/teleal/common/util/MD5Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final crypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "salt"    # Ljava/lang/String;
    .param p2, "magic"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    const-string v10, "md5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 114
    .local v0, "ctx":Ljava/security/MessageDigest;
    const-string v10, "md5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 124
    .local v1, "ctx1":Ljava/security/MessageDigest;
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 130
    :cond_0
    const/16 v10, 0x24

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 131
    const/4 v10, 0x0

    const/16 v11, 0x24

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x8

    if-le v10, v11, :cond_2

    .line 135
    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 144
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 153
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 155
    .local v4, "finalState":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .local v8, "pl":I
    :goto_0
    if-lez v8, :cond_4

    .line 156
    const/4 v11, 0x0

    const/16 v10, 0x10

    if-le v8, v10, :cond_3

    const/16 v10, 0x10

    :goto_1
    invoke-virtual {v0, v4, v11, v10}, Ljava/security/MessageDigest;->update([BII)V

    .line 155
    add-int/lit8 v8, v8, -0x10

    goto :goto_0

    .line 116
    .end local v0    # "ctx":Ljava/security/MessageDigest;
    .end local v1    # "ctx1":Ljava/security/MessageDigest;
    .end local v4    # "finalState":[B
    .end local v8    # "pl":I
    :catch_0
    move-exception v3

    .line 117
    .local v3, "ex":Ljava/security/NoSuchAlgorithmException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 118
    const/4 v10, 0x0

    .line 251
    .end local v3    # "ex":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v10

    .restart local v0    # "ctx":Ljava/security/MessageDigest;
    .restart local v1    # "ctx1":Ljava/security/MessageDigest;
    .restart local v4    # "finalState":[B
    .restart local v8    # "pl":I
    :cond_3
    move v10, v8

    .line 156
    goto :goto_1

    .line 163
    :cond_4
    invoke-static {v4}, Lorg/teleal/common/util/MD5Crypt;->clearbits([B)V

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "i":I
    :goto_3
    if-eqz v5, :cond_6

    .line 168
    and-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_5

    .line 169
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v0, v4, v10, v11}, Ljava/security/MessageDigest;->update([BII)V

    .line 167
    :goto_4
    ushr-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 171
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v0, v10, v11, v12}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_4

    .line 175
    :cond_6
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 183
    const/4 v5, 0x0

    :goto_5
    const/16 v10, 0x3e8

    if-ge v5, v10, :cond_b

    .line 185
    :try_start_1
    const-string v10, "md5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 191
    and-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_9

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 197
    :goto_6
    rem-int/lit8 v10, v5, 0x3

    if-eqz v10, :cond_7

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 201
    :cond_7
    rem-int/lit8 v10, v5, 0x7

    if-eqz v10, :cond_8

    .line 202
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 205
    :cond_8
    and-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_a

    .line 206
    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-virtual {v1, v4, v10, v11}, Ljava/security/MessageDigest;->update([BII)V

    .line 211
    :goto_7
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 183
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 187
    :catch_1
    move-exception v2

    .line 188
    .local v2, "e0":Ljava/security/NoSuchAlgorithmException;
    const/4 v10, 0x0

    goto :goto_2

    .line 194
    .end local v2    # "e0":Ljava/security/NoSuchAlgorithmException;
    :cond_9
    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-virtual {v1, v4, v10, v11}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_6

    .line 208
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_7

    .line 216
    :cond_b
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v9, "result":Ljava/lang/StringBuffer;
    invoke-virtual {v9, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v10, "$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const/4 v10, 0x0

    aget-byte v10, v4, v10

    invoke-static {v10}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    const/4 v11, 0x6

    aget-byte v11, v4, v11

    invoke-static {v11}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/16 v11, 0xc

    aget-byte v11, v4, v11

    invoke-static {v11}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v11

    or-int/2addr v10, v11

    int-to-long v6, v10

    .line 227
    .local v6, "l":J
    const/4 v10, 0x4

    invoke-static {v6, v7, v10}, Lorg/teleal/common/util/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const/4 v10, 0x1

    aget-byte v10, v4, v10

    invoke-static {v10}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    const/4 v11, 0x7

    aget-byte v11, v4, v11

    invoke-static {v11}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/16 v11, 0xd

    aget-byte v11, v4, v11

    invoke-static {v11}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v11

    or-int/2addr v10, v11

    int-to-long v6, v10

    .line 231
    const/4 v10, 0x4

    invoke-static {v6, v7, v10}, Lorg/teleal/common/util/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    const/4 v10, 0x2

    aget-byte v10, v4, v10

    invoke-static {v10}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    const/16 v11, 0x8

    aget-byte v11, v4, v11

    invoke-static {v11}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/16 v11, 0xe

    aget-byte v11, v4, v11

    invoke-static {v11}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v11

    or-int/2addr v10, v11

    int-to-long v6, v10

    .line 235
    const/4 v10, 0x4

    invoke-static {v6, v7, v10}, Lorg/teleal/common/util/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const/4 v10, 0x3

    aget-byte v10, v4, v10

    invoke-static {v10}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    const/16 v11, 0x9

    aget-byte v11, v4, v11

    invoke-static {v11}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/16 v11, 0xf

    aget-byte v11, v4, v11

    invoke-static {v11}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v11

    or-int/2addr v10, v11

    int-to-long v6, v10

    .line 239
    const/4 v10, 0x4

    invoke-static {v6, v7, v10}, Lorg/teleal/common/util/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    const/4 v10, 0x4

    aget-byte v10, v4, v10

    invoke-static {v10}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    const/16 v11, 0xa

    aget-byte v11, v4, v11

    invoke-static {v11}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/4 v11, 0x5

    aget-byte v11, v4, v11

    invoke-static {v11}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v11

    or-int/2addr v10, v11

    int-to-long v6, v10

    .line 243
    const/4 v10, 0x4

    invoke-static {v6, v7, v10}, Lorg/teleal/common/util/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const/16 v10, 0xb

    aget-byte v10, v4, v10

    invoke-static {v10}, Lorg/teleal/common/util/MD5Crypt;->bytes2u(B)I

    move-result v10

    int-to-long v6, v10

    .line 246
    const/4 v10, 0x2

    invoke-static {v6, v7, v10}, Lorg/teleal/common/util/MD5Crypt;->to64(JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-static {v4}, Lorg/teleal/common/util/MD5Crypt;->clearbits([B)V

    .line 251
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2
.end method

.method public static isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "cleanPassword"    # Ljava/lang/String;
    .param p1, "cryptedPassword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 255
    const-string v2, "\\$"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "split":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-object v2, v0, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lorg/teleal/common/util/MD5Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final to64(JI)Ljava/lang/String;
    .locals 4
    .param p0, "v"    # J
    .param p2, "size"    # I

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v0, "result":Ljava/lang/StringBuffer;
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 41
    const-string v1, "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    const-wide/16 v2, 0x3f

    and-long/2addr v2, p0

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    const/4 v1, 0x6

    ushr-long/2addr p0, v1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
