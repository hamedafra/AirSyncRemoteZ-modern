.class public Lorg/teleal/cling/model/meta/ActionArgument;
.super Ljava/lang/Object;
.source "ActionArgument.java"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/model/meta/ActionArgument$Direction;
    }
.end annotation

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
.field private action:Lorg/teleal/cling/model/meta/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/teleal/cling/model/meta/Action",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final aliases:[Ljava/lang/String;

.field private final direction:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

.field private final name:Ljava/lang/String;

.field private final relatedStateVariableName:Ljava/lang/String;

.field private final returnValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/teleal/cling/model/meta/ActionArgument;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/meta/ActionArgument;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "relatedStateVariableName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    .local p3, "direction":Lorg/teleal/cling/model/meta/ActionArgument$Direction;, "Lorg/teleal/cling/model/meta/ActionArgument$Direction;"
    const/4 v5, 0x0

    .line 55
    new-array v2, v5, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;Z)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "relatedStateVariableName"    # Ljava/lang/String;
    .param p4, "returnValue"    # Z

    .prologue
    .line 63
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    .local p3, "direction":Lorg/teleal/cling/model/meta/ActionArgument$Direction;, "Lorg/teleal/cling/model/meta/ActionArgument$Direction;"
    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "aliases"    # [Ljava/lang/String;
    .param p3, "relatedStateVariableName"    # Ljava/lang/String;

    .prologue
    .line 59
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    .local p4, "direction":Lorg/teleal/cling/model/meta/ActionArgument$Direction;, "Lorg/teleal/cling/model/meta/ActionArgument$Direction;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "aliases"    # [Ljava/lang/String;
    .param p3, "relatedStateVariableName"    # Ljava/lang/String;
    .param p5, "returnValue"    # Z

    .prologue
    .line 66
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    .local p4, "direction":Lorg/teleal/cling/model/meta/ActionArgument$Direction;, "Lorg/teleal/cling/model/meta/ActionArgument$Direction;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ActionArgument;->name:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lorg/teleal/cling/model/meta/ActionArgument;->aliases:[Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/teleal/cling/model/meta/ActionArgument;->relatedStateVariableName:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lorg/teleal/cling/model/meta/ActionArgument;->direction:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    .line 71
    iput-boolean p5, p0, Lorg/teleal/cling/model/meta/ActionArgument;->returnValue:Z

    .line 72
    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/teleal/cling/model/meta/ActionArgument;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    new-instance v0, Lorg/teleal/cling/model/meta/ActionArgument;

    .line 154
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getAliases()[Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getDirection()Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    move-result-object v4

    .line 158
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->isReturnValue()Z

    move-result v5

    .line 153
    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;Z)V

    return-object v0
.end method

.method public getAction()Lorg/teleal/cling/model/meta/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/model/meta/Action",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/ActionArgument;->action:Lorg/teleal/cling/model/meta/Action;

    return-object v0
.end method

.method public getAliases()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/ActionArgument;->aliases:[Ljava/lang/String;

    return-object v0
.end method

.method public getDatatype()Lorg/teleal/cling/model/types/Datatype;
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/teleal/cling/model/meta/Service;->getDatatype(Lorg/teleal/cling/model/meta/ActionArgument;)Lorg/teleal/cling/model/types/Datatype;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()Lorg/teleal/cling/model/meta/ActionArgument$Direction;
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/ActionArgument;->direction:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/ActionArgument;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedStateVariableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/ActionArgument;->relatedStateVariableName:Ljava/lang/String;

    return-object v0
.end method

.method public isNameOrAlias(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    iget-object v4, p0, Lorg/teleal/cling/model/meta/ActionArgument;->aliases:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-lt v3, v5, :cond_2

    move v1, v2

    .line 87
    goto :goto_0

    .line 84
    :cond_2
    aget-object v0, v4, v3

    .line 85
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public isReturnValue()Z
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    iget-boolean v0, p0, Lorg/teleal/cling/model/meta/ActionArgument;->returnValue:Z

    return v0
.end method

.method setAction(Lorg/teleal/cling/model/meta/Action;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/Action",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    .local p1, "action":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/ActionArgument;->action:Lorg/teleal/cling/model/meta/Action;

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Final value has been set already, model is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ActionArgument;->action:Lorg/teleal/cling/model/meta/Action;

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getDirection()Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 117
    .local p0, "this":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<TS;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 120
    :cond_0
    new-instance v1, Lorg/teleal/cling/model/ValidationError;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 122
    const-string v3, "name"

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Argument without name of: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getDirection()Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    move-result-object v1

    if-nez v1, :cond_2

    .line 134
    new-instance v1, Lorg/teleal/cling/model/ValidationError;

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 136
    const-string v3, "direction"

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Argument \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' requires a direction, either IN or OUT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->isReturnValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getDirection()Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->OUT:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    if-eq v1, v2, :cond_3

    .line 142
    new-instance v1, Lorg/teleal/cling/model/ValidationError;

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 144
    const-string v3, "direction"

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Return value argument \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' must be direction OUT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_3
    return-object v0

    .line 125
    :cond_4
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/teleal/cling/model/ModelUtil;->isValidUDAName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 126
    sget-object v1, Lorg/teleal/cling/model/meta/ActionArgument;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UPnP specification violation of: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 127
    sget-object v1, Lorg/teleal/cling/model/meta/ActionArgument;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid argument name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_5
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_1

    .line 129
    sget-object v1, Lorg/teleal/cling/model/meta/ActionArgument;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UPnP specification violation of: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/ActionArgument;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 130
    sget-object v1, Lorg/teleal/cling/model/meta/ActionArgument;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Argument name should be less than 32 characters: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
