.class public Lorg/teleal/common/mock/http/IteratorEnumeration;
.super Ljava/lang/Object;
.source "IteratorEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .param p1, "iterator"    # Ljava/util/Iterator;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/teleal/common/mock/http/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    .line 54
    return-void
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/teleal/common/mock/http/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/teleal/common/mock/http/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/teleal/common/mock/http/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .locals 0
    .param p1, "iterator"    # Ljava/util/Iterator;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/teleal/common/mock/http/IteratorEnumeration;->iterator:Ljava/util/Iterator;

    .line 99
    return-void
.end method
