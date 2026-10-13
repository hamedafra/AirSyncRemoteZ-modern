.class public Lorg/teleal/common/http/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# instance fields
.field private cacheExtensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxAge:I

.field private mustRevalidate:Z

.field private noCache:Z

.field private noCacheFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private noStore:Z

.field private noTransform:Z

.field private privateFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private privateFlag:Z

.field private proxyRevalidate:Z

.field private sharedMaxAge:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lorg/teleal/common/http/CacheControl;->maxAge:I

    .line 27
    iput v0, p0, Lorg/teleal/common/http/CacheControl;->sharedMaxAge:I

    .line 29
    iput-boolean v1, p0, Lorg/teleal/common/http/CacheControl;->noCache:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/http/CacheControl;->noCacheFields:Ljava/util/List;

    .line 32
    iput-boolean v1, p0, Lorg/teleal/common/http/CacheControl;->privateFlag:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/http/CacheControl;->privateFields:Ljava/util/List;

    .line 35
    iput-boolean v1, p0, Lorg/teleal/common/http/CacheControl;->noStore:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/teleal/common/http/CacheControl;->noTransform:Z

    .line 37
    iput-boolean v1, p0, Lorg/teleal/common/http/CacheControl;->mustRevalidate:Z

    .line 38
    iput-boolean v1, p0, Lorg/teleal/common/http/CacheControl;->proxyRevalidate:Z

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/http/CacheControl;->cacheExtensions:Ljava/util/Map;

    return-void
.end method

