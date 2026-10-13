.class public Lorg/teleal/cling/model/types/UnsignedIntegerFourBytesDatatype;
.super Lorg/teleal/cling/model/types/AbstractDatatype;
.source "UnsignedIntegerFourBytesDatatype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/types/AbstractDatatype",
        "<",
        "Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/teleal/cling/model/types/AbstractDatatype;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytesDatatype;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 26
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 28
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v1, p1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t convert string to number or not in range: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
