.class public Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/shared/AbstractMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleImmutableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6310708932e65f81L


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;, "Lorg/teleal/cling/support/shared/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    .local p1, "theKey":Ljava/lang/Object;, "TK;"
    .local p2, "theValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    .line 58
    iput-object p2, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;, "Lorg/teleal/cling/support/shared/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    .local p1, "copyFrom":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    .line 66
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;, "Lorg/teleal/cling/support/shared/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    if-ne p0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 90
    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    if-nez v3, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 93
    :goto_1
    iget-object v3, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    if-nez v3, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    .line 91
    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 92
    if-eqz v3, :cond_2

    goto :goto_1

    .line 93
    :cond_4
    iget-object v3, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_5
    move v1, v2

    .line 96
    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;, "Lorg/teleal/cling/support/shared/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;, "Lorg/teleal/cling/support/shared/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, "this":Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;, "Lorg/teleal/cling/support/shared/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    .line 101
    :goto_0
    iget-object v2, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 100
    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;, "Lorg/teleal/cling/support/shared/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    .local p0, "this":Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;, "Lorg/teleal/cling/support/shared/AbstractMap<TK;TV;>.SimpleImmutableEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/support/shared/AbstractMap$SimpleImmutableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
