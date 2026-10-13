.class public abstract Lorg/teleal/cling/model/state/StateVariableAccessor;
.super Ljava/lang/Object;
.source "StateVariableAccessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getReturnType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract read(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public read(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/Object;)Lorg/teleal/cling/model/state/StateVariableValue;
    .locals 3
    .param p2, "serviceImpl"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/StateVariable",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/teleal/cling/model/state/StateVariableValue;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;, "Lorg/teleal/cling/model/meta/StateVariable<Lorg/teleal/cling/model/meta/LocalService;>;"
    new-instance v0, Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;

    invoke-direct {v0, p0, p2, p1}, Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;-><init>(Lorg/teleal/cling/model/state/StateVariableAccessor;Ljava/lang/Object;Lorg/teleal/cling/model/meta/StateVariable;)V

    .line 48
    .local v0, "cmd":Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/LocalService;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/LocalService;->getManager()Lorg/teleal/cling/model/ServiceManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/teleal/cling/model/ServiceManager;->execute(Lorg/teleal/cling/model/Command;)V

    .line 49
    new-instance v1, Lorg/teleal/cling/model/state/StateVariableValue;

    iget-object v2, v0, Lorg/teleal/cling/model/state/StateVariableAccessor$1AccessCommand;->result:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lorg/teleal/cling/model/state/StateVariableValue;-><init>(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
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
