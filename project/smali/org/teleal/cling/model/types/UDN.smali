.class public Lorg/teleal/cling/model/types/UDN;
.super Ljava/lang/Object;
.source "UDN.java"


# static fields
.field public static final PREFIX:Ljava/lang/String; = "uuid:"


# instance fields
.field private identifierString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifierString"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/teleal/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static uniqueSystemIdentifier(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDN;
    .locals 10
    .param p0, "salt"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v3, "systemSalt":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    .line 94
    .local v2, "i":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v2    # "i":Ljava/net/InetAddress;
    :goto_0
    const-string v4, "os.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v4, "os.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :try_start_1
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 110
    .local v1, "hash":[B
    new-instance v4, Lorg/teleal/cling/model/types/UDN;

    .line 111
    new-instance v5, Ljava/util/UUID;

    .line 112
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v8

    int-to-long v8, v8

    .line 111
    invoke-direct {v5, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 110
    invoke-direct {v4, v5}, Lorg/teleal/cling/model/types/UDN;-><init>(Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v4

    .line 95
    .end local v1    # "hash":[B
    :catch_0
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/String;

    invoke-static {}, Lorg/teleal/cling/model/ModelUtil;->getFirstNetworkInterfaceHardwareAddress()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 99
    :catch_1
    move-exception v4

    goto :goto_0

    .line 116
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 117
    .restart local v0    # "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDN;
    .locals 2
    .param p0, "udnString"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lorg/teleal/cling/model/types/UDN;

    const-string v1, "uuid:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "uuid:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "udnString":Ljava/lang/String;
    :cond_0
    invoke-direct {v0, p0}, Lorg/teleal/cling/model/types/UDN;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 128
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 131
    :goto_0
    return v1

    .line 129
    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/teleal/cling/model/types/UDN;

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 130
    check-cast v0, Lorg/teleal/cling/model/types/UDN;

    .line 131
    .local v0, "udn":Lorg/teleal/cling/model/types/UDN;
    iget-object v1, p0, Lorg/teleal/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    iget-object v2, v0, Lorg/teleal/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIdentifierString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/teleal/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/teleal/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isUDA11Compliant()Z
    .locals 2

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/model/types/UDN;->identifierString:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    const/4 v1, 0x1

    .line 60
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uuid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/UDN;->getIdentifierString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
