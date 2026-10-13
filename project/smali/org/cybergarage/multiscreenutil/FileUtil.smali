.class public final Lorg/cybergarage/multiscreenutil/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isXMLFileName(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Lorg/cybergarage/multiscreenutil/StringUtil;->hasData(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 81
    :goto_0
    return v1

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "lowerName":Ljava/lang/String;
    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static final load(Ljava/io/File;)[B
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 40
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    .local v1, "fin":Ljava/io/FileInputStream;
    invoke-static {v1}, Lorg/cybergarage/multiscreenutil/FileUtil;->load(Ljava/io/FileInputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 46
    .end local v1    # "fin":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/multiscreenutil/Debug;->warning(Ljava/lang/Exception;)V

    .line 46
    const/4 v2, 0x0

    new-array v2, v2, [B

    goto :goto_0
.end method

.method public static final load(Ljava/io/FileInputStream;)[B
    .locals 6
    .param p0, "fin"    # Ljava/io/FileInputStream;

    .prologue
    const/4 v5, 0x0

    .line 52
    const/high16 v4, 0x80000

    new-array v2, v4, [B

    .line 56
    .local v2, "readBuf":[B
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 59
    .local v3, "readCnt":I
    :goto_0
    if-gtz v3, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 72
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "readCnt":I
    :goto_1
    return-object v4

    .line 61
    .restart local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "readCnt":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 62
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 69
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "readCnt":I
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/multiscreenutil/Debug;->warning(Ljava/lang/Exception;)V

    .line 72
    new-array v4, v5, [B

    goto :goto_1
.end method

.method public static final load(Ljava/lang/String;)[B
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 26
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, "fin":Ljava/io/FileInputStream;
    invoke-static {v1}, Lorg/cybergarage/multiscreenutil/FileUtil;->load(Ljava/io/FileInputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 32
    .end local v1    # "fin":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 29
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/multiscreenutil/Debug;->warning(Ljava/lang/Exception;)V

    .line 32
    const/4 v2, 0x0

    new-array v2, v2, [B

    goto :goto_0
.end method
