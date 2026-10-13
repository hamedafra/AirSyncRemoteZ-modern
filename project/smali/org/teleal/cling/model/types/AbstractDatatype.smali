.class public abstract Lorg/teleal/cling/model/types/AbstractDatatype;
.super Ljava/lang/Object;
.source "AbstractDatatype.java"

# interfaces
.implements Lorg/teleal/cling/model/types/Datatype;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/teleal/cling/model/types/Datatype",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private builtin:Lorg/teleal/cling/model/types/Datatype$Builtin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lorg/teleal/cling/model/types/AbstractDatatype;, "Lorg/teleal/cling/model/types/AbstractDatatype<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuiltin()Lorg/teleal/cling/model/types/Datatype$Builtin;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lorg/teleal/cling/model/types/AbstractDatatype;, "Lorg/teleal/cling/model/types/AbstractDatatype<TV;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/types/AbstractDatatype;->builtin:Lorg/teleal/cling/model/types/Datatype$Builtin;

    return-object v0
.end method

.method public getDisplayString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lorg/teleal/cling/model/types/AbstractDatatype;, "Lorg/teleal/cling/model/types/AbstractDatatype<TV;>;"
    instance-of v0, p0, Lorg/teleal/cling/model/types/CustomDatatype;

    if-eqz v0, :cond_0

    .line 70
    check-cast p0, Lorg/teleal/cling/model/types/CustomDatatype;

    .end local p0    # "this":Lorg/teleal/cling/model/types/AbstractDatatype;, "Lorg/teleal/cling/model/types/AbstractDatatype<TV;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/CustomDatatype;->getName()Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local p0    # "this":Lorg/teleal/cling/model/types/AbstractDatatype;, "Lorg/teleal/cling/model/types/AbstractDatatype<TV;>;"
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/AbstractDatatype;->getBuiltin()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/AbstractDatatype;->getBuiltin()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDescriptorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/AbstractDatatype;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/teleal/cling/model/types/AbstractDatatype;, "Lorg/teleal/cling/model/types/AbstractDatatype<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    const-string v0, ""

    .line 56
    :goto_0
    return-object v0

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/types/AbstractDatatype;->isValid(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lorg/teleal/cling/model/types/InvalidValueException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value is not valid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/types/InvalidValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getValueType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lorg/teleal/cling/model/types/AbstractDatatype;, "Lorg/teleal/cling/model/types/AbstractDatatype<TV;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public isHandlingJavaType(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    .line 35
    .local p0, "this":Lorg/teleal/cling/model/types/AbstractDatatype;, "Lorg/teleal/cling/model/types/AbstractDatatype<TV;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/AbstractDatatype;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/teleal/cling/model/types/AbstractDatatype;, "Lorg/teleal/cling/model/types/AbstractDatatype<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/AbstractDatatype;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBuiltin(Lorg/teleal/cling/model/types/Datatype$Builtin;)V
    .locals 0

    .prologue
    .line 48
    .local p0, "this":Lorg/teleal/cling/model/types/AbstractDatatype;, "Lorg/teleal/cling/model/types/AbstractDatatype<TV;>;"
    .local p1, "builtin":Lorg/teleal/cling/model/types/Datatype$Builtin;, "Lorg/teleal/cling/model/types/Datatype$Builtin;"
    iput-object p1, p0, Lorg/teleal/cling/model/types/AbstractDatatype;->builtin:Lorg/teleal/cling/model/types/Datatype$Builtin;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    .local p0, "this":Lorg/teleal/cling/model/types/AbstractDatatype;, "Lorg/teleal/cling/model/types/AbstractDatatype<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/teleal/cling/model/types/AbstractDatatype;, "Lorg/teleal/cling/model/types/AbstractDatatype<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method
