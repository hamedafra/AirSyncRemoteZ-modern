.class public Lorg/teleal/cling/binding/staging/MutableAction;
.super Ljava/lang/Object;
.source "MutableAction.java"


# instance fields
.field public arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/binding/staging/MutableActionArgument;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableAction;->arguments:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public build()Lorg/teleal/cling/model/meta/Action;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lorg/teleal/cling/model/meta/Action;

    iget-object v1, p0, Lorg/teleal/cling/binding/staging/MutableAction;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/staging/MutableAction;->createActionArgumennts()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/meta/Action;-><init>(Ljava/lang/String;[Lorg/teleal/cling/model/meta/ActionArgument;)V

    return-object v0
.end method

.method public createActionArgumennts()[Lorg/teleal/cling/model/meta/ActionArgument;
    .locals 6

    .prologue
    .line 39
    iget-object v4, p0, Lorg/teleal/cling/binding/staging/MutableAction;->arguments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Lorg/teleal/cling/model/meta/ActionArgument;

    .line 40
    .local v1, "array":[Lorg/teleal/cling/model/meta/ActionArgument;
    const/4 v2, 0x0

    .line 41
    .local v2, "i":I
    iget-object v4, p0, Lorg/teleal/cling/binding/staging/MutableAction;->arguments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 44
    return-object v1

    .line 41
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/binding/staging/MutableActionArgument;

    .line 42
    .local v0, "argument":Lorg/teleal/cling/binding/staging/MutableActionArgument;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v0}, Lorg/teleal/cling/binding/staging/MutableActionArgument;->build()Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v5

    aput-object v5, v1, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method
