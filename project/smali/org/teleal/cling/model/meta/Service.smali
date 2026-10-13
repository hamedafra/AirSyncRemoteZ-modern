.class public abstract Lorg/teleal/cling/model/meta/Service;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/teleal/cling/model/meta/Device;",
        "S:",
        "Lorg/teleal/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final actions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/meta/Action;",
            ">;"
        }
    .end annotation
.end field

.field private device:Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final serviceId:Lorg/teleal/cling/model/types/ServiceId;

.field private final serviceType:Lorg/teleal/cling/model/types/ServiceType;

.field private final stateVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/meta/StateVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;)V
    .locals 1
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .param p2, "serviceId"    # Lorg/teleal/cling/model/types/ServiceId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/teleal/cling/model/meta/Service;-><init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)V
    .locals 7
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .param p2, "serviceId"    # Lorg/teleal/cling/model/types/ServiceId;
    .param p3, "actions"    # [Lorg/teleal/cling/model/meta/Action;
    .param p4, "stateVariables"    # [Lorg/teleal/cling/model/meta/StateVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/ServiceType;",
            "Lorg/teleal/cling/model/types/ServiceId;",
            "[",
            "Lorg/teleal/cling/model/meta/Action",
            "<TS;>;[",
            "Lorg/teleal/cling/model/meta/StateVariable",
            "<TS;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/teleal/cling/model/meta/Service;->actions:Ljava/util/Map;

    .line 44
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/teleal/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lorg/teleal/cling/model/meta/Service;->serviceType:Lorg/teleal/cling/model/types/ServiceType;

    .line 57
    iput-object p2, p0, Lorg/teleal/cling/model/meta/Service;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    .line 59
    if-eqz p3, :cond_0

    .line 60
    array-length v4, p3

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_2

    .line 66
    :cond_0
    if-eqz p4, :cond_1

    .line 67
    array-length v3, p4

    :goto_1
    if-lt v2, v3, :cond_3

    .line 73
    :cond_1
    return-void

    .line 60
    :cond_2
    aget-object v0, p3, v3

    .line 61
    .local v0, "action":Lorg/teleal/cling/model/meta/Action;
    iget-object v5, p0, Lorg/teleal/cling/model/meta/Service;->actions:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v0, p0}, Lorg/teleal/cling/model/meta/Action;->setService(Lorg/teleal/cling/model/meta/Service;)V

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "action":Lorg/teleal/cling/model/meta/Action;
    :cond_3
    aget-object v1, p4, v2

    .line 68
    .local v1, "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    iget-object v4, p0, Lorg/teleal/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {v1, p0}, Lorg/teleal/cling/model/meta/StateVariable;->setService(Lorg/teleal/cling/model/meta/Service;)V

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/teleal/cling/model/meta/Action",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Service;->actions:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Service;->actions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/Action;

    goto :goto_0
.end method

.method public getActions()[Lorg/teleal/cling/model/meta/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/teleal/cling/model/meta/Action",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Service;->actions:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Service;->actions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/model/meta/Service;->actions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/model/meta/Action;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/meta/Action;

    goto :goto_0
.end method

.method public getDatatype(Lorg/teleal/cling/model/meta/ActionArgument;)Lorg/teleal/cling/model/types/Datatype;
    .locals 1
    .param p1, "argument"    # Lorg/teleal/cling/model/meta/ActionArgument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/ActionArgument;",
            ")",
            "Lorg/teleal/cling/model/types/Datatype",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/meta/Service;->getRelatedStateVariable(Lorg/teleal/cling/model/meta/ActionArgument;)Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/StateVariable;->getTypeDetails()Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Lorg/teleal/cling/model/meta/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Service;->device:Lorg/teleal/cling/model/meta/Device;

    return-object v0
.end method

.method public abstract getQueryStateVariableAction()Lorg/teleal/cling/model/meta/Action;
.end method

.method public getReference()Lorg/teleal/cling/model/ServiceReference;
    .locals 3

    .prologue
    .line 140
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    new-instance v0, Lorg/teleal/cling/model/ServiceReference;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->getServiceId()Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/ServiceReference;-><init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/types/ServiceId;)V

    return-object v0
