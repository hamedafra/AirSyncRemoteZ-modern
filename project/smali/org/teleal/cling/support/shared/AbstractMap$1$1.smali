.class Lorg/teleal/cling/support/shared/AbstractMap$1$1;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/shared/AbstractMap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field setIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/teleal/cling/support/shared/AbstractMap$1;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/shared/AbstractMap$1;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/shared/AbstractMap$1$1;->this$1:Lorg/teleal/cling/support/shared/AbstractMap$1;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    invoke-static {p1}, Lorg/teleal/cling/support/shared/AbstractMap$1;->access$0(Lorg/teleal/cling/support/shared/AbstractMap$1;)Lorg/teleal/cling/support/shared/AbstractMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/support/shared/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/shared/AbstractMap$1$1;->setIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/teleal/cling/support/shared/AbstractMap$1$1;->setIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lorg/teleal/cling/support/shared/AbstractMap$1$1;->setIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/teleal/cling/support/shared/AbstractMap$1$1;->setIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 358
    return-void
.end method
