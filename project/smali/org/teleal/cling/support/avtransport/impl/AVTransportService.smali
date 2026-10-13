.class public Lorg/teleal/cling/support/avtransport/impl/AVTransportService;
.super Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;
.source "AVTransportService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/teleal/cling/support/model/AVTransport;",
        ">",
        "Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field final initialState:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;",
            ">;"
        }
    .end annotation
.end field

.field final stateMachineDefinition:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final stateMachines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field final transportClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/model/AVTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    .local p1, "stateMachineDefinition":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;>;"
    .local p2, "initialState":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;>;"
    const-class v0, Lorg/teleal/cling/support/model/AVTransport;

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    .local p1, "stateMachineDefinition":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;>;"
    .local p2, "initialState":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;>;"
    .local p3, "transportClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;-><init>()V

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    .line 100
    iput-object p1, p0, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->stateMachineDefinition:Ljava/lang/Class;

    .line 101
    iput-object p2, p0, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->initialState:Ljava/lang/Class;

    .line 102
    iput-object p3, p0, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->transportClass:Ljava/lang/Class;

    .line 103
    return-void
.end method


# virtual methods
.method protected createStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;
    .locals 6
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .prologue
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 297
    iget-object v0, p0, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->stateMachineDefinition:Ljava/lang/Class;

    .line 298
    iget-object v1, p0, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->initialState:Ljava/lang/Class;

    .line 299
    new-array v2, v4, [Ljava/lang/Class;

    iget-object v3, p0, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->transportClass:Ljava/lang/Class;

    aput-object v3, v2, v5

    .line 300
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->getLastChange()Lorg/teleal/cling/support/lastchange/LastChange;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->createTransport(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/support/lastchange/LastChange;)Lorg/teleal/cling/support/model/AVTransport;

    move-result-object v4

    aput-object v4, v3, v5

    .line 296
    invoke-static {v0, v1, v2, v3}, Lorg/teleal/common/statemachine/StateMachineBuilder;->build(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/teleal/common/statemachine/StateMachine;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    return-object v0
.end method

.method protected createTransport(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/support/lastchange/LastChange;)Lorg/teleal/cling/support/model/AVTransport;
    .locals 2
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "lastChange"    # Lorg/teleal/cling/support/lastchange/LastChange;

    .prologue
    .line 305
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    new-instance v0, Lorg/teleal/cling/support/model/AVTransport;

    sget-object v1, Lorg/teleal/cling/support/model/StorageMedium;->NETWORK:Lorg/teleal/cling/support/model/StorageMedium;

    invoke-direct {v0, p1, p2, v1}, Lorg/teleal/cling/support/model/AVTransport;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/support/lastchange/LastChange;Lorg/teleal/cling/support/model/StorageMedium;)V

    return-object v0
.end method

.method protected findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;
    .locals 1
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    return-object v0
.end method

.method protected findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;
    .locals 8
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "createDefaultTransport"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    iget-object v4, p0, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    monitor-enter v4

    .line 280
    :try_start_0
    invoke-virtual {p1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 281
    .local v0, "id":J
    iget-object v3, p0, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    .line 282
    .local v2, "stateMachine":Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;
    if-nez v2, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-nez v3, :cond_1

    if-eqz p2, :cond_1

    .line 283
    sget-object v3, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->log:Ljava/util/logging/Logger;

    const-string v5, "Creating default transport instance with ID \'0\'"

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->createStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v2

    .line 285
    iget-object v3, p0, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->stateMachines:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_0
    sget-object v3, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found transport control with ID \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 290
    monitor-exit v4

    return-object v2

    .line 286
    :cond_1
    if-nez v2, :cond_0

    .line 287
    new-instance v3, Lorg/teleal/cling/support/avtransport/AVTransportException;

    sget-object v5, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->INVALID_INSTANCE_ID:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    invoke-direct {v3, v5}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;)V

    throw v3

    .line 279
    .end local v0    # "id":J
    .end local v2    # "stateMachine":Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCurrentTransportActions(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Ljava/lang/String;
    .locals 4
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v2

    .line 202
    .local v2, "stateMachine":Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;
    :try_start_0
    invoke-interface {v2}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v3}, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;->getCurrentTransportActions()[Lorg/teleal/cling/support/model/TransportAction;

    move-result-object v0

    .line 203
    .local v0, "actions":[Lorg/teleal/cling/support/model/TransportAction;
    invoke-static {v0}, Lorg/teleal/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/teleal/common/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 205
    .end local v0    # "actions":[Lorg/teleal/cling/support/model/TransportAction;
    :goto_0
    return-object v3

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "ex":Lorg/teleal/common/statemachine/TransitionException;
    const-string v3, ""

    goto :goto_0
.end method

.method public getDeviceCapabilities(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/model/DeviceCapabilities;
    .locals 1
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v0}, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/teleal/cling/support/model/AVTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/AVTransport;->getDeviceCapabilities()Lorg/teleal/cling/support/model/DeviceCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getMediaInfo(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/model/MediaInfo;
    .locals 1
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v0}, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/teleal/cling/support/model/AVTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/AVTransport;->getMediaInfo()Lorg/teleal/cling/support/model/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPositionInfo(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/model/PositionInfo;
    .locals 1
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v0}, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/teleal/cling/support/model/AVTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/AVTransport;->getPositionInfo()Lorg/teleal/cling/support/model/PositionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTransportInfo(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/model/TransportInfo;
    .locals 1
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v0}, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/teleal/cling/support/model/AVTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/AVTransport;->getTransportInfo()Lorg/teleal/cling/support/model/TransportInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTransportSettings(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/model/TransportSettings;
    .locals 1
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v0}, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/teleal/cling/support/model/AVTransport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/AVTransport;->getTransportSettings()Lorg/teleal/cling/support/model/TransportSettings;

    move-result-object v0

    return-object v0
.end method

.method public next(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 4
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->next()V
    :try_end_0
    .catch Lorg/teleal/common/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "ex":Lorg/teleal/common/statemachine/TransitionException;
    new-instance v1, Lorg/teleal/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/teleal/common/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public pause(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 4
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->pause()V
    :try_end_0
    .catch Lorg/teleal/common/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Lorg/teleal/common/statemachine/TransitionException;
    new-instance v1, Lorg/teleal/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/teleal/common/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public play(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "speed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->play(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/teleal/common/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "ex":Lorg/teleal/common/statemachine/TransitionException;
    new-instance v1, Lorg/teleal/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/teleal/common/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public previous(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 4
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->previous()V
    :try_end_0
    .catch Lorg/teleal/common/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "ex":Lorg/teleal/common/statemachine/TransitionException;
    new-instance v1, Lorg/teleal/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/teleal/common/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public record(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 4
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->record()V
    :try_end_0
    .catch Lorg/teleal/common/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "ex":Lorg/teleal/common/statemachine/TransitionException;
    new-instance v1, Lorg/teleal/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/teleal/common/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public seek(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "unit"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    :try_start_0
    invoke-static {p2}, Lorg/teleal/cling/support/model/SeekMode;->valueOrExceptionOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/SeekMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 252
    .local v1, "seekMode":Lorg/teleal/cling/support/model/SeekMode;
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v2

    invoke-interface {v2, v1, p3}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->seek(Lorg/teleal/cling/support/model/SeekMode;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/teleal/common/statemachine/TransitionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    return-void

    .line 245
    .end local v1    # "seekMode":Lorg/teleal/cling/support/model/SeekMode;
    :catch_0
    move-exception v0

    .line 246
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/teleal/cling/support/avtransport/AVTransportException;

    .line 247
    sget-object v3, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->SEEKMODE_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported seek mode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v2

    .line 253
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "seekMode":Lorg/teleal/cling/support/model/SeekMode;
    :catch_1
    move-exception v0

    .line 254
    .local v0, "ex":Lorg/teleal/common/statemachine/TransitionException;
    new-instance v2, Lorg/teleal/cling/support/avtransport/AVTransportException;

    sget-object v3, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/teleal/common/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v2
.end method

.method public setAVTransportURI(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "currentURI"    # Ljava/lang/String;
    .param p3, "currentURIMetaData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .local v2, "uri":Ljava/net/URI;
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v1

    .line 120
    .local v1, "transportStateMachine":Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;
    invoke-interface {v1, v2, p3}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->setTransportURI(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/teleal/common/statemachine/TransitionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    return-void

    .line 112
    .end local v1    # "transportStateMachine":Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;
    .end local v2    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/teleal/cling/support/avtransport/AVTransportException;

    .line 114
    sget-object v4, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/teleal/cling/model/types/ErrorCode;

    const-string v5, "CurrentURI can not be null or malformed"

    .line 113
    invoke-direct {v3, v4, v5}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v3

    .line 121
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "ex":Lorg/teleal/common/statemachine/TransitionException;
    new-instance v3, Lorg/teleal/cling/support/avtransport/AVTransportException;

    sget-object v4, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/teleal/common/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v3
.end method

.method public setNextAVTransportURI(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "nextURI"    # Ljava/lang/String;
    .param p3, "nextURIMetaData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .local v2, "uri":Ljava/net/URI;
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Z)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v1

    .line 141
    .local v1, "transportStateMachine":Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;
    invoke-interface {v1, v2, p3}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->setNextTransportURI(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/teleal/common/statemachine/TransitionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    return-void

    .line 133
    .end local v1    # "transportStateMachine":Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;
    .end local v2    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/teleal/cling/support/avtransport/AVTransportException;

    .line 135
    sget-object v4, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/teleal/cling/model/types/ErrorCode;

    const-string v5, "NextURI can not be null or malformed"

    .line 134
    invoke-direct {v3, v4, v5}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v3

    .line 142
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v0

    .line 143
    .local v0, "ex":Lorg/teleal/common/statemachine/TransitionException;
    new-instance v3, Lorg/teleal/cling/support/avtransport/AVTransportException;

    sget-object v4, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/teleal/common/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v3
.end method

.method public setPlayMode(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 6
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "newPlayMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v2}, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/teleal/cling/support/model/AVTransport;

    move-result-object v1

    .line 151
    .local v1, "transport":Lorg/teleal/cling/support/model/AVTransport;
    :try_start_0
    new-instance v2, Lorg/teleal/cling/support/model/TransportSettings;

    .line 152
    invoke-static {p2}, Lorg/teleal/cling/support/model/PlayMode;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/PlayMode;

    move-result-object v3

    .line 153
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/AVTransport;->getTransportSettings()Lorg/teleal/cling/support/model/TransportSettings;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/support/model/TransportSettings;->getRecQualityMode()Lorg/teleal/cling/support/model/RecordQualityMode;

    move-result-object v4

    .line 151
    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/support/model/TransportSettings;-><init>(Lorg/teleal/cling/support/model/PlayMode;Lorg/teleal/cling/support/model/RecordQualityMode;)V

    .line 150
    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/AVTransport;->setTransportSettings(Lorg/teleal/cling/support/model/TransportSettings;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/teleal/cling/support/avtransport/AVTransportException;

    .line 158
    sget-object v3, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->PLAYMODE_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported play mode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v2
.end method

.method public setRecordQualityMode(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 6
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "newRecordQualityMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->getCurrentState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;

    invoke-virtual {v2}, Lorg/teleal/cling/support/avtransport/impl/state/AbstractState;->getTransport()Lorg/teleal/cling/support/model/AVTransport;

    move-result-object v1

    .line 167
    .local v1, "transport":Lorg/teleal/cling/support/model/AVTransport;
    :try_start_0
    new-instance v2, Lorg/teleal/cling/support/model/TransportSettings;

    .line 168
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/AVTransport;->getTransportSettings()Lorg/teleal/cling/support/model/TransportSettings;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/support/model/TransportSettings;->getPlayMode()Lorg/teleal/cling/support/model/PlayMode;

    move-result-object v3

    .line 169
    invoke-static {p2}, Lorg/teleal/cling/support/model/RecordQualityMode;->valueOrExceptionOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/RecordQualityMode;

    move-result-object v4

    .line 167
    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/support/model/TransportSettings;-><init>(Lorg/teleal/cling/support/model/PlayMode;Lorg/teleal/cling/support/model/RecordQualityMode;)V

    .line 166
    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/model/AVTransport;->setTransportSettings(Lorg/teleal/cling/support/model/TransportSettings;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lorg/teleal/cling/support/avtransport/AVTransportException;

    .line 174
    sget-object v3, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->RECORDQUALITYMODE_NOT_SUPPORTED:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported record quality mode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v2
.end method

.method public stop(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 4
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lorg/teleal/cling/support/avtransport/impl/AVTransportService;, "Lorg/teleal/cling/support/avtransport/impl/AVTransportService<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportService;->findStateMachine(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/support/avtransport/impl/AVTransportStateMachine;->stop()V
    :try_end_0
    .catch Lorg/teleal/common/statemachine/TransitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "ex":Lorg/teleal/common/statemachine/TransitionException;
    new-instance v1, Lorg/teleal/cling/support/avtransport/AVTransportException;

    sget-object v2, Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;->TRANSITION_NOT_AVAILABLE:Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;

    invoke-virtual {v0}, Lorg/teleal/common/statemachine/TransitionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/support/avtransport/AVTransportException;-><init>(Lorg/teleal/cling/support/avtransport/AVTransportErrorCode;Ljava/lang/String;)V

    throw v1
.end method