.end method

.method public getRelatedStateVariable(Lorg/teleal/cling/model/meta/ActionArgument;)Lorg/teleal/cling/model/meta/StateVariable;
    .locals 1
    .param p1, "argument"    # Lorg/teleal/cling/model/meta/ActionArgument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/ActionArgument;",
            ")",
            "Lorg/teleal/cling/model/meta/StateVariable",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/ActionArgument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/meta/Service;->getStateVariable(Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()Lorg/teleal/cling/model/types/ServiceId;
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Service;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    return-object v0
.end method

.method public getServiceType()Lorg/teleal/cling/model/types/ServiceType;
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Service;->serviceType:Lorg/teleal/cling/model/types/ServiceType;

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/teleal/cling/model/meta/StateVariable",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    const-string v0, "VirtualQueryActionInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lorg/teleal/cling/model/meta/StateVariable;

    .line 118
    const-string v1, "VirtualQueryActionInput"

    .line 119
    new-instance v2, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    sget-object v3, Lorg/teleal/cling/model/types/Datatype$Builtin;->STRING:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/teleal/cling/model/types/Datatype;)V

    .line 117
    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;)V

    .line 128
    :goto_0
    return-object v0

    .line 122
    :cond_0
    const-string v0, "VirtualQueryActionOutput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Lorg/teleal/cling/model/meta/StateVariable;

    .line 124
    const-string v1, "VirtualQueryActionOutput"

    .line 125
    new-instance v2, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;

    sget-object v3, Lorg/teleal/cling/model/types/Datatype$Builtin;->STRING:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/teleal/cling/model/types/Datatype;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/teleal/cling/model/types/Datatype;)V

    .line 123
    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/StateVariableTypeDetails;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/StateVariable;

    goto :goto_0
.end method

.method public getStateVariables()[Lorg/teleal/cling/model/meta/StateVariable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/teleal/cling/model/meta/StateVariable",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/model/meta/Service;->stateVariables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lorg/teleal/cling/model/meta/StateVariable;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/meta/StateVariable;

    goto :goto_0
.end method

.method public hasActions()Z
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->getActions()[Lorg/teleal/cling/model/meta/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->getActions()[Lorg/teleal/cling/model/meta/Action;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStateVariables()Z
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->getStateVariables()[Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->getStateVariables()[Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setDevice(Lorg/teleal/cling/model/meta/Device;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    .local p1, "device":Lorg/teleal/cling/model/meta/Device;, "TD;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Service;->device:Lorg/teleal/cling/model/meta/Device;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Final value has been set already, model is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iput-object p1, p0, Lorg/teleal/cling/model/meta/Service;->device:Lorg/teleal/cling/model/meta/Device;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ServiceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->getServiceId()Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
    .local p0, "this":Lorg/teleal/cling/model/meta/Service;, "Lorg/teleal/cling/model/meta/Service<TD;TS;>;"
    const/4 v3, 0x0

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->getServiceType()Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v4

    if-nez v4, :cond_0

    .line 147
    new-instance v4, Lorg/teleal/cling/model/ValidationError;

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 149
    const-string v6, "serviceType"

    .line 150
    const-string v7, "Service type/info is required"

    invoke-direct {v4, v5, v6, v7}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->getServiceId()Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v4

    if-nez v4, :cond_1

    .line 155
    new-instance v4, Lorg/teleal/cling/model/ValidationError;

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 157
    const-string v6, "serviceId"

    .line 158
    const-string v7, "Service ID is required"

    invoke-direct {v4, v5, v6, v7}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->hasActions()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->getActions()[Lorg/teleal/cling/model/meta/Action;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_4

    .line 182
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->hasStateVariables()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Service;->getStateVariables()[Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-lt v3, v5, :cond_5

    .line 188
    :cond_3
    return-object v1

    .line 177
    :cond_4
    aget-object v0, v5, v4

    .line 178
    .local v0, "action":Lorg/teleal/cling/model/meta/Action;
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Action;->validate()Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "action":Lorg/teleal/cling/model/meta/Action;
    :cond_5
    aget-object v2, v4, v3

    .line 184
    .local v2, "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/StateVariable;->validate()Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
