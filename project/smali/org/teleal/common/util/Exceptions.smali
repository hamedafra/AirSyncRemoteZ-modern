.class public Lorg/teleal/common/util/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot unwrap null throwable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_0
    move-object v0, p0

    .local v0, "current":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_1

    .line 29
    move-object p0, v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_1
    return-object p0
.end method
