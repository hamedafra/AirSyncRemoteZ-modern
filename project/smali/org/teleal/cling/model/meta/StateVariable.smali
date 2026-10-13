.class public Lorg/teleal/cling/model/meta/StateVariable;
.super Ljava/lang/Object;
.source "StateVariable.java"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/teleal/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/teleal/cling/model/Validatable;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final eventDetails:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

.field private final name:Ljava/lang/String;

.field private service:Lorg/teleal/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final type:Lorg/teleal/cling/model/meta/StateVariableTypeDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/teleal/cling/model/meta/StateVariable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/meta/StateVariable;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    .prologue
    .line 47
    .local p0, "this":Lorg/teleal/cling/model/meta/StateVariable;, "Lorg/teleal/cling/model/meta/StateVariable<TS;>;"
    new-instance v0, Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    invoke-direct {v0}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;Lorg/teleal/cling/model/meta/StateVariableEventDetails;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;Lorg/teleal/cling/model/meta/StateVariableEventDetails;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/teleal/cling/model/meta/StateVariableTypeDetails;
    .param p3, "eventDetails"    # Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    .prologue
    .line 50
    .local p0, "this":Lorg/teleal/cling/model/meta/StateVariable;, "Lorg/teleal/cling/model/meta/StateVariable<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/teleal/cling/model/meta/StateVariable;->name:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/teleal/cling/model/meta/StateVariable;->type:Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    .line 53
    iput-object p3, p0, Lorg/teleal/cling/model/meta/StateVariable;->eventDetails:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    .line 54
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/teleal/cling/model/meta/StateVariable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/model/meta/StateVariable",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lorg/teleal/cling/model/meta/StateVariable;, "Lorg/teleal/cling/model/meta/StateVariable<TS;>;"
    new-instance v0, Lorg/teleal/cling/model/meta/StateVariable;

    .line 103
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v2

    .line 105
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getEventDetails()Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    move-result-object v3

    .line 102
    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;Lorg/teleal/cling/model/meta/StateVariableEventDetails;)V

    return-object v0
.end method

.method public getEventDetails()Lorg/teleal/cling/model/meta/StateVariableEventDetails;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lorg/teleal/cling/model/meta/StateVariable;, "Lorg/teleal/cling/model/meta/StateVariable<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/StateVariable;->eventDetails:Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lorg/teleal/cling/model/meta/StateVariable;, "Lorg/teleal/cling/model/meta/StateVariable<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/StateVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Lorg/teleal/cling/model/meta/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/teleal/cling/model/meta/StateVariable;, "Lorg/teleal/cling/model/meta/StateVariable<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/StateVariable;->service:Lorg/teleal/cling/model/meta/Service;

    return-object v0
.end method

.method public getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lorg/teleal/cling/model/meta/StateVariable;, "Lorg/teleal/cling/model/meta/StateVariable<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/StateVariable;->type:Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    return-object v0
.end method

.method public isModeratedNumericType()Z
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lorg/teleal/cling/model/meta/StateVariable;, "Lorg/teleal/cling/model/meta/StateVariable<TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/model/types/Datatype;->getBuiltin()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v0

    invoke-static {v0}, Lorg/teleal/cling/model/types/Datatype$Builtin;->isNumeric(Lorg/teleal/cling/model/types/Datatype$Builtin;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getEventDetails()Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->getEventMinimumDelta()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setService(Lorg/teleal/cling/model/meta/Service;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/teleal/cling/model/meta/StateVariable;, "Lorg/teleal/cling/model/meta/StateVariable<TS;>;"
    .local p1, "service":Lorg/teleal/cling/model/meta/Service;, "TS;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/StateVariable;->service:Lorg/teleal/cling/model/meta/Service;

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Final value has been set already, model is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lorg/teleal/cling/model/meta/StateVariable;->service:Lorg/teleal/cling/model/meta/Service;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 111
    .local p0, "this":Lorg/teleal/cling/model/meta/StateVariable;, "Lorg/teleal/cling/model/meta/StateVariable<TS;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v2, ", Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, ", Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/model/types/Datatype;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getEventDetails()Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->isSendEvents()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    const-string v2, " (No Events)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 119
    const-string v2, " Default Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValues()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 122
    const-string v2, " Allowed Values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getAllowedValues()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_3

    .line 127
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 123
    :cond_3
    aget-object v0, v3, v2

    .line 124
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public validate()Ljava/util/List;
    .locals 6
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
    .line 79
    .local p0, "this":Lorg/teleal/cling/model/meta/StateVariable;, "Lorg/teleal/cling/model/meta/StateVariable<TS;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 82
    :cond_0
    new-instance v1, Lorg/teleal/cling/model/ValidationError;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 84
    const-string v3, "name"

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "StateVariable without name of: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->validate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    return-object v0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/teleal/cling/model/ModelUtil;->isValidUDAName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    sget-object v1, Lorg/teleal/cling/model/meta/StateVariable;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UPnP specification violation of: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariable;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 89
    sget-object v1, Lorg/teleal/cling/model/meta/StateVariable;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid state variable name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method