.method private append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 223
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    return-object p2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/common/http/CacheControl;
    .locals 13
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 131
    if-nez p0, :cond_1

    const/4 v8, 0x0

    .line 181
    :cond_0
    return-object v8

    .line 132
    :cond_1
    new-instance v8, Lorg/teleal/common/http/CacheControl;

    invoke-direct {v8}, Lorg/teleal/common/http/CacheControl;-><init>()V

    .line 134
    .local v8, "result":Lorg/teleal/common/http/CacheControl;
    const-string v10, ","

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "directives":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 136
    .local v1, "directive":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v10, "="

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "nameValue":[Ljava/lang/String;
    aget-object v10, v7, v12

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "name":Ljava/lang/String;
    const/4 v9, 0x0

    .line 141
    .local v9, "value":Ljava/lang/String;
    array-length v10, v7

    if-le v10, v11, :cond_3

    .line 142
    aget-object v10, v7, v11

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 143
    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 144
    :cond_2
    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 147
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "lowercase":Ljava/lang/String;
    const-string v10, "no-cache"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 149
    invoke-virtual {v8, v11}, Lorg/teleal/common/http/CacheControl;->setNoCache(Z)V

    .line 150
    if-eqz v9, :cond_4

    const-string v10, ""

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 151
    invoke-virtual {v8}, Lorg/teleal/common/http/CacheControl;->getNoCacheFields()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    :cond_5
    const-string v10, "private"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 154
    invoke-virtual {v8, v11}, Lorg/teleal/common/http/CacheControl;->setPrivateFlag(Z)V

    .line 155
    if-eqz v9, :cond_4

    const-string v10, ""

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 156
    invoke-virtual {v8}, Lorg/teleal/common/http/CacheControl;->getPrivateFields()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    :cond_6
    const-string v10, "no-store"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 159
    invoke-virtual {v8, v11}, Lorg/teleal/common/http/CacheControl;->setNoStore(Z)V

    goto :goto_1

    .line 160
    :cond_7
    const-string v10, "max-age"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 161
    if-nez v9, :cond_8

    .line 162
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CacheControl max-age header does not have a value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 163
    :cond_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/teleal/common/http/CacheControl;->setMaxAge(I)V

    goto :goto_1

    .line 164
    :cond_9
    const-string v10, "s-maxage"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 165
    if-nez v9, :cond_a

    .line 166
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CacheControl s-maxage header does not have a value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 167
    :cond_a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/teleal/common/http/CacheControl;->setSharedMaxAge(I)V

    goto/16 :goto_1

    .line 168
    :cond_b
    const-string v10, "no-transform"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 169
    invoke-virtual {v8, v11}, Lorg/teleal/common/http/CacheControl;->setNoTransform(Z)V

    goto/16 :goto_1

    .line 170
    :cond_c
    const-string v10, "must-revalidate"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 171
    invoke-virtual {v8, v11}, Lorg/teleal/common/http/CacheControl;->setMustRevalidate(Z)V

    goto/16 :goto_1

    .line 172
    :cond_d
    const-string v10, "proxy-revalidate"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 173
    invoke-virtual {v8, v11}, Lorg/teleal/common/http/CacheControl;->setProxyRevalidate(Z)V

    goto/16 :goto_1

    .line 174
    :cond_e
    const-string v10, "public"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 177
    if-nez v9, :cond_f

    const-string v9, ""

    .line 178
    :cond_f
    invoke-virtual {v8}, Lorg/teleal/common/http/CacheControl;->getCacheExtensions()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    if-ne p0, p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v1

    .line 231
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

    .line 233
    check-cast v0, Lorg/teleal/common/http/CacheControl;

    .line 235
    .local v0, "that":Lorg/teleal/common/http/CacheControl;
    iget v3, p0, Lorg/teleal/common/http/CacheControl;->maxAge:I

    iget v4, v0, Lorg/teleal/common/http/CacheControl;->maxAge:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 236
    :cond_4
    iget-boolean v3, p0, Lorg/teleal/common/http/CacheControl;->mustRevalidate:Z

    iget-boolean v4, v0, Lorg/teleal/common/http/CacheControl;->mustRevalidate:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 237
    :cond_5
    iget-boolean v3, p0, Lorg/teleal/common/http/CacheControl;->noCache:Z

    iget-boolean v4, v0, Lorg/teleal/common/http/CacheControl;->noCache:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 238
    :cond_6
    iget-boolean v3, p0, Lorg/teleal/common/http/CacheControl;->noStore:Z

    iget-boolean v4, v0, Lorg/teleal/common/http/CacheControl;->noStore:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 239
    :cond_7
    iget-boolean v3, p0, Lorg/teleal/common/http/CacheControl;->noTransform:Z

    iget-boolean v4, v0, Lorg/teleal/common/http/CacheControl;->noTransform:Z

    if-eq v3, v4, :cond_8

    move v1, v2

    goto :goto_0

    .line 240
    :cond_8
    iget-boolean v3, p0, Lorg/teleal/common/http/CacheControl;->privateFlag:Z

    iget-boolean v4, v0, Lorg/teleal/common/http/CacheControl;->privateFlag:Z

    if-eq v3, v4, :cond_9

    move v1, v2

    goto :goto_0

    .line 241
    :cond_9
    iget-boolean v3, p0, Lorg/teleal/common/http/CacheControl;->proxyRevalidate:Z

    iget-boolean v4, v0, Lorg/teleal/common/http/CacheControl;->proxyRevalidate:Z

    if-eq v3, v4, :cond_a

    move v1, v2

    goto :goto_0

    .line 242
    :cond_a
    iget v3, p0, Lorg/teleal/common/http/CacheControl;->sharedMaxAge:I

    iget v4, v0, Lorg/teleal/common/http/CacheControl;->sharedMaxAge:I

    if-eq v3, v4, :cond_b

    move v1, v2

    goto :goto_0

    .line 243
    :cond_b
    iget-object v3, p0, Lorg/teleal/common/http/CacheControl;->cacheExtensions:Ljava/util/Map;

    iget-object v4, v0, Lorg/teleal/common/http/CacheControl;->cacheExtensions:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    move v1, v2

    goto :goto_0

    .line 244
    :cond_c
    iget-object v3, p0, Lorg/teleal/common/http/CacheControl;->noCacheFields:Ljava/util/List;

    iget-object v4, v0, Lorg/teleal/common/http/CacheControl;->noCacheFields:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    goto :goto_0

    .line 245
    :cond_d
    iget-object v3, p0, Lorg/teleal/common/http/CacheControl;->privateFields:Ljava/util/List;

    iget-object v4, v0, Lorg/teleal/common/http/CacheControl;->privateFields:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCacheExtensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/teleal/common/http/CacheControl;->cacheExtensions:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/teleal/common/http/CacheControl;->maxAge:I

    return v0
.end method

.method public getNoCacheFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/teleal/common/http/CacheControl;->noCacheFields:Ljava/util/List;

    return-object v0
.end method

.method public getPrivateFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/teleal/common/http/CacheControl;->privateFields:Ljava/util/List;

    return-object v0
.end method

.method public getSharedMaxAge()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/teleal/common/http/CacheControl;->sharedMaxAge:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 252
    iget v0, p0, Lorg/teleal/common/http/CacheControl;->maxAge:I

    .line 253
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v4, p0, Lorg/teleal/common/http/CacheControl;->sharedMaxAge:I

    add-int v0, v1, v4

    .line 254
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/teleal/common/http/CacheControl;->noCache:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 255
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lorg/teleal/common/http/CacheControl;->noCacheFields:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 256
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/teleal/common/http/CacheControl;->privateFlag:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v4, v1

    .line 257
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lorg/teleal/common/http/CacheControl;->privateFields:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 258
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/teleal/common/http/CacheControl;->noStore:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v4, v1

    .line 259
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/teleal/common/http/CacheControl;->noTransform:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v4, v1

    .line 260
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lorg/teleal/common/http/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v4, v1

    .line 261
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lorg/teleal/common/http/CacheControl;->proxyRevalidate:Z

    if-eqz v4, :cond_5

    :goto_5
    add-int v0, v1, v2

    .line 262
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/teleal/common/http/CacheControl;->cacheExtensions:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 263
    return v0

    :cond_0
    move v1, v3

    .line 254
    goto :goto_0

    :cond_1
    move v1, v3

    .line 256
    goto :goto_1

    :cond_2
    move v1, v3

    .line 258
    goto :goto_2

    :cond_3
    move v1, v3

    .line 259
    goto :goto_3

    :cond_4
    move v1, v3

    .line 260
    goto :goto_4

    :cond_5
    move v2, v3

    .line 261
    goto :goto_5
.end method

.method public isMustRevalidate()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/teleal/common/http/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public isNoCache()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/teleal/common/http/CacheControl;->noCache:Z

    return v0
.end method

.method public isNoStore()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/teleal/common/http/CacheControl;->noStore:Z

    return v0
.end method

.method public isNoTransform()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/teleal/common/http/CacheControl;->noTransform:Z

    return v0
.end method

.method public isPrivateFlag()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/teleal/common/http/CacheControl;->privateFlag:Z

    return v0
.end method

.method public isProxyRevalidate()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/teleal/common/http/CacheControl;->proxyRevalidate:Z

    return v0
.end method

.method public setCacheExtensions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "cacheExtensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/teleal/common/http/CacheControl;->cacheExtensions:Ljava/util/Map;

    .line 128
    return-void
.end method

.method public setMaxAge(I)V
    .locals 0
    .param p1, "maxAge"    # I

    .prologue
    .line 47
    iput p1, p0, Lorg/teleal/common/http/CacheControl;->maxAge:I

    .line 48
    return-void
.end method

.method public setMustRevalidate(Z)V
    .locals 0
    .param p1, "mustRevalidate"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/teleal/common/http/CacheControl;->mustRevalidate:Z

    .line 112
    return-void
.end method

.method public setNoCache(Z)V
    .locals 0
    .param p1, "noCache"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lorg/teleal/common/http/CacheControl;->noCache:Z

    .line 64
    return-void
.end method

.method public setNoCacheFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "noCacheFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/teleal/common/http/CacheControl;->noCacheFields:Ljava/util/List;

    .line 72
    return-void
.end method

.method public setNoStore(Z)V
    .locals 0
    .param p1, "noStore"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lorg/teleal/common/http/CacheControl;->noStore:Z

    .line 96
    return-void
.end method

.method public setNoTransform(Z)V
    .locals 0
    .param p1, "noTransform"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lorg/teleal/common/http/CacheControl;->noTransform:Z

    .line 104
    return-void
.end method

.method public setPrivateFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "privateFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/teleal/common/http/CacheControl;->privateFields:Ljava/util/List;

    .line 88
    return-void
.end method

.method public setPrivateFlag(Z)V
    .locals 0
    .param p1, "privateFlag"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/teleal/common/http/CacheControl;->privateFlag:Z

    .line 80
    return-void
.end method

.method public setProxyRevalidate(Z)V
    .locals 0
    .param p1, "proxyRevalidate"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lorg/teleal/common/http/CacheControl;->proxyRevalidate:Z

    .line 120
    return-void
.end method

.method public setSharedMaxAge(I)V
    .locals 0
    .param p1, "sharedMaxAge"    # I

    .prologue
    .line 55
    iput p1, p0, Lorg/teleal/common/http/CacheControl;->sharedMaxAge:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->isPrivateFlag()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "public"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->isMustRevalidate()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "must-revalidate"

    invoke-direct {p0, v6, v4}, Lorg/teleal/common/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 189
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->isNoTransform()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "no-transform"

    invoke-direct {p0, v6, v4}, Lorg/teleal/common/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 190
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->isNoStore()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "no-store"

    invoke-direct {p0, v6, v4}, Lorg/teleal/common/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 191
    :cond_3
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->isProxyRevalidate()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "proxy-revalidate"

    invoke-direct {p0, v6, v4}, Lorg/teleal/common/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 192
    :cond_4
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->getSharedMaxAge()I

    move-result v6

    if-le v6, v8, :cond_5

    const-string v6, "s-maxage"

    invoke-direct {p0, v6, v4}, Lorg/teleal/common/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->getSharedMaxAge()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    :cond_5
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->getMaxAge()I

    move-result v6

    if-le v6, v8, :cond_6

    const-string v6, "max-age"

    invoke-direct {p0, v6, v4}, Lorg/teleal/common/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->getMaxAge()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    :cond_6
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->isNoCache()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 195
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->getNoCacheFields()Ljava/util/List;

    move-result-object v1

    .line 196
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v9, :cond_a

    const-string v6, "no-cache"

    invoke-direct {p0, v6, v4}, Lorg/teleal/common/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 203
    .end local v1    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->isPrivateFlag()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 204
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->getPrivateFields()Ljava/util/List;

    move-result-object v1

    .line 205
    .restart local v1    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v9, :cond_b

    const-string v6, "private"

    invoke-direct {p0, v6, v4}, Lorg/teleal/common/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 212
    .end local v1    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->getCacheExtensions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 213
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->getCacheExtensions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 214
    .local v5, "val":Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lorg/teleal/common/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 215
    if-eqz v5, :cond_9

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 216
    const-string v6, "=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 198
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    .restart local v1    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->getNoCacheFields()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    .local v0, "field":Ljava/lang/String;
    const-string v6, "no-cache"

    invoke-direct {p0, v6, v4}, Lorg/teleal/common/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 207
    .end local v0    # "field":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-virtual {p0}, Lorg/teleal/common/http/CacheControl;->getPrivateFields()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    .restart local v0    # "field":Ljava/lang/String;
    const-string v6, "private"

    invoke-direct {p0, v6, v4}, Lorg/teleal/common/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 219
    .end local v0    # "field":Ljava/lang/String;
    .end local v1    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
