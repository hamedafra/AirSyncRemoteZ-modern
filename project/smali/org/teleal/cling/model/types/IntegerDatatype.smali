.class public Lorg/teleal/cling/model/types/IntegerDatatype;
.super Lorg/teleal/cling/model/types/AbstractDatatype;
.source "IntegerDatatype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/types/AbstractDatatype",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private byteSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "byteSize"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/teleal/cling/model/types/AbstractDatatype;-><init>()V

    .line 30
    iput p1, p0, Lorg/teleal/cling/model/types/IntegerDatatype;->byteSize:I

    .line 31
    return-void
.end method


# virtual methods
.method public getByteSize()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/teleal/cling/model/types/IntegerDatatype;->byteSize:I

    return v0
.end method

.method public getMaxValue()I
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/IntegerDatatype;->getByteSize()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid integer byte size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/IntegerDatatype;->getByteSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :pswitch_1
    const/16 v0, 0x7f

    .line 75
    :goto_0
    return v0

    .line 73
    :pswitch_2
    const/16 v0, 0x7fff

    goto :goto_0

    .line 75
    :pswitch_3
    const v0, 0x7fffffff

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getMinValue()I
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/IntegerDatatype;->getByteSize()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid integer byte size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/IntegerDatatype;->getByteSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :pswitch_1
    const/16 v0, -0x80

    .line 63
    :goto_0
    return v0

    .line 61
    :pswitch_2
    const/16 v0, -0x8000

    goto :goto_0

    .line 63
    :pswitch_3
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isHandlingJavaType(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 35
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValid(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 53
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/IntegerDatatype;->getMinValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/IntegerDatatype;->getMaxValue()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/types/IntegerDatatype;->isValid(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 39
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 46
    :cond_0
    return-object v1

    .line 41
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 42
    .local v1, "value":Ljava/lang/Integer;
    invoke-virtual {p0, v1}, Lorg/teleal/cling/model/types/IntegerDatatype;->isValid(Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    new-instance v2, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not a "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/IntegerDatatype;->getByteSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " byte(s) integer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t convert string to number: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
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
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/types/IntegerDatatype;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
