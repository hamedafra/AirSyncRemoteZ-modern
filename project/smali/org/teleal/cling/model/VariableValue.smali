.class public Lorg/teleal/cling/model/VariableValue;
.super Ljava/lang/Object;
.source "VariableValue.java"


# instance fields
.field private final datatype:Lorg/teleal/cling/model/types/Datatype;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/Object;)V
    .locals 3
    .param p1, "datatype"    # Lorg/teleal/cling/model/types/Datatype;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/teleal/cling/model/VariableValue;->datatype:Lorg/teleal/cling/model/types/Datatype;

    .line 53
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p1, p2}, Lorg/teleal/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/teleal/cling/model/VariableValue;->value:Ljava/lang/Object;

    .line 55
    sget-boolean v0, Lorg/teleal/cling/model/ModelUtil;->ANDROID_RUNTIME:Z

    if-eqz v0, :cond_2

    .line 79
    :cond_1
    return-void

    .line 73
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/model/VariableValue;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/teleal/cling/model/types/Datatype;->isValid(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    new-instance v0, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/VariableValue;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/teleal/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    invoke-virtual {p0}, Lorg/teleal/cling/model/VariableValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/VariableValue;->isValidXMLString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lorg/teleal/cling/model/types/InvalidValueException;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid characters in string value (XML 1.0, section 2.2) produced by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/VariableValue;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDatatype()Lorg/teleal/cling/model/types/Datatype;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/teleal/cling/model/VariableValue;->datatype:Lorg/teleal/cling/model/types/Datatype;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/teleal/cling/model/VariableValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected isValidXMLString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 103
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 94
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 95
    .local v0, "cp":I
    const/16 v2, 0x9

    if-eq v0, v2, :cond_4

    const/16 v2, 0xa

    if-eq v0, v2, :cond_4

    const/16 v2, 0xd

    if-eq v0, v2, :cond_4

    .line 96
    const/16 v2, 0x20

    if-lt v0, v2, :cond_1

    const v2, 0xd7ff

    if-le v0, v2, :cond_4

    .line 97
    :cond_1
    const v2, 0xe000

    if-lt v0, v2, :cond_2

    const v2, 0xfffd

    if-le v0, v2, :cond_4

    .line 98
    :cond_2
    const/high16 v2, 0x10000

    if-lt v0, v2, :cond_3

    const v2, 0x10ffff

    if-le v0, v2, :cond_4

    .line 99
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 101
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/teleal/cling/model/VariableValue;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/VariableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/teleal/cling/model/types/Datatype;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
