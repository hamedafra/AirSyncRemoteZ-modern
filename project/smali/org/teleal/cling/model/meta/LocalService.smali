.class public Lorg/teleal/cling/model/meta/LocalService;
.super Lorg/teleal/cling/model/meta/Service;
.source "LocalService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/teleal/cling/model/meta/Service",
        "<",
        "Lorg/teleal/cling/model/meta/LocalDevice;",
        "Lorg/teleal/cling/model/meta/LocalService;",
        ">;"
    }
.end annotation


# instance fields
.field protected final actionExecutors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/Action;",
            "Lorg/teleal/cling/model/action/ActionExecutor;",
            ">;"
        }
    .end annotation
.end field

.field protected manager:Lorg/teleal/cling/model/ServiceManager;

.field protected final stateVariableAccessors:Ljava/util/Map;
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

.field protected final stringConvertibleTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected final supportsQueryStateVariables:Z


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Z)V
    .locals 3
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .param p2, "serviceId"    # Lorg/teleal/cling/model/types/ServiceId;
    .param p6, "supportsQueryStateVariables"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/ServiceType;",
            "Lorg/teleal/cling/model/types/ServiceId;",
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/Action;",
            "Lorg/teleal/cling/model/action/ActionExecutor;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/StateVariable;",
            "Lorg/teleal/cling/model/state/StateVariableAccessor;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 67
    .line 68
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    .local p3, "actionExecutors":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/action/ActionExecutor;>;"
    .local p4, "stateVariableAccessors":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/StateVariable;Lorg/teleal/cling/model/state/StateVariableAccessor;>;"
    .local p5, "stringConvertibleTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/model/meta/Action;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/meta/Action;

    .line 69
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lorg/teleal/cling/model/meta/StateVariable;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/model/meta/StateVariable;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/teleal/cling/model/meta/Service;-><init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)V

    .line 72
    iput-boolean p6, p0, Lorg/teleal/cling/model/meta/LocalService;->supportsQueryStateVariables:Z

    .line 73
    iput-object p5, p0, Lorg/teleal/cling/model/meta/LocalService;->stringConvertibleTypes:Ljava/util/Set;

    .line 74
    iput-object p4, p0, Lorg/teleal/cling/model/meta/LocalService;->stateVariableAccessors:Ljava/util/Map;

    .line 75
    iput-object p3, p0, Lorg/teleal/cling/model/meta/LocalService;->actionExecutors:Ljava/util/Map;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)V
    .locals 1
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .param p2, "serviceId"    # Lorg/teleal/cling/model/types/ServiceId;
    .param p3, "actions"    # [Lorg/teleal/cling/model/meta/Action;
    .param p4, "stateVariables"    # [Lorg/teleal/cling/model/meta/StateVariable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/teleal/cling/model/meta/Service;-><init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalService;->manager:Lorg/teleal/cling/model/ServiceManager;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalService;->actionExecutors:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalService;->stateVariableAccessors:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalService;->stringConvertibleTypes:Ljava/util/Set;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/teleal/cling/model/meta/LocalService;->supportsQueryStateVariables:Z

    .line 59
    return-void
.end method


# virtual methods
.method public getAccessor(Ljava/lang/String;)Lorg/teleal/cling/model/state/StateVariableAccessor;
    .locals 2
    .param p1, "stateVariableName"    # Ljava/lang/String;

    .prologue
    .line 110
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/meta/LocalService;->getStateVariable(Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v0

    .local v0, "sv":Lorg/teleal/cling/model/meta/StateVariable;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/meta/LocalService;->getAccessor(Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/state/StateVariableAccessor;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccessor(Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/state/StateVariableAccessor;
    .locals 1
    .param p1, "stateVariable"    # Lorg/teleal/cling/model/meta/StateVariable;

    .prologue
    .line 114
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/LocalService;->stateVariableAccessors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/state/StateVariableAccessor;

    return-object v0
.end method

.method public getExecutor(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionExecutor;
    .locals 2
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 119
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/meta/LocalService;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v0

    .local v0, "action":Lorg/teleal/cling/model/meta/Action;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/meta/LocalService;->getExecutor(Lorg/teleal/cling/model/meta/Action;)Lorg/teleal/cling/model/action/ActionExecutor;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExecutor(Lorg/teleal/cling/model/meta/Action;)Lorg/teleal/cling/model/action/ActionExecutor;
    .locals 1
    .param p1, "action"    # Lorg/teleal/cling/model/meta/Action;

    .prologue
    .line 123
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/LocalService;->actionExecutors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionExecutor;

    return-object v0
.end method

.method public declared-synchronized getManager()Lorg/teleal/cling/model/ServiceManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/model/ServiceManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/model/meta/LocalService;->manager:Lorg/teleal/cling/model/ServiceManager;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unmanaged service, no implementation instance available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/teleal/cling/model/meta/LocalService;->manager:Lorg/teleal/cling/model/ServiceManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getQueryStateVariableAction()Lorg/teleal/cling/model/meta/Action;
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    const-string v0, "QueryStateVariable"

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/meta/LocalService;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v0

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
    .line 97
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/LocalService;->stringConvertibleTypes:Ljava/util/Set;

    return-object v0
.end method

.method public isStringConvertibleType(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 105
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalService;->getStringConvertibleTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/teleal/cling/model/ModelUtil;->isStringConvertibleType(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isStringConvertibleType(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 101
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/meta/LocalService;->isStringConvertibleType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportsQueryStateVariables()Z
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    iget-boolean v0, p0, Lorg/teleal/cling/model/meta/LocalService;->supportsQueryStateVariables:Z

    return v0
.end method

.method public declared-synchronized setManager(Lorg/teleal/cling/model/ServiceManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/ServiceManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    .local p1, "manager":Lorg/teleal/cling/model/ServiceManager;, "Lorg/teleal/cling/model/ServiceManager<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/model/meta/LocalService;->manager:Lorg/teleal/cling/model/ServiceManager;

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Manager is final"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 82
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/teleal/cling/model/meta/LocalService;->manager:Lorg/teleal/cling/model/ServiceManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    .local p0, "this":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/teleal/cling/model/meta/Service;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", Manager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/model/meta/LocalService;->manager:Lorg/teleal/cling/model/ServiceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
