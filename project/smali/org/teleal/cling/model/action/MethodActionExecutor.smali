.class public Lorg/teleal/cling/model/action/MethodActionExecutor;
.super Lorg/teleal/cling/model/action/AbstractActionExecutor;
.source "MethodActionExecutor.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected method:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/teleal/cling/model/action/MethodActionExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/teleal/cling/model/action/AbstractActionExecutor;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/teleal/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p2, "method"    # Ljava/lang/reflect/Method;
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
            ">;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "outputArgumentAccessors":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/ActionArgument<Lorg/teleal/cling/model/meta/LocalService;>;Lorg/teleal/cling/model/state/StateVariableAccessor;>;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/action/AbstractActionExecutor;-><init>(Ljava/util/Map;)V

    .line 49
    iput-object p2, p0, Lorg/teleal/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    .line 50
    return-void
.end method


# virtual methods
.method protected createInputArgumentValues(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/lang/reflect/Method;)[Ljava/lang/Object;
    .locals 18
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/action/ActionInvocation",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "actionInvocation":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<Lorg/teleal/cling/model/meta/LocalService;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v12

    invoke-virtual {v12}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v10

    check-cast v10, Lorg/teleal/cling/model/meta/LocalService;

    .line 126
    .local v10, "service":Lorg/teleal/cling/model/meta/LocalService;
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v12

    invoke-virtual {v12}, Lorg/teleal/cling/model/meta/Action;->getInputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v12

    array-length v12, v12

    new-array v11, v12, [Ljava/lang/Object;

    .line 127
    .local v11, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 128
    .local v4, "i":I
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v12

    invoke-virtual {v12}, Lorg/teleal/cling/model/meta/Action;->getInputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v13

    array-length v14, v13

    const/4 v12, 0x0

    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_0
    if-lt v12, v14, :cond_0

    .line 167
    return-object v11

    .line 128
    :cond_0
    aget-object v1, v13, v12

    .line 130
    .local v1, "argument":Lorg/teleal/cling/model/meta/ActionArgument;, "Lorg/teleal/cling/model/meta/ActionArgument<Lorg/teleal/cling/model/meta/LocalService;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    aget-object v8, v15, v5

    .line 132
    .local v8, "methodParameterType":Ljava/lang/Class;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;->getInput(Lorg/teleal/cling/model/meta/ActionArgument;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v7

    .line 135
    .local v7, "inputValue":Lorg/teleal/cling/model/action/ActionArgumentValue;, "Lorg/teleal/cling/model/action/ActionArgumentValue<Lorg/teleal/cling/model/meta/LocalService;>;"
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/teleal/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2

    .line 136
    :cond_1
    new-instance v12, Lorg/teleal/cling/model/action/ActionException;

    .line 137
    sget-object v13, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    .line 138
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Primitive action method argument \'"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' requires input value, can\'t be null or empty string"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 136
    invoke-direct {v12, v13, v14}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v12

    .line 142
    :cond_2
    if-nez v7, :cond_3

    .line 143
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/4 v15, 0x0

    aput-object v15, v11, v5

    .line 128
    :goto_1
    add-int/lit8 v12, v12, 0x1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {v7}, Lorg/teleal/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "inputCallValueString":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_4

    invoke-virtual {v10, v8}, Lorg/teleal/cling/model/meta/LocalService;->isStringConvertibleType(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v15

    if-nez v15, :cond_4

    .line 152
    const/4 v15, 0x1

    :try_start_0
    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v8, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 153
    .local v2, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/String;>;"
    sget-object v15, Lorg/teleal/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Creating new input argument value instance with String.class constructor of type: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 154
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-virtual {v2, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 155
    .local v9, "o":Ljava/lang/Object;
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :try_start_1
    aput-object v9, v11, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v3

    .line 157
    .end local v2    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/String;>;"
    .end local v9    # "o":Ljava/lang/Object;
    .local v3, "ex":Ljava/lang/Exception;
    :goto_2
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v12}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 158
    new-instance v12, Lorg/teleal/cling/model/action/ActionException;

    .line 159
    sget-object v13, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Can\'t convert input argment string to desired type of \'"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/ActionArgument;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\': "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 158
    invoke-direct {v12, v13, v14}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v12

    .line 164
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v7}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v11, v5

    goto :goto_1

    .line 156
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :catch_1
    move-exception v3

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2
.end method

.method protected execute(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/lang/Object;)V
    .locals 12
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
    .line 60
    .local p1, "actionInvocation":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<Lorg/teleal/cling/model/meta/LocalService;>;"
    iget-object v8, p0, Lorg/teleal/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, v8}, Lorg/teleal/cling/model/action/MethodActionExecutor;->createInputArgumentValues(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/lang/reflect/Method;)[Ljava/lang/Object;

    move-result-object v1

    .line 63
    .local v1, "inputArgumentValues":[Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v8

    invoke-virtual {v8}, Lorg/teleal/cling/model/meta/Action;->hasOutputArguments()Z

    move-result v8

    if-nez v8, :cond_1

    .line 64
    sget-object v8, Lorg/teleal/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Calling local service method with no output arguments: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/teleal/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 65
    iget-object v8, p0, Lorg/teleal/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-static {v8, p2, v1}, Lorg/teleal/common/util/Reflections;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v8, p0, Lorg/teleal/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 71
    .local v3, "isVoid":Z
    sget-object v8, Lorg/teleal/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Calling local service method with output arguments: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/teleal/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 73
    const/4 v2, 0x1

    .line 74
    .local v2, "isArrayResultProcessed":Z
    if-eqz v3, :cond_2

    .line 76
    sget-object v8, Lorg/teleal/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    const-string v9, "Action method is void, calling declared accessors(s) on service instance to retrieve ouput argument(s)"

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 77
    iget-object v8, p0, Lorg/teleal/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-static {v8, p2, v1}, Lorg/teleal/common/util/Reflections;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v8

    invoke-virtual {p0, v8, p2}, Lorg/teleal/cling/model/action/MethodActionExecutor;->readOutputArgumentValues(Lorg/teleal/cling/model/meta/Action;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 93
    .local v5, "result":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v8

    invoke-virtual {v8}, Lorg/teleal/cling/model/meta/Action;->getOutputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v4

    .line 95
    .local v4, "outputArgs":[Lorg/teleal/cling/model/meta/ActionArgument;
    if-eqz v2, :cond_4

    instance-of v8, v5, [Ljava/lang/Object;

    if-eqz v8, :cond_4

    move-object v6, v5

    .line 96
    check-cast v6, [Ljava/lang/Object;

    .line 97
    .local v6, "results":[Ljava/lang/Object;
    sget-object v8, Lorg/teleal/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Accessors returned Object[], setting output argument values: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v8, v4

    if-ge v0, v8, :cond_0

    .line 99
    aget-object v8, v4, v0

    aget-object v9, v6, v0

    invoke-virtual {p0, p1, v8, v9}, Lorg/teleal/cling/model/action/MethodActionExecutor;->setOutputArgumentValue(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/Object;)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    .end local v0    # "i":I
    .end local v4    # "outputArgs":[Lorg/teleal/cling/model/meta/ActionArgument;
    .end local v5    # "result":Ljava/lang/Object;
    .end local v6    # "results":[Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/action/MethodActionExecutor;->isUseOutputArgumentAccessors(Lorg/teleal/cling/model/action/ActionInvocation;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 82
    sget-object v8, Lorg/teleal/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    const-string v9, "Action method is not void, calling declared accessor(s) on returned instance to retrieve ouput argument(s)"

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 83
    iget-object v8, p0, Lorg/teleal/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-static {v8, p2, v1}, Lorg/teleal/common/util/Reflections;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 84
    .local v7, "returnedInstance":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v8

    invoke-virtual {p0, v8, v7}, Lorg/teleal/cling/model/action/MethodActionExecutor;->readOutputArgumentValues(Lorg/teleal/cling/model/meta/Action;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 86
    .restart local v5    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 88
    .end local v5    # "result":Ljava/lang/Object;
    .end local v7    # "returnedInstance":Ljava/lang/Object;
    :cond_3
    sget-object v8, Lorg/teleal/cling/model/action/MethodActionExecutor;->log:Ljava/util/logging/Logger;

    const-string v9, "Action method is not void, using returned value as (single) output argument"

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 89
    iget-object v8, p0, Lorg/teleal/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    invoke-static {v8, p2, v1}, Lorg/teleal/common/util/Reflections;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 90
    .restart local v5    # "result":Ljava/lang/Object;
    const/4 v2, 0x0

    goto :goto_1

    .line 101
    .restart local v4    # "outputArgs":[Lorg/teleal/cling/model/meta/ActionArgument;
    :cond_4
    array-length v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 102
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {p0, p1, v8, v5}, Lorg/teleal/cling/model/action/MethodActionExecutor;->setOutputArgumentValue(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/meta/ActionArgument;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 104
    :cond_5
    new-instance v8, Lorg/teleal/cling/model/action/ActionException;

    .line 105
    sget-object v9, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    .line 106
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Method return does not match required number of output arguments: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 104
    invoke-direct {v8, v9, v10}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v8
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/teleal/cling/model/action/MethodActionExecutor;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method protected isUseOutputArgumentAccessors(Lorg/teleal/cling/model/action/ActionInvocation;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/action/ActionInvocation",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "actionInvocation":Lorg/teleal/cling/model/action/ActionInvocation;, "Lorg/teleal/cling/model/action/ActionInvocation<Lorg/teleal/cling/model/meta/LocalService;>;"
    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Action;->getOutputArguments()[Lorg/teleal/cling/model/meta/ActionArgument;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 119
    :goto_1
    return v1

    .line 113
    :cond_0
    aget-object v0, v3, v2

    .line 115
    .local v0, "argument":Lorg/teleal/cling/model/meta/ActionArgument;
    invoke-virtual {p0}, Lorg/teleal/cling/model/action/MethodActionExecutor;->getOutputArgumentAccessors()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 116
    const/4 v1, 0x1

    goto :goto_1

    .line 113
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
