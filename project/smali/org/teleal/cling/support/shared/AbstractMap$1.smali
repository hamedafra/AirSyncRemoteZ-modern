.class Lorg/teleal/cling/support/shared/AbstractMap$1;
.super Ljava/util/AbstractSet;
.source "AbstractMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/shared/AbstractMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/shared/AbstractMap;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/shared/AbstractMap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/shared/AbstractMap$1;->this$0:Lorg/teleal/cling/support/shared/AbstractMap;

    .line 335
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/teleal/cling/support/shared/AbstractMap$1;)Lorg/teleal/cling/support/shared/AbstractMap;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/teleal/cling/support/shared/AbstractMap$1;->this$0:Lorg/teleal/cling/support/shared/AbstractMap;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/teleal/cling/support/shared/AbstractMap$1;->this$0:Lorg/teleal/cling/support/shared/AbstractMap;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/support/shared/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Lorg/teleal/cling/support/shared/AbstractMap$1$1;

    invoke-direct {v0, p0}, Lorg/teleal/cling/support/shared/AbstractMap$1$1;-><init>(Lorg/teleal/cling/support/shared/AbstractMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/teleal/cling/support/shared/AbstractMap$1;->this$0:Lorg/teleal/cling/support/shared/AbstractMap;

    invoke-virtual {v0}, Lorg/teleal/cling/support/shared/AbstractMap;->size()I

    move-result v0

    return v0
.end method
