.class public Lorg/teleal/cling/model/types/BinHexDatatype;
.super Lorg/teleal/cling/model/types/AbstractDatatype;
.source "BinHexDatatype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/types/AbstractDatatype",
        "<[",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/teleal/cling/model/types/AbstractDatatype;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Byte;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/types/BinHexDatatype;->getString([Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString([Ljava/lang/Byte;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # [Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 46
    if-nez p1, :cond_0

    const-string v1, ""

    .line 48
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/teleal/common/util/ByteArray;->toPrimitive([Ljava/lang/Byte;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/teleal/common/util/HexBin;->bytesToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/teleal/cling/model/types/InvalidValueException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<[",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const-class v0, [Ljava/lang/Byte;

    return-object v0
.end method

.method public bridge synthetic valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/types/BinHexDatatype;->valueOf(Ljava/lang/String;)[Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)[Ljava/lang/Byte;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 38
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/teleal/common/util/HexBin;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/teleal/common/util/ByteArray;->toWrapper([B)[Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/teleal/cling/model/types/InvalidValueException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
