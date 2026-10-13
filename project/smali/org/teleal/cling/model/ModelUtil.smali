.class public Lorg/teleal/cling/model/ModelUtil;
.super Ljava/lang/Object;
.source "ModelUtil.java"


# static fields
.field public static final ANDROID_EMULATOR:Z

.field public static final ANDROID_RUNTIME:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, "foundAndroid":Z
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "android.os.Build"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, "androidBuild":Ljava/lang/Class;
    const-string v4, "ID"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 45
    .end local v0    # "androidBuild":Ljava/lang/Class;
    :goto_0
    sput-boolean v1, Lorg/teleal/cling/model/ModelUtil;->ANDROID_RUNTIME:Z

    .line 53
    const/4 v2, 0x0

    .line 55
    .local v2, "foundEmulator":Z
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "android.os.Build"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 56
    .restart local v0    # "androidBuild":Ljava/lang/Class;
    const-string v4, "PRODUCT"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 57
    .local v3, "product":Ljava/lang/String;
    const-string v4, "google_sdk"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "sdk"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    :cond_0
    const/4 v2, 0x1

    .line 62
    .end local v0    # "androidBuild":Ljava/lang/Class;
    .end local v3    # "product":Ljava/lang/String;
    :cond_1
    :goto_1
    sput-boolean v2, Lorg/teleal/cling/model/ModelUtil;->ANDROID_EMULATOR:Z

    .line 63
    return-void

    .line 41
    .end local v2    # "foundEmulator":Z
    .restart local v0    # "androidBuild":Ljava/lang/Class;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 59
    .end local v0    # "androidBuild":Ljava/lang/Class;
    .restart local v2    # "foundEmulator":Z
    :catch_0
    move-exception v4

    goto :goto_1

    .line 42
    .end local v2    # "foundEmulator":Z
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commaToNewline(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "split":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 232
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 226
    :cond_1
    aget-object v2, v1, v3

    .line 227
    .local v2, "splitString":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/teleal/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromCommaSeparatedList(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "unescapeCommas"    # Z

    .prologue
    .line 151
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 152
    :cond_0
    const/4 v2, 0x0

    .line 165
    :cond_1
    return-object v2

    .line 155
    :cond_2
    const-string v0, "XXX1122334455XXX"

    .line 156
    .local v0, "QUOTED_COMMA_PLACEHOLDER":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 157
    const-string v3, "\\\\,"

    const-string v4, "XXX1122334455XXX"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 160
    :cond_3
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 162
    aget-object v3, v2, v1

    const-string v4, "XXX1122334455XXX"

    const-string v5, ","

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 163
    aget-object v3, v2, v1

    const-string v4, "\\\\\\\\"

    const-string v5, "\\\\"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static fromTimeString(Ljava/lang/String;)J
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 191
    if-nez p0, :cond_0

    .line 192
    const-wide/16 v8, 0x0

    .line 216
    :goto_0
    return-wide v8

    .line 193
    :cond_0
    const-string v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "split":[Ljava/lang/String;
    array-length v8, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 195
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 196
    :cond_1
    array-length v8, v1

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 198
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v4, v8

    .line 199
    .local v4, "minite":J
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    float-to-int v8, v8

    int-to-long v6, v8

    .line 201
    .local v6, "second":J
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v4

    add-long/2addr v8, v6

    goto :goto_0

    .line 202
    .end local v4    # "minite":J
    .end local v6    # "second":J
    :catch_0
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 205
    :cond_3
    array-length v8, v1

    const/4 v9, 0x3

    if-lt v8, v9, :cond_2

    .line 207
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v2, v8

    .line 208
    .local v2, "hour":J
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v4, v8

    .line 209
    .restart local v4    # "minite":J
    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    float-to-int v8, v8

    int-to-long v6, v8

    .line 211
    .restart local v6    # "second":J
    const-wide/16 v8, 0xe10

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3c

    mul-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v8, v6

    goto :goto_0

    .line 212
    .end local v2    # "hour":J
    .end local v4    # "minite":J
    .end local v6    # "second":J
    :catch_1
    move-exception v0

    .line 213
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getFirstNetworkInterfaceHardwareAddress()[B
    .locals 5

    .prologue
    .line 259
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 260
    .local v2, "interfaceEnumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 268
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Could not discover first network interface hardware address"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 260
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 261
    .local v1, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    if-eqz v4, :cond_0

    .line 262
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3

    .line 265
    .end local v1    # "iface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Could not discover first network interface hardware address"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getInetAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getLocalHostName(Z)Ljava/lang/String;
    .locals 4
    .param p0, "includeDomain"    # Z

    .prologue
    .line 243
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "hostname":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 250
    .end local v1    # "hostname":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 246
    .restart local v1    # "hostname":Ljava/lang/String;
    :cond_1
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 248
    .end local v1    # "hostname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 250
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "UNKNOWN HOST"

    goto :goto_0
.end method

.method public static isStringConvertibleType(Ljava/util/Set;Ljava/lang/Class;)Z
    .locals 4
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Class;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "stringConvertibleTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    const/4 v1, 0x1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    :goto_0
    return v1

    .line 72
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    const/4 v1, 0x0

    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 73
    .local v0, "toStringOutputType":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public static isValidUDAName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    sget-boolean v2, Lorg/teleal/cling/model/ModelUtil;->ANDROID_RUNTIME:Z

    if-eqz v2, :cond_2

    .line 87
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "[a-zA-Z0-9^-_\\p{L}\\p{N}]{1}[a-zA-Z0-9^-_\\.\\\\p{L}\\\\p{N}\\p{Mc}\\p{Sk}]*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # [Ljava/lang/Object;

    .prologue
    .line 108
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/teleal/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toCommaSeparatedList([Ljava/lang/Object;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "o"    # [Ljava/lang/Object;
    .param p1, "escapeCommas"    # Z
    .param p2, "escapeDoubleQuotes"    # Z

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 117
    const-string v3, ""

    .line 134
    :goto_0
    return-object v3

    .line 119
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_2

    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 134
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 120
    :cond_2
    aget-object v0, p0, v3

    .line 121
    .local v0, "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "objString":Ljava/lang/String;
    const-string v5, "\\\\"

    const-string v6, "\\\\\\\\"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    if-eqz p1, :cond_3

    .line 124
    const-string v5, ","

    const-string v6, "\\\\,"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_3
    if-eqz p2, :cond_4

    .line 127
    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static toTimeString(J)Ljava/lang/String;
    .locals 14
    .param p0, "seconds"    # J

    .prologue
    const-wide/16 v10, 0xe10

    const-wide/16 v8, 0x3c

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 173
    div-long v0, p0, v10

    .line 174
    .local v0, "hour":J
    rem-long v4, p0, v10

    .line 175
    .local v4, "remainder":J
    div-long v2, v4, v8

    .line 176
    .local v2, "minute":J
    rem-long v6, v4, v8

    .line 178
    .local v6, "second":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    const-string v9, "%02d"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 180
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 181
    const-string v9, "%02d"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 182
    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 183
    const-string v9, "%02d"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 178
    return-object v8
.end method
