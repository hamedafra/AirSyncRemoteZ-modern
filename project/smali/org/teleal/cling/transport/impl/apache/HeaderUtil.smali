.class public Lorg/teleal/cling/transport/impl/apache/HeaderUtil;
.super Ljava/lang/Object;
.source "HeaderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/apache/http/HttpMessage;Lorg/teleal/common/http/Headers;)V
    .locals 5
    .param p0, "httpMessage"    # Lorg/apache/http/HttpMessage;
    .param p1, "headers"    # Lorg/teleal/common/http/Headers;

    .prologue
    .line 35
    invoke-virtual {p1}, Lorg/teleal/common/http/Headers;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    return-void

    .line 35
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    .local v1, "value":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2, v1}, Lorg/apache/http/HttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static get(Lorg/apache/http/HttpMessage;)Lorg/teleal/common/http/Headers;
    .locals 7
    .param p0, "httpMessage"    # Lorg/apache/http/HttpMessage;

    .prologue
    .line 43
    new-instance v1, Lorg/teleal/common/http/Headers;

    invoke-direct {v1}, Lorg/teleal/common/http/Headers;-><init>()V

    .line 44
    .local v1, "headers":Lorg/teleal/common/http/Headers;
    invoke-interface {p0}, Lorg/apache/http/HttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 47
    return-object v1

    .line 44
    :cond_0
    aget-object v0, v3, v2

    .line 45
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/teleal/common/http/Headers;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
