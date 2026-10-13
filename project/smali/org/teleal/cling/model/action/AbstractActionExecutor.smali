.class public abstract Lorg/teleal/cling/model/action/AbstractActionExecutor;
.super Ljava/lang/Object;
.source "AbstractActionExecutor.java"

# interfaces
.implements Lorg/teleal/cling/model/action/ActionExecutor;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected outputArgumentAccessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;",
            "Lorg/teleal/cling/model/state/StateVariableAccessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/teleal/cling/model/action/AbstractActionExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/action/AbstractActionExecutor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/action/AbstractActionExecutor;->outputArgumentAccessors:Ljava/util/Map;

    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;",
            "Lorg/teleal/cling/model/state/StateVariableAccessor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "outputArgumentAccessors":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/ActionArgument<Lorg/teleal/cling/model/meta/LocalService;>;Lorg/teleal/cling/model/state/StateVariableAccessor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/action/AbstractActionExecutor;->outputArgumentAccessors:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lorg/teleal/cling/model/action/AbstractActionExecutor;->outputArgumentAccessors:Ljava/util/Map;

    .line 51
    return-void
.end method


# virtual methods
.method public execute(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/action/ActionInvocation",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "actionInvocation":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<Lorg/teleal/cling/model/meta/LocalService;>;"
    sget-object v2, Lorg/teleal/cling/model/action/AbstractActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invoking on local service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/LocalService;

    .line 68
    .local v1, "service":Lorg/teleal/cling/model/meta/LocalService;
    :try_start_0
    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/LocalService;->getManager()Lorg/teleal/cling/model/ServiceManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 69
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Service has no implementation factory, can\'t get service instance"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/teleal/cling/model/action/ActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Lorg/teleal/cling/model/action/ActionException;
    sget-object v2, Lorg/teleal/cling/model/action/AbstractActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ActionException thrown by service method, wrapping in invocation and returning: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    sget-object v2, Lorg/teleal/cling/model/action/AbstractActionExecutor;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Exception root cause: "

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    invoke-virtual {p1, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->setFailure(Lorg/teleal/cling/model/action/ActionException;)V

    .line 101
    .end local v0    # "ex":Lorg/teleal/cling/model/action/ActionException;
    :goto_0
    return-void

    .line 72
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/LocalService;->getManager()Lorg/teleal/cling/model/ServiceManager;

    move-result-object v2

    new-instance v3, Lorg/teleal/cling/model/action/AbstractActionExecutor$1;

    invoke-direct {v3, p0, p1}, Lorg/teleal/cling/model/action/AbstractActionExecutor$1;-><init>(Lorg/teleal/cling/model/action/AbstractActionExecutor;Lorg/teleal/cling/model/action/ActionInvocation;)V

    invoke-interface {v2, v3}, Lorg/teleal/cling/model/ServiceManager;->execute(Lorg/teleal/cling/model/Command;)V
    :try_end_1
    .catch Lorg/teleal/cling/model/action/ActionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    .line 91
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/teleal/cling/model/action/AbstractActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception thrown by execution, wrapping in ActionException and returning: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 92
    sget-object v2, Lorg/teleal/cling/model/action/AbstractActionExecutor;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Exception root cause: "

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    new-instance v3, Lorg/teleal/cling/model/action/ActionException;

    .line 95
    sget-object v4, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "Action method invocation failed: "

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-direct {v3, v4, v2, v0}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/action/ActionInvocation;->setFailure(Lorg/teleal/cling/model/action/ActionException;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected abstract execute(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/lang/Object;)V
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
.end method

.method public getOutputArgumentAccessors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;",
            "Lorg/teleal/cling/model/state/StateVariableAccessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/teleal/cling/model/action/AbstractActionExecutor;->outputArgumentAccessors:Ljava/util/Map;

    return-object v0
.end method

.method protected readOutputArgumentValues(Lorg/teleal/cling/model/meta/Action;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/Action",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "action":Lorg/teleal/cling/model/meta/Action;, "Lorg/teleal/cling/model/meta/Action<Lorg/teleal/cling/model/meta/LocalService;>;"
    const/4 v6, 0x0

    .line 115
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Action;->getOutputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v5

    array-length v5, v5

    new-array v4, v5, [Ljava/lang/Object;

    .line 116
    .local v4, "results":[Ljava/lang/Object;
    sget-object v5, Lorg/teleal/cling/model/action/AbstractActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Attempting to retrieve output argument values using accessor: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "i":I
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Action;->getOutputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-lt v5, v8, :cond_1

    .line 131
    array-length v5, v4

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    .line 132
    aget-object v4, v4, v6

    .line 134
    .end local v4    # "results":[Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v4

    .line 119
    .restart local v4    # "results":[Ljava/lang/Object;
    :cond_1
    aget-object v3, v7, v5

    .line 120
    .local v3, "outputArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    sget-object v9, Lorg/teleal/cling/model/action/AbstractActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Calling acccessor method for: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lorg/teleal/cling/model/action/AbstractActionExecutor;->getOutputArgumentAccessors()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/state/StateVariableAccessor;

    .line 123
    .local v0, "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    if-eqz v0, :cond_2

    .line 124
    sget-object v9, Lorg/teleal/cling/model/action/AbstractActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Calling accessor to read output argument value: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v0, p2}, Lorg/teleal/cling/model/state/StateVariableAccessor;->read(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v4, v2

    .line 119
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 127
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No accessor bound for: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    .end local v0    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    .end local v3    # "outputArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    :cond_3
    array-length v5, v4

    if-gtz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected setOutputArgumentValue(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/Object;)V
    .locals 6
    .param p3, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/action/ActionInvocation",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;",
            "Lorg/teleal/cling/model/meta/ActionArgument",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "actionInvocation":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<Lorg/teleal/cling/model/meta/LocalService;>;"
    .local p2, "argument":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<Lorg/teleal/cling/model/meta/LocalService;>;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/LocalService;

    .line 145
    .local v1, "service":Lorg/teleal/cling/model/meta/LocalService;
    if-eqz p3, :cond_1

    .line 147
    :try_start_0
    invoke-virtual {v1, p3}, Lorg/teleal/cling/model/meta/LocalService;->isStringConvertibleType(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    sget-object v2, Lorg/teleal/cling/model/action/AbstractActionExecutor;->log:Ljava/util/logging/Logger;

    const-string v3, "Result of invocation matches convertible type, setting toString() single output argument value"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 149
    new-instance v2, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lorg/teleal/cling/model/action/ActionArgumentValue;-><init>(Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setOutput(Lorg/teleal/cling/model/action/ActionArgumentValue;)V

    .line 166
    :goto_0
    return-void

    .line 151
    :cond_0
    sget-object v2, Lorg/teleal/cling/model/action/AbstractActionExecutor;->log:Ljava/util/logging/Logger;

    const-string v3, "Result of invocation is Object, setting single output argument value"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 152
    new-instance v2, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-direct {v2, p2, p3}, Lorg/teleal/cling/model/action/ActionArgumentValue;-><init>(Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setOutput(Lorg/teleal/cling/model/action/ActionArgumentValue;)V
    :try_end_0
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "ex":Lorg/teleal/cling/model/types/InvalidValueException;
    new-instance v2, Lorg/teleal/cling/model/action/ActionException;

    .line 156
    sget-object v3, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Wrong type or invalid value for \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/InvalidValueException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-direct {v2, v3, v4, v0}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 163
    .end local v0    # "ex":Lorg/teleal/cling/model/types/InvalidValueException;
    :cond_1
    sget-object v2, Lorg/teleal/cling/model/action/AbstractActionExecutor;->log:Ljava/util/logging/Logger;

    const-string v3, "Result of invocation is null, not setting any output argument value(s)"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0
.end method
