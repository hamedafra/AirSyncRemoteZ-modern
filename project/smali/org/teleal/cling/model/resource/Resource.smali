.class public Lorg/teleal/cling/model/resource/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private pathQuery:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/lang/Object;)V
    .locals 7
    .param p1, "pathQuery"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "TM;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/teleal/cling/model/resource/Resource;, "Lorg/teleal/cling/model/resource/Resource<TM;>;"
    .local p2, "model":Ljava/lang/Object;, "TM;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/teleal/cling/model/resource/Resource;->pathQuery:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iput-object p2, p0, Lorg/teleal/cling/model/resource/Resource;->model:Ljava/lang/Object;

    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Model instance must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :catch_0
    move-exception v6

    .line 46
    .local v6, "ex":Ljava/net/URISyntaxException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 52
    .end local v6    # "ex":Ljava/net/URISyntaxException;
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/resource/Resource;, "Lorg/teleal/cling/model/resource/Resource<TM;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    if-ne p0, p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 98
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

    .line 100
    check-cast v0, Lorg/teleal/cling/model/resource/Resource;

    .line 102
    .local v0, "resource":Lorg/teleal/cling/model/resource/Resource;
    invoke-virtual {p0}, Lorg/teleal/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v0}, Lorg/teleal/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getModel()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lorg/teleal/cling/model/resource/Resource;, "Lorg/teleal/cling/model/resource/Resource<TM;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/resource/Resource;->model:Ljava/lang/Object;

    return-object v0
.end method

.method public getPathQuery()Ljava/net/URI;
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lorg/teleal/cling/model/resource/Resource;, "Lorg/teleal/cling/model/resource/Resource<TM;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/resource/Resource;->pathQuery:Ljava/net/URI;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lorg/teleal/cling/model/resource/Resource;, "Lorg/teleal/cling/model/resource/Resource<TM;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public maintain(Ljava/util/List;Lorg/teleal/cling/model/ExpirationDetails;)V
    .locals 0
    .param p2, "expirationDetails"    # Lorg/teleal/cling/model/ExpirationDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lorg/teleal/cling/model/ExpirationDetails;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/teleal/cling/model/resource/Resource;, "Lorg/teleal/cling/model/resource/Resource<TM;>;"
    .local p1, "pendingExecutions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    return-void
.end method

.method public matches(Ljava/net/URI;)Z
    .locals 1
    .param p1, "pathQuery"    # Ljava/net/URI;

    .prologue
    .line 68
    .local p0, "this":Lorg/teleal/cling/model/resource/Resource;, "Lorg/teleal/cling/model/resource/Resource<TM;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lorg/teleal/cling/model/resource/Resource;, "Lorg/teleal/cling/model/resource/Resource<TM;>;"
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    .local p0, "this":Lorg/teleal/cling/model/resource/Resource;, "Lorg/teleal/cling/model/resource/Resource<TM;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
