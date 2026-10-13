.class public Lorg/teleal/cling/registry/RegistrationException;
.super Ljava/lang/RuntimeException;
.source "RegistrationException.java"


# instance fields
.field public errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/ValidationError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/ValidationError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lorg/teleal/cling/registry/RegistrationException;->errors:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistrationException;->errors:Ljava/util/List;

    return-object v0
.end method
