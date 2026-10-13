.class public Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;
.super Ljava/lang/Object;
.source "AnnotationActionBinder.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected annotation:Lorg/teleal/cling/binding/annotations/UpnpAction;

.field protected method:Ljava/lang/reflect/Method;

.field protected stateVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/StateVariable;",
            "Lorg/teleal/cling/model/state/StateVariableAccessor;",
            ">;"
        }
    .end annotation
.end field

.field protected stringConvertibleTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/util/Map;Ljava/util/Set;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/StateVariable;",
            "Lorg/teleal/cling/model/state/StateVariableAccessor;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "stateVariables":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/StateVariable;Lorg/teleal/cling/model/state/StateVariableAccessor;>;"
    .local p3, "stringConvertibleTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-class v0, Lorg/teleal/cling/binding/annotations/UpnpAction;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/binding/annotations/UpnpAction;

    iput-object v0, p0, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->annotation:Lorg/teleal/cling/binding/annotations/UpnpAction;

    .line 57
    iput-object p2, p0, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->stateVariables:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->method:Ljava/lang/reflect/Method;

    .line 59
    iput-object p3, p0, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->stringConvertibleTypes:Ljava/util/Set;

    .line 60
    return-void
.end method


# virtual methods
.method public appendAction(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/Action;",
            "Lorg/teleal/cling/model/action/ActionExecutor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "actions":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/action/ActionExecutor;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpAction;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/binding/annotations/UpnpAction;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpAction;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/binding/annotations/UpnpAction;->name()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "name":Ljava/lang/String;
    :goto_0
    sget-object v6, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Creating action and executor: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->createInputArguments()Ljava/util/List;

    move-result-object v3

    .line 90
    .local v3, "inputArguments":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/ActionArgument;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->createOutputArguments()Ljava/util/Map;

    move-result-object v5

    .line 92
    .local v5, "outputArguments":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/ActionArgument<Lorg/teleal/cling/model/meta/LocalService;>;Lorg/teleal/cling/model/state/StateVariableAccessor;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lorg/teleal/cling/model/meta/ActionArgument;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/model/meta/ActionArgument;

    .line 96
    .local v1, "actionArguments":[Lorg/teleal/cling/model/meta/ActionArgument;
    new-instance v0, Lorg/teleal/cling/model/meta/Action;

    invoke-direct {v0, v4, v1}, Lorg/teleal/cling/model/meta/Action;-><init>(Ljava/lang/String;[Lorg/teleal/cling/model/meta/ActionArgument;)V

    .line 97
    .local v0, "action":Lorg/teleal/cling/model/meta/Action;
    invoke-virtual {p0, v5}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->createExecutor(Ljava/util/Map;)Lorg/teleal/cling/model/action/ActionExecutor;

    move-result-object v2

    .line 99
    .local v2, "executor":Lorg/teleal/cling/model/action/ActionExecutor;
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void

    .line 84
    .end local v0    # "action":Lorg/teleal/cling/model/meta/Action;
    .end local v1    # "actionArguments":[Lorg/teleal/cling/model/meta/ActionArgument;
    .end local v2    # "executor":Lorg/teleal/cling/model/action/ActionExecutor;
    .end local v3    # "inputArguments":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/ActionArgument;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "outputArguments":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/ActionArgument<Lorg/teleal/cling/model/meta/LocalService;>;Lorg/teleal/cling/model/state/StateVariableAccessor;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method protected createExecutor(Ljava/util/Map;)Lorg/teleal/cling/model/action/ActionExecutor;
    .locals 2
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
            ">;)",
            "Lorg/teleal/cling/model/action/ActionExecutor;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "outputArguments":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/ActionArgument<Lorg/teleal/cling/model/meta/LocalService;>;Lorg/teleal/cling/model/state/StateVariableAccessor;>;"
    new-instance v0, Lorg/teleal/cling/model/action/MethodActionExecutor;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/teleal/cling/model/action/MethodActionExecutor;-><init>(Ljava/util/Map;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method protected createInputArguments()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/meta/ActionArgument;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/ActionArgument;>;"
    const/4 v0, 0x0

    .line 113
    .local v0, "annotatedParams":I
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .line 114
    .local v8, "params":[[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, v8

    if-lt v2, v10, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    array-length v10, v10

    if-ge v0, v10, :cond_4

    .line 153
    new-instance v10, Lorg/teleal/cling/binding/LocalServiceBindingException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Method has parameters that are not input arguments: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 115
    :cond_0
    aget-object v6, v8, v2

    .line 116
    .local v6, "param":[Ljava/lang/annotation/Annotation;
    array-length v11, v6

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v11, :cond_1

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    aget-object v7, v6, v10

    .line 117
    .local v7, "paramAnnotation":Ljava/lang/annotation/Annotation;
    instance-of v12, v7, Lorg/teleal/cling/binding/annotations/UpnpInputArgument;

    if-eqz v12, :cond_3

    move-object v4, v7

    .line 118
    check-cast v4, Lorg/teleal/cling/binding/annotations/UpnpInputArgument;

    .line 119
    .local v4, "inputArgumentAnnotation":Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
    add-int/lit8 v0, v0, 0x1

    .line 122
    invoke-interface {v4}, Lorg/teleal/cling/binding/annotations/UpnpInputArgument;->name()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "argumentName":Ljava/lang/String;
    invoke-interface {v4}, Lorg/teleal/cling/binding/annotations/UpnpInputArgument;->stateVariable()Ljava/lang/String;

    move-result-object v12

    .line 128
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    .line 125
    invoke-virtual {p0, v12, v1, v13}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->findRelatedStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v9

    .line 131
    .local v9, "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    if-nez v9, :cond_2

    .line 132
    new-instance v10, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 133
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Could not detected related state variable of argument: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 132
    invoke-direct {v10, v11}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 137
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    aget-object v12, v12, v2

    invoke-virtual {p0, v9, v12}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->validateType(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/Class;)V

    .line 139
    new-instance v3, Lorg/teleal/cling/model/meta/ActionArgument;

    .line 141
    invoke-interface {v4}, Lorg/teleal/cling/binding/annotations/UpnpInputArgument;->aliases()[Ljava/lang/String;

    move-result-object v12

    .line 142
    invoke-virtual {v9}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v13

    .line 143
    sget-object v14, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->IN:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    .line 139
    invoke-direct {v3, v1, v12, v13, v14}, Lorg/teleal/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;)V

    .line 146
    .local v3, "inputArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v1    # "argumentName":Ljava/lang/String;
    .end local v3    # "inputArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    .end local v4    # "inputArgumentAnnotation":Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
    .end local v9    # "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 156
    .end local v6    # "param":[Ljava/lang/annotation/Annotation;
    .end local v7    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_4
    return-object v5
.end method

.method protected createOutputArguments()Ljava/util/Map;
    .locals 14
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 163
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/ActionArgument<Lorg/teleal/cling/model/meta/LocalService;>;Lorg/teleal/cling/model/state/StateVariableAccessor;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    const-class v9, Lorg/teleal/cling/binding/annotations/UpnpAction;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/binding/annotations/UpnpAction;

    .line 164
    .local v1, "actionAnnotation":Lorg/teleal/cling/binding/annotations/UpnpAction;
    invoke-interface {v1}, Lorg/teleal/cling/binding/annotations/UpnpAction;->out()[Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_1

    .line 207
    :cond_0
    return-object v4

    .line 166
    :cond_1
    invoke-interface {v1}, Lorg/teleal/cling/binding/annotations/UpnpAction;->out()[Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    const/4 v3, 0x1

    .line 168
    .local v3, "hasMultipleOutputArguments":Z
    :goto_0
    invoke-interface {v1}, Lorg/teleal/cling/binding/annotations/UpnpAction;->out()[Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;

    move-result-object v10

    array-length v11, v10

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v11, :cond_0

    aget-object v6, v10, v9

    .line 170
    .local v6, "outputArgumentAnnotation":Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
    invoke-interface {v6}, Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;->name()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "argumentName":Ljava/lang/String;
    invoke-interface {v6}, Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;->stateVariable()Ljava/lang/String;

    move-result-object v8

    .line 175
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    .line 172
    invoke-virtual {p0, v8, v2, v12}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->findRelatedStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v7

    .line 179
    .local v7, "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    if-nez v7, :cond_2

    invoke-interface {v6}, Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;->getterName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 180
    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-interface {v6}, Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;->getterName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v8, v12, v13}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->findRelatedStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v7

    .line 183
    :cond_2
    if-nez v7, :cond_4

    .line 184
    new-instance v8, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 185
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Related state variable not found for output argument: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 184
    invoke-direct {v8, v9}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 166
    .end local v2    # "argumentName":Ljava/lang/String;
    .end local v3    # "hasMultipleOutputArguments":Z
    .end local v6    # "outputArgumentAnnotation":Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
    .end local v7    # "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 191
    .restart local v2    # "argumentName":Ljava/lang/String;
    .restart local v3    # "hasMultipleOutputArguments":Z
    .restart local v6    # "outputArgumentAnnotation":Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
    .restart local v7    # "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    :cond_4
    invoke-interface {v6}, Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;->getterName()Ljava/lang/String;

    move-result-object v8

    .line 189
    invoke-virtual {p0, v7, v8, v3}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->findOutputArgumentAccessor(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/String;Z)Lorg/teleal/cling/model/state/StateVariableAccessor;

    move-result-object v0

    .line 195
    .local v0, "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    sget-object v8, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Found related state variable for output argument \'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\': "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 197
    new-instance v5, Lorg/teleal/cling/model/meta/ActionArgument;

    .line 199
    invoke-virtual {v7}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v12

    .line 200
    sget-object v13, Lorg/teleal/cling/model/meta/ActionArgument$Direction;->OUT:Lorg/teleal/cling/model/meta/ActionArgument$Direction;

    .line 201
    if-eqz v3, :cond_5

    const/4 v8, 0x0

    .line 197
    :goto_2
    invoke-direct {v5, v2, v12, v13, v8}, Lorg/teleal/cling/model/meta/ActionArgument;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/ActionArgument$Direction;Z)V

    .line 204
    .local v5, "outputArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto/16 :goto_1

    .line 201
    .end local v5    # "outputArgument":Lorg/teleal/cling/model/meta/ActionArgument;
    :cond_5
    const/4 v8, 0x1

    goto :goto_2
.end method

.method protected findOutputArgumentAccessor(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/String;Z)Lorg/teleal/cling/model/state/StateVariableAccessor;
    .locals 5
    .param p1, "stateVariable"    # Lorg/teleal/cling/model/meta/StateVariable;
    .param p2, "getterName"    # Ljava/lang/String;
    .param p3, "multipleArguments"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 215
    .local v1, "isVoid":Z
    if-eqz v1, :cond_2

    .line 217
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 218
    sget-object v2, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Action method is void, will use getter method named: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/teleal/common/util/Reflections;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 222
    .local v0, "getter":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 223
    new-instance v2, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Declared getter method \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not found on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-direct {v2, v3}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->validateType(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/Class;)V

    .line 229
    new-instance v2, Lorg/teleal/cling/model/state/GetterStateVariableAccessor;

    invoke-direct {v2, v0}, Lorg/teleal/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    .line 256
    .end local v0    # "getter":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 232
    :cond_1
    sget-object v2, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Action method is void, trying to find existing accessor of related: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getStateVariables()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/state/StateVariableAccessor;

    goto :goto_0

    .line 237
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 238
    sget-object v2, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Action method is not void, will use getter method on returned instance: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/teleal/common/util/Reflections;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 242
    .restart local v0    # "getter":Ljava/lang/reflect/Method;
    if-nez v0, :cond_3

    .line 243
    new-instance v2, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Declared getter method \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not found on return type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-direct {v2, v3}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->validateType(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/Class;)V

    .line 249
    new-instance v2, Lorg/teleal/cling/model/state/GetterStateVariableAccessor;

    invoke-direct {v2, v0}, Lorg/teleal/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 251
    .end local v0    # "getter":Ljava/lang/reflect/Method;
    :cond_4
    if-nez p3, :cond_5

    .line 252
    sget-object v2, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Action method is not void, will use the returned instance: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->validateType(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/Class;)V

    .line 256
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method protected findRelatedStateVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;
    .locals 6
    .param p1, "declaredName"    # Ljava/lang/String;
    .param p2, "argumentName"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v2, 0x0

    .line 264
    .local v2, "relatedStateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 265
    invoke-static {p1}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "actualName":Ljava/lang/String;
    sget-object v3, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Finding related state variable with declared name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, v0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getStateVariable(Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v2

    .line 270
    .end local v0    # "actualName":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 271
    sget-object v3, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Finding related state variable with argument name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p2}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getStateVariable(Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v2

    .line 275
    :cond_1
    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "A_ARG_TYPE_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .restart local v0    # "actualName":Ljava/lang/String;
    sget-object v3, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Finding related state variable with prefixed argument name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, v0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getStateVariable(Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v2

    .line 282
    .end local v0    # "actualName":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 284
    invoke-static {p3}, Lorg/teleal/common/util/Reflections;->getMethodPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "methodPropertyName":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 286
    sget-object v3, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Finding related state varible with method property name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 289
    invoke-static {v1}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-virtual {p0, v3}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getStateVariable(Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v2

    .line 294
    .end local v1    # "methodPropertyName":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public getAnnotation()Lorg/teleal/cling/binding/annotations/UpnpAction;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->annotation:Lorg/teleal/cling/binding/annotations/UpnpAction;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method protected getStateVariable(Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getStateVariables()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 334
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 329
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/StateVariable;

    .line 330
    .local v0, "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getStateVariables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/StateVariable;",
            "Lorg/teleal/cling/model/state/StateVariableAccessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->stateVariables:Ljava/util/Map;

    return-object v0
.end method

.method public getStringConvertibleTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->stringConvertibleTypes:Ljava/util/Set;

    return-object v0
.end method

.method protected validateType(Lorg/teleal/cling/model/meta/StateVariable;Ljava/lang/Class;)V
    .locals 4
    .param p1, "stateVariable"    # Lorg/teleal/cling/model/meta/StateVariable;
    .param p2, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->getStringConvertibleTypes()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/teleal/cling/model/ModelUtil;->isStringConvertibleType(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    sget-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->STRING:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 307
    .local v0, "expectedDefaultMapping":Lorg/teleal/cling/model/types/Datatype$Default;, "Lorg/teleal/cling/model/types/Datatype$Default;"
    :goto_0
    sget-object v1, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expecting \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' to match default mapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 309
    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v1

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/Datatype$Default;->getJavaType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/teleal/cling/model/types/Datatype;->isHandlingJavaType(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    new-instance v1, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "State variable \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' datatype can\'t handle action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 315
    const-string v3, "argument\'s Java type (change one): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/Datatype$Default;->getJavaType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-direct {v1, v2}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    .end local v0    # "expectedDefaultMapping":Lorg/teleal/cling/model/types/Datatype$Default;, "Lorg/teleal/cling/model/types/Datatype$Default;"
    :cond_0
    invoke-static {p2}, Lorg/teleal/cling/model/types/Datatype$Default;->getByJavaType(Ljava/lang/Class;)Lorg/teleal/cling/model/types/Datatype$Default;

    move-result-object v0

    goto :goto_0

    .line 318
    .restart local v0    # "expectedDefaultMapping":Lorg/teleal/cling/model/types/Datatype$Default;, "Lorg/teleal/cling/model/types/Datatype$Default;"
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/model/types/Datatype;->getBuiltin()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 319
    new-instance v1, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "State variable \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' should be custom datatype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 321
    const-string v3, "(action argument type is unknown Java type): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 320
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-direct {v1, v2}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_2
    sget-object v1, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->log:Ljava/util/logging/Logger;

    const-string v2, "State variable matches required argument datatype (or can\'t be validated because it is custom)"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 326
    return-void
.end method
