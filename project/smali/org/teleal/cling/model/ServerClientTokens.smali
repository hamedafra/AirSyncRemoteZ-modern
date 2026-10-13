.class public Lorg/teleal/cling/model/ServerClientTokens;
.super Ljava/lang/Object;
.source "ServerClientTokens.java"


# static fields
.field public static final UNKNOWN_PLACEHOLDER:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private majorVersion:I

.field private minorVersion:I

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->majorVersion:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->minorVersion:I

    .line 37
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 38
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 39
    const-string v0, "Teleal-Cling"

    iput-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 40
    const-string v0, "1.0"

    iput-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->majorVersion:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->minorVersion:I

    .line 37
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 38
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 39
    const-string v0, "Teleal-Cling"

    iput-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 40
    const-string v0, "1.0"

    iput-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 46
    iput p1, p0, Lorg/teleal/cling/model/ServerClientTokens;->majorVersion:I

    .line 47
    iput p2, p0, Lorg/teleal/cling/model/ServerClientTokens;->minorVersion:I

    .line 48
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "osName"    # Ljava/lang/String;
    .param p4, "osVersion"    # Ljava/lang/String;
    .param p5, "productName"    # Ljava/lang/String;
    .param p6, "productVersion"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->majorVersion:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->minorVersion:I

    .line 37
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 38
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 39
    const-string v0, "Teleal-Cling"

    iput-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 40
    const-string v0, "1.0"

    iput-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 51
    iput p1, p0, Lorg/teleal/cling/model/ServerClientTokens;->majorVersion:I

    .line 52
    iput p2, p0, Lorg/teleal/cling/model/ServerClientTokens;->minorVersion:I

    .line 53
    iput-object p3, p0, Lorg/teleal/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lorg/teleal/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lorg/teleal/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lorg/teleal/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    if-ne p0, p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v1

    .line 131
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 133
    check-cast v0, Lorg/teleal/cling/model/ServerClientTokens;

    .line 135
    .local v0, "that":Lorg/teleal/cling/model/ServerClientTokens;
    iget v3, p0, Lorg/teleal/cling/model/ServerClientTokens;->majorVersion:I

    iget v4, v0, Lorg/teleal/cling/model/ServerClientTokens;->majorVersion:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 136
    :cond_4
    iget v3, p0, Lorg/teleal/cling/model/ServerClientTokens;->minorVersion:I

    iget v4, v0, Lorg/teleal/cling/model/ServerClientTokens;->minorVersion:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 137
    :cond_5
    iget-object v3, p0, Lorg/teleal/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 138
    :cond_6
    iget-object v3, p0, Lorg/teleal/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 139
    :cond_7
    iget-object v3, p0, Lorg/teleal/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 140
    :cond_8
    iget-object v3, p0, Lorg/teleal/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getHttpToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getOsName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string v1, " UPnP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getMajorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getMinorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getProductName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->minorVersion:I

    return v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getOsName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getProductName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 147
    iget v0, p0, Lorg/teleal/cling/model/ServerClientTokens;->majorVersion:I

    .line 148
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/teleal/cling/model/ServerClientTokens;->minorVersion:I

    add-int v0, v1, v2

    .line 149
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 150
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 151
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 152
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 153
    return v0
.end method

.method public setMajorVersion(I)V
    .locals 0
    .param p1, "majorVersion"    # I

    .prologue
    .line 64
    iput p1, p0, Lorg/teleal/cling/model/ServerClientTokens;->majorVersion:I

    .line 65
    return-void
.end method

.method public setMinorVersion(I)V
    .locals 0
    .param p1, "minorVersion"    # I

    .prologue
    .line 72
    iput p1, p0, Lorg/teleal/cling/model/ServerClientTokens;->minorVersion:I

    .line 73
    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "osName"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/teleal/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/teleal/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/teleal/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "productVersion"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/teleal/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getOsName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    const-string v1, " UPnP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getMajorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getMinorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/ServerClientTokens;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
