.class public Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;
.super Ljava/lang/Object;
.source "AnnotationLocalServiceBinder.java"

# interfaces
.implements Lorg/teleal/cling/binding/LocalServiceBinder;


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toJavaActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "upnpName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable name must be at least 1 character long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toJavaStateVariableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "upnpName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 263
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable name must be at least 1 character long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toUpnpActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "javaName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 271
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Action name must be at least 1 character long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "javaName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 256
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable name must be at least 1 character long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public read(Ljava/lang/Class;)Lorg/teleal/cling/model/meta/LocalService;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/teleal/cling/model/meta/LocalService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "Reading and binding annotations of service implementation class: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 65
    const-class v0, Lorg/teleal/cling/binding/annotations/UpnpService;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const-class v0, Lorg/teleal/cling/binding/annotations/UpnpService;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/binding/annotations/UpnpService;

    .line 68
    .local v6, "annotation":Lorg/teleal/cling/binding/annotations/UpnpService;
    invoke-interface {v6}, Lorg/teleal/cling/binding/annotations/UpnpService;->serviceId()Lorg/teleal/cling/binding/annotations/UpnpServiceId;

    move-result-object v7

    .line 69
    .local v7, "idAnnotation":Lorg/teleal/cling/binding/annotations/UpnpServiceId;
    invoke-interface {v6}, Lorg/teleal/cling/binding/annotations/UpnpService;->serviceType()Lorg/teleal/cling/binding/annotations/UpnpServiceType;

    move-result-object v8

    .line 71
    .local v8, "typeAnnotation":Lorg/teleal/cling/binding/annotations/UpnpServiceType;
    invoke-interface {v7}, Lorg/teleal/cling/binding/annotations/UpnpServiceId;->namespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upnp-org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v2, Lorg/teleal/cling/model/types/UDAServiceId;

    invoke-interface {v7}, Lorg/teleal/cling/binding/annotations/UpnpServiceId;->value()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/teleal/cling/model/types/UDAServiceId;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, "serviceId":Lorg/teleal/cling/model/types/ServiceId;
    :goto_0
    invoke-interface {v8}, Lorg/teleal/cling/binding/annotations/UpnpServiceType;->namespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "schemas-upnp-org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    new-instance v3, Lorg/teleal/cling/model/types/UDAServiceType;

    invoke-interface {v8}, Lorg/teleal/cling/binding/annotations/UpnpServiceType;->value()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8}, Lorg/teleal/cling/binding/annotations/UpnpServiceType;->version()I

    move-result v1

    invoke-direct {v3, v0, v1}, Lorg/teleal/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;I)V

    .line 79
    .local v3, "serviceType":Lorg/teleal/cling/model/types/ServiceType;
    :goto_1
    invoke-interface {v6}, Lorg/teleal/cling/binding/annotations/UpnpService;->supportsQueryStateVariables()Z

    move-result v4

    .line 81
    .local v4, "supportsQueryStateVariables":Z
    invoke-interface {v6}, Lorg/teleal/cling/binding/annotations/UpnpService;->stringConvertibleTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->readStringConvertibleTypes([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v5

    .local v5, "stringConvertibleTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    move-object v0, p0

    move-object v1, p1

    .line 83
    invoke-virtual/range {v0 .. v5}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->read(Ljava/lang/Class;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/types/ServiceType;ZLjava/util/Set;)Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v0

    return-object v0

    .line 73
    .end local v2    # "serviceId":Lorg/teleal/cling/model/types/ServiceId;
    .end local v3    # "serviceType":Lorg/teleal/cling/model/types/ServiceType;
    .end local v4    # "supportsQueryStateVariables":Z
    .end local v5    # "stringConvertibleTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    :cond_0
    new-instance v2, Lorg/teleal/cling/model/types/ServiceId;

    invoke-interface {v7}, Lorg/teleal/cling/binding/annotations/UpnpServiceId;->namespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7}, Lorg/teleal/cling/binding/annotations/UpnpServiceId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/teleal/cling/model/types/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .restart local v2    # "serviceId":Lorg/teleal/cling/model/types/ServiceId;
    :cond_1
    new-instance v3, Lorg/teleal/cling/model/types/ServiceType;

    invoke-interface {v8}, Lorg/teleal/cling/binding/annotations/UpnpServiceType;->namespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8}, Lorg/teleal/cling/binding/annotations/UpnpServiceType;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8}, Lorg/teleal/cling/binding/annotations/UpnpServiceType;->version()I

    move-result v9

    invoke-direct {v3, v0, v1, v9}, Lorg/teleal/cling/model/types/ServiceType;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 85
    .end local v2    # "serviceId":Lorg/teleal/cling/model/types/ServiceId;
    .end local v6    # "annotation":Lorg/teleal/cling/binding/annotations/UpnpService;
    .end local v7    # "idAnnotation":Lorg/teleal/cling/binding/annotations/UpnpServiceId;
    .end local v8    # "typeAnnotation":Lorg/teleal/cling/binding/annotations/UpnpServiceType;
    :cond_2
    new-instance v0, Lorg/teleal/cling/binding/LocalServiceBindingException;

    const-string v1, "Given class is not an @UpnpService"

    invoke-direct {v0, v1}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/lang/Class;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/types/ServiceType;ZLjava/util/Set;)Lorg/teleal/cling/model/meta/LocalService;
    .locals 9
    .param p2, "id"    # Lorg/teleal/cling/model/types/ServiceId;
    .param p3, "type"    # Lorg/teleal/cling/model/types/ServiceType;
    .param p4, "supportsQueryStateVariables"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/teleal/cling/model/types/ServiceId;",
            "Lorg/teleal/cling/model/types/ServiceType;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)",
            "Lorg/teleal/cling/model/meta/LocalService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "stringConvertibleTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    invoke-virtual {p0, p1, p5}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->readStateVariables(Ljava/lang/Class;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v4

    .line 99
    .local v4, "stateVariables":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/StateVariable;Lorg/teleal/cling/model/state/StateVariableAccessor;>;"
    invoke-virtual {p0, p1, v4, p5}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->readActions(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v3

    .line 102
    .local v3, "actions":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/action/ActionExecutor;>;"
    if-eqz p4, :cond_0

    .line 103
    new-instance v0, Lorg/teleal/cling/model/meta/QueryStateVariableAction;

    invoke-direct {v0}, Lorg/teleal/cling/model/meta/QueryStateVariableAction;-><init>()V

    new-instance v1, Lorg/teleal/cling/model/action/QueryStateVariableExecutor;

    invoke-direct {v1}, Lorg/teleal/cling/model/action/QueryStateVariableExecutor;-><init>()V

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    :try_start_0
    new-instance v0, Lorg/teleal/cling/model/meta/LocalService;

    move-object v1, p3

    move-object v2, p2

    move-object v5, p5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/LocalService;-><init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Z)V
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 109
    :catch_0
    move-exception v7

    .line 110
    .local v7, "ex":Lorg/teleal/cling/model/ValidationException;
    sget-object v0, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not validate device model: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/teleal/cling/model/ValidationException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v7}, Lorg/teleal/cling/model/ValidationException;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    new-instance v0, Lorg/teleal/cling/binding/LocalServiceBindingException;

    const-string v1, "Validation of model failed, check the log"

    invoke-direct {v0, v1}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/teleal/cling/model/ValidationError;

    .line 112
    .local v8, "validationError":Lorg/teleal/cling/model/ValidationError;
    sget-object v1, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    invoke-virtual {v8}, Lorg/teleal/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public read(Ljava/lang/Class;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/types/ServiceType;Z[Ljava/lang/Class;)Lorg/teleal/cling/model/meta/LocalService;
    .locals 6
    .param p2, "id"    # Lorg/teleal/cling/model/types/ServiceId;
    .param p3, "type"    # Lorg/teleal/cling/model/types/ServiceType;
    .param p4, "supportsQueryStateVariables"    # Z
    .param p5, "stringConvertibleTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/teleal/cling/model/types/ServiceId;",
            "Lorg/teleal/cling/model/types/ServiceType;",
            "Z[",
            "Ljava/lang/Class;",
            ")",
            "Lorg/teleal/cling/model/meta/LocalService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->read(Ljava/lang/Class;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/types/ServiceType;ZLjava/util/Set;)Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v0

    return-object v0
.end method

.method protected readActions(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/StateVariable;",
            "Lorg/teleal/cling/model/state/StateVariableAccessor;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/Action;",
            "Lorg/teleal/cling/model/action/ActionExecutor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "stateVariables":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/StateVariable;Lorg/teleal/cling/model/state/StateVariableAccessor;>;"
    .local p3, "stringConvertibleTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/action/ActionExecutor;>;"
    const-class v3, Lorg/teleal/cling/binding/annotations/UpnpAction;

    invoke-static {p1, v3}, Lorg/teleal/common/util/Reflections;->getMethods(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 250
    return-object v1

    .line 244
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 246
    .local v2, "method":Ljava/lang/reflect/Method;
    new-instance v0, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;

    invoke-direct {v0, v2, p2, p3}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;-><init>(Ljava/lang/reflect/Method;Ljava/util/Map;Ljava/util/Set;)V

    .line 247
    .local v0, "actionBinder":Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;
    invoke-virtual {v0, v1}, Lorg/teleal/cling/binding/annotations/AnnotationActionBinder;->appendAction(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected readStateVariables(Ljava/lang/Class;Ljava/util/Set;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/StateVariable;",
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
    .line 147
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "stringConvertibleTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/meta/StateVariable;Lorg/teleal/cling/model/state/StateVariableAccessor;>;"
    const-class v11, Lorg/teleal/cling/binding/annotations/UpnpStateVariables;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 151
    const-class v11, Lorg/teleal/cling/binding/annotations/UpnpStateVariables;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lorg/teleal/cling/binding/annotations/UpnpStateVariables;

    .line 152
    .local v10, "variables":Lorg/teleal/cling/binding/annotations/UpnpStateVariables;
    invoke-interface {v10}, Lorg/teleal/cling/binding/annotations/UpnpStateVariables;->value()[Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-result-object v12

    array-length v13, v12

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v13, :cond_1

    .line 184
    .end local v10    # "variables":Lorg/teleal/cling/binding/annotations/UpnpStateVariables;
    :cond_0
    const-class v11, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lorg/teleal/common/util/Reflections;->getFields(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_7

    .line 203
    const-class v11, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lorg/teleal/common/util/Reflections;->getMethods(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_9

    .line 234
    return-object v5

    .line 152
    .restart local v10    # "variables":Lorg/teleal/cling/binding/annotations/UpnpStateVariables;
    :cond_1
    aget-object v9, v12, v11

    .line 154
    .local v9, "v":Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
    invoke-interface {v9}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    .line 155
    new-instance v11, Lorg/teleal/cling/binding/LocalServiceBindingException;

    const-string v12, "Class-level @UpnpStateVariable name attribute value required"

    invoke-direct {v11, v12}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 157
    :cond_2
    invoke-interface {v9}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->toJavaStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "javaPropertyName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/teleal/common/util/Reflections;->getGetterMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 160
    .local v3, "getter":Ljava/lang/reflect/Method;
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/teleal/common/util/Reflections;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 162
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .line 163
    .local v1, "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 164
    invoke-interface {v10}, Lorg/teleal/cling/binding/annotations/UpnpStateVariables;->preferFields()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 165
    new-instance v1, Lorg/teleal/cling/model/state/FieldStateVariableAccessor;

    .end local v1    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    invoke-direct {v1, v2}, Lorg/teleal/cling/model/state/FieldStateVariableAccessor;-><init>(Ljava/lang/reflect/Field;)V

    .line 176
    .restart local v1    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    :goto_3
    new-instance v14, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;

    invoke-interface {v9}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-direct {v14, v9, v15, v1, v0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;-><init>(Lorg/teleal/cling/binding/annotations/UpnpStateVariable;Ljava/lang/String;Lorg/teleal/cling/model/state/StateVariableAccessor;Ljava/util/Set;)V

    .line 177
    invoke-virtual {v14}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->createStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v7

    .line 179
    .local v7, "stateVar":Lorg/teleal/cling/model/meta/StateVariable;
    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 166
    .end local v7    # "stateVar":Lorg/teleal/cling/model/meta/StateVariable;
    :cond_3
    new-instance v1, Lorg/teleal/cling/model/state/GetterStateVariableAccessor;

    .end local v1    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    invoke-direct {v1, v3}, Lorg/teleal/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_3

    .line 167
    .restart local v1    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    :cond_4
    if-eqz v2, :cond_5

    .line 168
    new-instance v1, Lorg/teleal/cling/model/state/FieldStateVariableAccessor;

    .end local v1    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    invoke-direct {v1, v2}, Lorg/teleal/cling/model/state/FieldStateVariableAccessor;-><init>(Ljava/lang/reflect/Field;)V

    .line 169
    .restart local v1    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    .line 170
    new-instance v1, Lorg/teleal/cling/model/state/GetterStateVariableAccessor;

    .end local v1    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    invoke-direct {v1, v3}, Lorg/teleal/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    .line 171
    .restart local v1    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    goto :goto_3

    .line 172
    :cond_6
    sget-object v14, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->log:Ljava/util/logging/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "No field or getter found for state variable, skipping accessor: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_3

    .line 184
    .end local v1    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "getter":Ljava/lang/reflect/Method;
    .end local v4    # "javaPropertyName":Ljava/lang/String;
    .end local v9    # "v":Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
    .end local v10    # "variables":Lorg/teleal/cling/binding/annotations/UpnpStateVariables;
    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 186
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    const-class v11, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    .line 188
    .local v8, "svAnnotation":Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
    new-instance v1, Lorg/teleal/cling/model/state/FieldStateVariableAccessor;

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/state/FieldStateVariableAccessor;-><init>(Ljava/lang/reflect/Field;)V

    .line 190
    .restart local v1    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    new-instance v13, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;

    .line 192
    invoke-interface {v8}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_8

    .line 193
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 190
    :goto_4
    move-object/from16 v0, p2

    invoke-direct {v13, v8, v11, v1, v0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;-><init>(Lorg/teleal/cling/binding/annotations/UpnpStateVariable;Ljava/lang/String;Lorg/teleal/cling/model/state/StateVariableAccessor;Ljava/util/Set;)V

    .line 197
    invoke-virtual {v13}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->createStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v7

    .line 199
    .restart local v7    # "stateVar":Lorg/teleal/cling/model/meta/StateVariable;
    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 194
    .end local v7    # "stateVar":Lorg/teleal/cling/model/meta/StateVariable;
    :cond_8
    invoke-interface {v8}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    .line 203
    .end local v1    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "svAnnotation":Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 205
    .restart local v3    # "getter":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/teleal/common/util/Reflections;->getMethodPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "propertyName":Ljava/lang/String;
    if-nez v6, :cond_a

    .line 207
    new-instance v11, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 208
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Annotated method is not a getter method (: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 207
    invoke-direct {v11, v12}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 212
    :cond_a
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_b

    .line 213
    new-instance v11, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 214
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Getter method defined as @UpnpStateVariable can not have parameters: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 213
    invoke-direct {v11, v12}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 217
    :cond_b
    const-class v11, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;

    .line 219
    .restart local v8    # "svAnnotation":Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
    new-instance v1, Lorg/teleal/cling/model/state/GetterStateVariableAccessor;

    invoke-direct {v1, v3}, Lorg/teleal/cling/model/state/GetterStateVariableAccessor;-><init>(Ljava/lang/reflect/Method;)V

    .line 221
    .restart local v1    # "accessor":Lorg/teleal/cling/model/state/StateVariableAccessor;
    new-instance v13, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;

    .line 223
    invoke-interface {v8}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_c

    .line 225
    invoke-static {v6}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->toUpnpStateVariableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 221
    :goto_5
    move-object/from16 v0, p2

    invoke-direct {v13, v8, v11, v1, v0}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;-><init>(Lorg/teleal/cling/binding/annotations/UpnpStateVariable;Ljava/lang/String;Lorg/teleal/cling/model/state/StateVariableAccessor;Ljava/util/Set;)V

    .line 229
    invoke-virtual {v13}, Lorg/teleal/cling/binding/annotations/AnnotationStateVariableBinder;->createStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v7

    .line 231
    .restart local v7    # "stateVar":Lorg/teleal/cling/model/meta/StateVariable;
    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 226
    .end local v7    # "stateVar":Lorg/teleal/cling/model/meta/StateVariable;
    :cond_c
    invoke-interface {v8}, Lorg/teleal/cling/binding/annotations/UpnpStateVariable;->name()Ljava/lang/String;

    move-result-object v11

    goto :goto_5
.end method

.method protected readStringConvertibleTypes([Ljava/lang/Class;)Ljava/util/Set;
    .locals 8
    .param p1, "declaredTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 120
    array-length v4, p1

    :goto_0
    if-lt v3, v4, :cond_0

    .line 134
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 137
    .local v2, "stringConvertibleTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    const-class v3, Ljava/net/URI;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    const-class v3, Ljava/net/URL;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    const-class v3, Lorg/teleal/cling/model/types/csv/CSV;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    return-object v2

    .line 120
    .end local v2    # "stringConvertibleTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class;>;"
    :cond_0
    aget-object v1, p1, v3

    .line 121
    .local v1, "stringConvertibleType":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 122
    new-instance v3, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Declared string-convertible type must be public: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-direct {v3, v4}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_1
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lorg/teleal/cling/binding/LocalServiceBindingException;

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Declared string-convertible type needs a public single-argument String constructor: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-direct {v3, v4}, Lorg/teleal/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
