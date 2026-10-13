.class public Lorg/teleal/cling/model/meta/RemoteService;
.super Lorg/teleal/cling/model/meta/Service;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/meta/Service",
        "<",
        "Lorg/teleal/cling/model/meta/RemoteDevice;",
        "Lorg/teleal/cling/model/meta/RemoteService;",
        ">;"
    }
.end annotation


# instance fields
.field private final controlURI:Ljava/net/URI;

.field private final descriptorURI:Ljava/net/URI;

.field private final eventSubscriptionURI:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;)V
    .locals 8
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .param p2, "serviceId"    # Lorg/teleal/cling/model/types/ServiceId;
    .param p3, "descriptorURI"    # Ljava/net/URI;
    .param p4, "controlURI"    # Ljava/net/URI;
    .param p5, "eventSubscriptionURI"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/RemoteService;-><init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)V
    .locals 3
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .param p2, "serviceId"    # Lorg/teleal/cling/model/types/ServiceId;
    .param p3, "descriptorURI"    # Ljava/net/URI;
    .param p4, "controlURI"    # Ljava/net/URI;
    .param p5, "eventSubscriptionURI"    # Ljava/net/URI;
    .param p6, "actions"    # [Lorg/teleal/cling/model/meta/Action;
    .param p7, "stateVariables"    # [Lorg/teleal/cling/model/meta/StateVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/ServiceType;",
            "Lorg/teleal/cling/model/types/ServiceId;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "[",
            "Lorg/teleal/cling/model/meta/Action",
            "<",
            "Lorg/teleal/cling/model/meta/RemoteService;",
            ">;[",
            "Lorg/teleal/cling/model/meta/StateVariable",
            "<",
            "Lorg/teleal/cling/model/meta/RemoteService;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p6, p7}, Lorg/teleal/cling/model/meta/Service;-><init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)V

    .line 54
    iput-object p3, p0, Lorg/teleal/cling/model/meta/RemoteService;->descriptorURI:Ljava/net/URI;

    .line 55
    iput-object p4, p0, Lorg/teleal/cling/model/meta/RemoteService;->controlURI:Ljava/net/URI;

    .line 56
    iput-object p5, p0, Lorg/teleal/cling/model/meta/RemoteService;->eventSubscriptionURI:Ljava/net/URI;

    .line 58
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteService;->validateThis()Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 60
    new-instance v1, Lorg/teleal/cling/model/ValidationException;

    const-string v2, "Validation of device graph failed, call getErrors() on exception"

    invoke-direct {v1, v2, v0}, Lorg/teleal/cling/model/ValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v1

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public getControlURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/teleal/cling/model/meta/RemoteService;->controlURI:Ljava/net/URI;

    return-object v0
.end method

.method public getDescriptorURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/teleal/cling/model/meta/RemoteService;->descriptorURI:Ljava/net/URI;

    return-object v0
.end method

.method public getEventSubscriptionURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/teleal/cling/model/meta/RemoteService;->eventSubscriptionURI:Ljava/net/URI;

    return-object v0
.end method

.method public getQueryStateVariableAction()Lorg/teleal/cling/model/meta/Action;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lorg/teleal/cling/model/meta/QueryStateVariableAction;

    invoke-direct {v0, p0}, Lorg/teleal/cling/model/meta/QueryStateVariableAction;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    return-object v0
.end method

.method public validateThis()Ljava/util/List;
    .locals 5
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
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteService;->getDescriptorURI()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lorg/teleal/cling/model/ValidationError;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 87
    const-string v3, "descriptorURI"

    .line 88
    const-string v4, "Descriptor location (SCPDURL) is required"

    invoke-direct {v1, v2, v3, v4}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteService;->getControlURI()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_1

    .line 93
    new-instance v1, Lorg/teleal/cling/model/ValidationError;

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 95
    const-string v3, "controlURI"

    .line 96
    const-string v4, "Control URL is required"

    invoke-direct {v1, v2, v3, v4}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteService;->getEventSubscriptionURI()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_2

    .line 101
    new-instance v1, Lorg/teleal/cling/model/ValidationError;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 103
    const-string v3, "eventSubscriptionURI"

    .line 104
    const-string v4, "Event subscription URL is required"

    invoke-direct {v1, v2, v3, v4}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_2
    return-object v0
.end method
