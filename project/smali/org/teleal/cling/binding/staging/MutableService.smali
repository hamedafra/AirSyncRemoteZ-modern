.class public Lorg/teleal/cling/binding/staging/MutableService;
.super Ljava/lang/Object;
.source "MutableService.java"


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/binding/staging/MutableAction;",
            ">;"
        }
    .end annotation
.end field

.field public controlURI:Ljava/net/URI;

.field public descriptorURI:Ljava/net/URI;

.field public eventSubscriptionURI:Ljava/net/URI;

.field public serviceId:Lorg/teleal/cling/model/types/ServiceId;

.field public serviceType:Lorg/teleal/cling/model/types/ServiceType;

.field public stateVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/binding/staging/MutableStateVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableService;->actions:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableService;->stateVariables:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public build(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;
    .locals 8
    .param p1, "prototype"    # Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 48
    .line 49
    iget-object v1, p0, Lorg/teleal/cling/binding/staging/MutableService;->serviceType:Lorg/teleal/cling/model/types/ServiceType;

    iget-object v2, p0, Lorg/teleal/cling/binding/staging/MutableService;->serviceId:Lorg/teleal/cling/model/types/ServiceId;

    .line 50
    iget-object v3, p0, Lorg/teleal/cling/binding/staging/MutableService;->descriptorURI:Ljava/net/URI;

    iget-object v4, p0, Lorg/teleal/cling/binding/staging/MutableService;->controlURI:Ljava/net/URI;

    iget-object v5, p0, Lorg/teleal/cling/binding/staging/MutableService;->eventSubscriptionURI:Ljava/net/URI;

    .line 51
    invoke-virtual {p0}, Lorg/teleal/cling/binding/staging/MutableService;->createActions()[Lorg/teleal/cling/model/meta/Action;

    move-result-object v6

    .line 52
    invoke-virtual {p0}, Lorg/teleal/cling/binding/staging/MutableService;->createStateVariables()[Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v7

    move-object v0, p1

    .line 48
    invoke-virtual/range {v0 .. v7}, Lorg/teleal/cling/model/meta/Device;->newInstance(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    return-object v0
.end method

.method public createActions()[Lorg/teleal/cling/model/meta/Action;
    .locals 6

    .prologue
    .line 57
    iget-object v4, p0, Lorg/teleal/cling/binding/staging/MutableService;->actions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Lorg/teleal/cling/model/meta/Action;

    .line 58
    .local v1, "array":[Lorg/teleal/cling/model/meta/Action;
    const/4 v2, 0x0

    .line 59
    .local v2, "i":I
    iget-object v4, p0, Lorg/teleal/cling/binding/staging/MutableService;->actions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    return-object v1

    .line 59
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/binding/staging/MutableAction;

    .line 60
    .local v0, "action":Lorg/teleal/cling/binding/staging/MutableAction;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v0}, Lorg/teleal/cling/binding/staging/MutableAction;->build()Lorg/teleal/cling/model/meta/Action;

    move-result-object v5

    aput-object v5, v1, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method

.method public createStateVariables()[Lorg/teleal/cling/model/meta/StateVariable;
    .locals 6

    .prologue
    .line 66
    iget-object v4, p0, Lorg/teleal/cling/binding/staging/MutableService;->stateVariables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Lorg/teleal/cling/model/meta/StateVariable;

    .line 67
    .local v0, "array":[Lorg/teleal/cling/model/meta/StateVariable;
    const/4 v1, 0x0

    .line 68
    .local v1, "i":I
    iget-object v4, p0, Lorg/teleal/cling/binding/staging/MutableService;->stateVariables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    return-object v0

    .line 68
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/binding/staging/MutableStateVariable;

    .line 69
    .local v3, "stateVariable":Lorg/teleal/cling/binding/staging/MutableStateVariable;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {v3}, Lorg/teleal/cling/binding/staging/MutableStateVariable;->build()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method
