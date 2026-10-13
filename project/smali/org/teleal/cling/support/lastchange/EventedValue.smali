.class public abstract Lorg/teleal/cling/support/lastchange/EventedValue;
.super Ljava/lang/Object;
.source "EventedValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lorg/teleal/cling/support/lastchange/EventedValue;, "Lorg/teleal/cling/support/lastchange/EventedValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/teleal/cling/support/lastchange/EventedValue;->value:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>([Ljava/util/Map$Entry;)V
    .locals 2
    .param p1, "attributes"    # [Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lorg/teleal/cling/support/lastchange/EventedValue;, "Lorg/teleal/cling/support/lastchange/EventedValue<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValue;->valueOf([Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/support/lastchange/EventedValue;->value:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "ex":Lorg/teleal/cling/model/types/InvalidValueException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAttributes()[Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/teleal/cling/support/lastchange/EventedValue;, "Lorg/teleal/cling/support/lastchange/EventedValue<TV;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 52
    new-instance v2, Lorg/teleal/cling/support/shared/AbstractMap$SimpleEntry;

    const-string v3, "val"

    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/EventedValue;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/support/shared/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 51
    return-object v0
.end method

.method protected abstract getDatatype()Lorg/teleal/cling/model/types/Datatype;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lorg/teleal/cling/support/lastchange/EventedValue;, "Lorg/teleal/cling/support/lastchange/EventedValue<TV;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

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
    .line 47
    .local p0, "this":Lorg/teleal/cling/support/lastchange/EventedValue;, "Lorg/teleal/cling/support/lastchange/EventedValue<TV;>;"
    iget-object v0, p0, Lorg/teleal/cling/support/lastchange/EventedValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    .local p0, "this":Lorg/teleal/cling/support/lastchange/EventedValue;, "Lorg/teleal/cling/support/lastchange/EventedValue<TV;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/EventedValue;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/EventedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/teleal/cling/model/types/Datatype;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/teleal/cling/support/lastchange/EventedValue;, "Lorg/teleal/cling/support/lastchange/EventedValue<TV;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/EventedValue;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/teleal/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected valueOf([Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 6
    .param p1, "attributes"    # [Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/teleal/cling/support/lastchange/EventedValue;, "Lorg/teleal/cling/support/lastchange/EventedValue<TV;>;"
    const/4 v1, 0x0

    .line 58
    .local v1, "v":Ljava/lang/Object;, "TV;"
    array-length v4, p1

    const/4 v2, 0x0

    move v3, v2

    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :goto_0
    if-lt v3, v4, :cond_0

    .line 61
    return-object v1

    .line 58
    :cond_0
    aget-object v0, p1, v3

    .line 59
    .local v0, "attribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "val"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/teleal/cling/support/lastchange/EventedValue;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0
.end method
