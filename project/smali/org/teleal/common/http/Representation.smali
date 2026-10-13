.class public Lorg/teleal/common/http/Representation;
.super Ljava/lang/Object;
.source "Representation.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private cacheControl:Lorg/teleal/common/http/CacheControl;

.field private contentLength:Ljava/lang/Integer;

.field private contentType:Ljava/lang/String;

.field private entity:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private entityTag:Ljava/lang/String;

.field private lastModified:Ljava/lang/Long;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lorg/teleal/common/http/CacheControl;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "cacheControl"    # Lorg/teleal/common/http/CacheControl;
    .param p3, "contentLength"    # Ljava/lang/Integer;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "lastModified"    # Ljava/lang/Long;
    .param p6, "entityTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lorg/teleal/common/http/CacheControl;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    .local p7, "entity":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/teleal/common/http/Representation;->url:Ljava/net/URL;

    .line 44
    iput-object p2, p0, Lorg/teleal/common/http/Representation;->cacheControl:Lorg/teleal/common/http/CacheControl;

    .line 45
    iput-object p3, p0, Lorg/teleal/common/http/Representation;->contentLength:Ljava/lang/Integer;

    .line 46
    iput-object p4, p0, Lorg/teleal/common/http/Representation;->contentType:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lorg/teleal/common/http/Representation;->lastModified:Ljava/lang/Long;

    .line 48
    iput-object p6, p0, Lorg/teleal/common/http/Representation;->entityTag:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lorg/teleal/common/http/Representation;->entity:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;Ljava/lang/Object;)V
    .locals 8
    .param p1, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    .local p2, "entity":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/common/http/CacheControl;->valueOf(Ljava/lang/String;)Lorg/teleal/common/http/CacheControl;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v0, "Etag"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/teleal/common/http/Representation;-><init>(Ljava/net/URL;Lorg/teleal/common/http/CacheControl;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/teleal/common/http/CacheControl;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "cacheControl"    # Lorg/teleal/common/http/CacheControl;
    .param p2, "contentLength"    # Ljava/lang/Integer;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "lastModified"    # Ljava/lang/Long;
    .param p5, "entityTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/common/http/CacheControl;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    .local p6, "entity":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/teleal/common/http/Representation;-><init>(Ljava/net/URL;Lorg/teleal/common/http/CacheControl;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getCacheControl()Lorg/teleal/common/http/CacheControl;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    iget-object v0, p0, Lorg/teleal/common/http/Representation;->cacheControl:Lorg/teleal/common/http/CacheControl;

    return-object v0
.end method

.method public getContentLength()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 73
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    iget-object v0, p0, Lorg/teleal/common/http/Representation;->contentLength:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/common/http/Representation;->contentLength:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/teleal/common/http/Representation;->contentLength:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    iget-object v0, p0, Lorg/teleal/common/http/Representation;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    iget-object v0, p0, Lorg/teleal/common/http/Representation;->entity:Ljava/lang/Object;

    return-object v0
.end method

.method public getEntityTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    iget-object v0, p0, Lorg/teleal/common/http/Representation;->entityTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 81
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    iget-object v0, p0, Lorg/teleal/common/http/Representation;->lastModified:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/teleal/common/http/Representation;->lastModified:Ljava/lang/Long;

    goto :goto_0
.end method

.method public getMaxAgeOrNull()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 93
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getCacheControl()Lorg/teleal/common/http/CacheControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getCacheControl()Lorg/teleal/common/http/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/common/http/CacheControl;->getMaxAge()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getCacheControl()Lorg/teleal/common/http/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/common/http/CacheControl;->getMaxAge()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getCacheControl()Lorg/teleal/common/http/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/common/http/CacheControl;->getMaxAge()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    iget-object v0, p0, Lorg/teleal/common/http/Representation;->url:Ljava/net/URL;

    return-object v0
.end method

.method public hasBeenModified(J)Z
    .locals 3
    .param p1, "currentModificationTime"    # J

    .prologue
    .line 129
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getLastModified()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getLastModified()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEntityTagChanged(Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentEtag"    # Ljava/lang/String;

    .prologue
    .line 124
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getEntityTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getEntityTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpired(J)Z
    .locals 3
    .param p1, "storedOn"    # J

    .prologue
    .line 105
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getMaxAgeOrNull()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getMaxAgeOrNull()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/teleal/common/http/Representation;->isExpired(JJ)Z

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

.method public isExpired(JJ)Z
    .locals 5
    .param p1, "storedOn"    # J
    .param p3, "maxAge"    # J

    .prologue
    .line 101
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p3

    add-long/2addr v0, p1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoCache()Z
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getCacheControl()Lorg/teleal/common/http/CacheControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getCacheControl()Lorg/teleal/common/http/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/common/http/CacheControl;->isNoCache()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoStore()Z
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getCacheControl()Lorg/teleal/common/http/CacheControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getCacheControl()Lorg/teleal/common/http/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/common/http/CacheControl;->isNoStore()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mustRevalidate()Z
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getCacheControl()Lorg/teleal/common/http/CacheControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getCacheControl()Lorg/teleal/common/http/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/common/http/CacheControl;->isProxyRevalidate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    .local p0, "this":Lorg/teleal/common/http/Representation;, "Lorg/teleal/common/http/Representation<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") CT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/common/http/Representation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
