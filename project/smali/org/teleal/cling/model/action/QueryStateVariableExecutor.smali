.class public Lorg/teleal/cling/model/action/QueryStateVariableExecutor;
.super Lorg/teleal/cling/model/action/AbstractActionExecutor;
.source "QueryStateVariableExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/teleal/cling/model/action/AbstractActionExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/lang/Object;)V
    .locals 3
    .param p2, "serviceImpl"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/action/ActionInvocation",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "actionInvocation":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<Lorg/teleal/cling/model/meta/LocalService;>;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v0

    instance-of v0, v0, Lorg/teleal/cling/model/meta/QueryStateVariableAction;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/LocalService;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/LocalService;->isSupportsQueryStateVariables()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lorg/teleal/cling/model/action/ActionException;

    sget-object v1, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

    const-string v2, "This service does not support querying state variables"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->setFailure(Lorg/teleal/cling/model/action/ActionException;)V

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/model/action/QueryStateVariableExecutor;->executeQueryStateVariable(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This class can only execute QueryStateVariableAction\'s, not: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected executeQueryStateVariable(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/lang/Object;)V
    .locals 9
    .param p2, "serviceImpl"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/action/ActionInvocation",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "actionInvocation":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<Lorg/teleal/cling/model/meta/LocalService;>;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/LocalService;

    .line 56
    .local v2, "service":Lorg/teleal/cling/model/meta/LocalService;
    const-string v5, "varName"

    invoke-virtual {p1, v5}, Lorg/teleal/cling/model/action/ActionInvocation;->getInput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "stateVariableName":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lorg/teleal/cling/model/meta/LocalService;->getStateVariable(Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v3

    .line 59
    .local v3, "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    if-nez v3, :cond_0

    .line 60
    new-instance v5, Lorg/teleal/cling/model/action/ActionException;

    .line 61
    sget-object v6, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "No state variable found: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 60
    invoke-direct {v5, v6, v7}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v5

    .line 66
    :cond_0
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/teleal/cling/model/meta/LocalService;->getAccessor(Ljava/lang/String;)Lorg/teleal/cling/model/state/StateVariableAccessor;

    move-result-object v0

    .local v0, "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    if-nez v0, :cond_1

    .line 67
    new-instance v5, Lorg/teleal/cling/model/action/ActionException;

    .line 68
    sget-object v6, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "No accessor for state variable, can\'t read state: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-direct {v5, v6, v7}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v5

    .line 75
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v5

    const-string v6, "return"

    invoke-virtual {v5, v6}, Lorg/teleal/cling/model/meta/Action;->getOutputArgument(Ljava/lang/String;)Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v5

    .line 76
    invoke-virtual {v0, v3, p2}, Lorg/teleal/cling/model/state/StateVariableAccessor;->read(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/Object;)Lorg/teleal/cling/model/state/StateVariableValue;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/state/StateVariableValue;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-virtual {p0, p1, v5, v6}, Lorg/teleal/cling/model/action/QueryStateVariableExecutor;->setOutputArgumentValue(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Lorg/teleal/cling/model/action/ActionException;

    sget-object v6, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v5
.end method
