.class public Lorg/teleal/cling/model/meta/StateVariableTypeDetails;
.super Ljava/lang/Object;
.source "StateVariableTypeDetails.java"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final allowedValueRange:Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

.field private final allowedValues:[Ljava/lang/String;

.field private final datatype:Lorg/teleal/cling/model/types/Datatype;

.field private final defaultValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/Datatype;)V
    .locals 1
    .param p1, "datatype"    # Lorg/teleal/cling/model/types/Datatype;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/String;)V
    .locals 1
    .param p1, "datatype"    # Lorg/teleal/cling/model/types/Datatype;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;)V
    .locals 0
    .param p1, "datatype"    # Lorg/teleal/cling/model/types/Datatype;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "allowedValues"    # [Ljava/lang/String;
    .param p4, "allowedValueRange"    # Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->datatype:Lorg/teleal/cling/model/types/Datatype;

    .line 55
    iput-object p2, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->defaultValue:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->allowedValues:[Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->allowedValueRange:Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    .line 58
    return-void
.end method


# virtual methods
.method protected foundDefaultInAllowedValues(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "defaultValue"    # Ljava/lang/String;
    .param p2, "allowedValues"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    array-length v4, p2

    move v3, v2

    :goto_1
    if-lt v3, v4, :cond_2

    move v1, v2

    .line 87
    goto :goto_0

    .line 84
    :cond_2
    aget-object v0, p2, v3

    .line 85
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getAllowedValueRange()Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->allowedValueRange:Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    return-object v0
.end method

.method public getAllowedValues()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->defaultValue:Ljava/lang/String;

    iget-object v2, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->allowedValues:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->foundDefaultInAllowedValues(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->allowedValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 75
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->allowedValues:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getDatatype()Lorg/teleal/cling/model/types/Datatype;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->datatype:Lorg/teleal/cling/model/types/Datatype;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 8
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
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v2

    if-nez v2, :cond_0

    .line 94
    new-instance v2, Lorg/teleal/cling/model/ValidationError;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 96
    const-string v4, "datatype"

    .line 97
    const-string v5, "Service state variable has no datatype"

    invoke-direct {v2, v3, v4, v5}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValues()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 104
    new-instance v2, Lorg/teleal/cling/model/ValidationError;

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 106
    const-string v4, "allowedValues"

    .line 107
    const-string v5, "Allowed value list of state variable can not also be restricted with allowed value range"

    invoke-direct {v2, v3, v4, v5}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1
    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Builtin;->STRING:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/model/types/Datatype;->getBuiltin()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/teleal/cling/model/types/Datatype$Builtin;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    new-instance v2, Lorg/teleal/cling/model/ValidationError;

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 114
    const-string v4, "allowedValues"

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Allowed value list of state variable only available for string datatype, not: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValues()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_5

    .line 125
    iget-object v2, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->defaultValue:Ljava/lang/String;

    iget-object v3, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->allowedValues:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->foundDefaultInAllowedValues(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 126
    sget-object v2, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UPnP specification violation, allowed string values don\'t contain default value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->defaultValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 132
    :cond_3
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 133
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValueRange()Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->validate()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    :cond_4
    return-object v0

    .line 119
    :cond_5
    aget-object v1, v3, v2

    .line 120
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1f

    if-le v5, v6, :cond_6

    .line 121
    sget-object v5, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UPnP specification violation, allowed value string must be less than 32 chars: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 119
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
