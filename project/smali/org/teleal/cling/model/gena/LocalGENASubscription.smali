.class public abstract Lorg/teleal/cling/model/gena/LocalGENASubscription;
.super Lorg/teleal/cling/model/gena/GENASubscription;
.source "LocalGENASubscription.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/gena/GENASubscription",
        "<",
        "Lorg/teleal/cling/model/meta/LocalService;",
        ">;",
        "Ljava/beans/PropertyChangeListener;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field final callbackURLs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field final lastSentNumericValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final lastSentTimestamp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 8
    .param p1, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .param p2, "requestedDurationSeconds"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/LocalService;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    .local p3, "callbackURLs":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/gena/GENASubscription;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    .line 65
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->lastSentTimestamp:Ljava/util/Map;

    .line 66
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->lastSentNumericValue:Ljava/util/Map;

    .line 77
    invoke-virtual {p0, p2}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->setSubscriptionDuration(Ljava/lang/Integer;)V

    .line 79
    sget-object v4, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    const-string v5, "Reading initial state of local service at subscription time"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 80
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 81
    .local v0, "currentTime":J
    iget-object v4, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->currentValues:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 83
    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/meta/LocalService;

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/LocalService;->getManager()Lorg/teleal/cling/model/ServiceManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/model/ServiceManager;->readEventedStateVariableValues()Ljava/util/Collection;

    move-result-object v3

    .line 85
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/state/StateVariableValue;>;"
    sget-object v4, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got evented state variable values: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 87
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uuid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->subscriptionId:Ljava/lang/String;

    .line 102
    new-instance v4, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v4, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 103
    iput-object p3, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->callbackURLs:Ljava/util/List;

    .line 104
    return-void

    .line 87
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/state/StateVariableValue;

    .line 88
    .local v2, "value":Lorg/teleal/cling/model/state/StateVariableValue;
    iget-object v5, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->currentValues:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/teleal/cling/model/state/StateVariableValue;->getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v5, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    sget-object v5, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Read state variable value \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/teleal/cling/model/state/StateVariableValue;->getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v7

    invoke-virtual {v7}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\': "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/teleal/cling/model/state/StateVariableValue;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 95
    :cond_2
    iget-object v5, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->lastSentTimestamp:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/teleal/cling/model/state/StateVariableValue;->getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {v2}, Lorg/teleal/cling/model/state/StateVariableValue;->getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/StateVariable;->isModeratedNumericType()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    iget-object v5, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->lastSentNumericValue:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/teleal/cling/model/state/StateVariableValue;->getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lorg/teleal/cling/model/state/StateVariableValue;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected constructor <init>(Lorg/teleal/cling/model/meta/LocalService;Ljava/util/List;)V
    .locals 1
    .param p1, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/LocalService;",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "callbackURLs":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/gena/GENASubscription;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->lastSentTimestamp:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->lastSentNumericValue:Ljava/util/Map;

    .line 70
    iput-object p2, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->callbackURLs:Ljava/util/List;

    .line 71
    return-void
.end method


# virtual methods
.method public declared-synchronized end(Lorg/teleal/cling/model/gena/CancelReason;)V
    .locals 4
    .param p1, "reason"    # Lorg/teleal/cling/model/gena/CancelReason;

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/LocalService;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/LocalService;->getManager()Lorg/teleal/cling/model/ServiceManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/model/ServiceManager;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->ended(Lorg/teleal/cling/model/gena/CancelReason;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removal of local service property change listener failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public abstract ended(Lorg/teleal/cling/model/gena/CancelReason;)V
.end method

.method public declared-synchronized establish()V
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->established()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCallbackURLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->callbackURLs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized incrementSequence()V
    .locals 2

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->increment(Z)Lorg/teleal/cling/model/types/UnsignedVariableInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized moderateStateVariables(JLjava/util/Collection;)Ljava/util/Set;
    .locals 21
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/state/StateVariableValue;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    .local p3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/state/StateVariableValue;>;"
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 186
    .local v2, "excludedVariables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    if-nez v16, :cond_1

    .line 232
    monitor-exit p0

    return-object v2

    .line 186
    :cond_1
    :try_start_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/teleal/cling/model/state/StateVariableValue;

    .line 188
    .local v11, "stateVariableValue":Lorg/teleal/cling/model/state/StateVariableValue;
    invoke-virtual {v11}, Lorg/teleal/cling/model/state/StateVariableValue;->getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v3

    .line 189
    .local v3, "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    invoke-virtual {v11}, Lorg/teleal/cling/model/state/StateVariableValue;->getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v10

    .line 191
    .local v10, "stateVariableName":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/StateVariable;->getEventDetails()Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->getEventMaximumRateMilliseconds()I

    move-result v16

    if-nez v16, :cond_2

    .line 192
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/StateVariable;->getEventDetails()Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->getEventMinimumDelta()I

    move-result v16

    if-nez v16, :cond_2

    .line 193
    sget-object v16, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Variable is not moderated: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    .end local v2    # "excludedVariables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    .end local v10    # "stateVariableName":Ljava/lang/String;
    .end local v11    # "stateVariableValue":Lorg/teleal/cling/model/state/StateVariableValue;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 198
    .restart local v2    # "excludedVariables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "stateVariable":Lorg/teleal/cling/model/meta/StateVariable;
    .restart local v10    # "stateVariableName":Ljava/lang/String;
    .restart local v11    # "stateVariableValue":Lorg/teleal/cling/model/state/StateVariableValue;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->lastSentTimestamp:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 199
    sget-object v16, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Variable is moderated but was never sent before: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/StateVariable;->getEventDetails()Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->getEventMaximumRateMilliseconds()I

    move-result v16

    if-lez v16, :cond_4

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->lastSentTimestamp:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 205
    .local v12, "timestampLastSent":J
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/StateVariable;->getEventDetails()Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->getEventMaximumRateMilliseconds()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v14, v12, v18

    .line 206
    .local v14, "timestampNextSend":J
    cmp-long v16, p1, v14

    if-gtz v16, :cond_4

    .line 207
    sget-object v16, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Excluding state variable with maximum rate: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 208
    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 213
    .end local v12    # "timestampLastSent":J
    .end local v14    # "timestampNextSend":J
    :cond_4
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/StateVariable;->isModeratedNumericType()Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->lastSentNumericValue:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->lastSentNumericValue:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 216
    .local v8, "oldValue":J
    invoke-virtual {v11}, Lorg/teleal/cling/model/state/StateVariableValue;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 217
    .local v6, "newValue":J
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/StateVariable;->getEventDetails()Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->getEventMinimumDelta()I

    move-result v16

    move/from16 v0, v16

    int-to-long v4, v0

    .line 219
    .local v4, "minDelta":J
    cmp-long v16, v6, v8

    if-lez v16, :cond_5

    sub-long v18, v6, v8

    cmp-long v16, v18, v4

    if-gez v16, :cond_5

    .line 220
    sget-object v16, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Excluding state variable with minimum delta: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 221
    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 225
    :cond_5
    cmp-long v16, v6, v8

    if-gez v16, :cond_0

    sub-long v18, v8, v6

    cmp-long v16, v18, v4

    if-gez v16, :cond_0

    .line 226
    sget-object v16, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Excluding state variable with minimum delta: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 227
    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 10
    .param p1, "e"    # Ljava/beans/PropertyChangeEvent;

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_EventedStateVariables"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 172
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    :try_start_1
    sget-object v6, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Eventing triggered, getting state for subscription: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 142
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 144
    .local v0, "currentTime":J
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 145
    .local v5, "newValues":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/state/StateVariableValue;>;"
    invoke-virtual {p0, v0, v1, v5}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->moderateStateVariables(JLjava/util/Collection;)Ljava/util/Set;

    move-result-object v2

    .line 148
    .local v2, "excludedVariables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->currentValues:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 149
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 163
    iget-object v6, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->currentValues:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 164
    sget-object v6, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Propagating new state variable values to subscription: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->eventReceived()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    .end local v0    # "currentTime":J
    .end local v2    # "excludedVariables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "newValues":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/state/StateVariableValue;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 149
    .restart local v0    # "currentTime":J
    .restart local v2    # "excludedVariables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "newValues":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/state/StateVariableValue;>;"
    :cond_2
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/state/StateVariableValue;

    .line 150
    .local v4, "newValue":Lorg/teleal/cling/model/state/StateVariableValue;
    invoke-virtual {v4}, Lorg/teleal/cling/model/state/StateVariableValue;->getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v7

    invoke-virtual {v7}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 152
    sget-object v7, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Adding state variable value to current values of event: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/teleal/cling/model/state/StateVariableValue;->getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 153
    iget-object v7, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->currentValues:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/teleal/cling/model/state/StateVariableValue;->getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v8

    invoke-virtual {v8}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v7, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->lastSentTimestamp:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v4}, Lorg/teleal/cling/model/state/StateVariableValue;->getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v7

    invoke-virtual {v7}, Lorg/teleal/cling/model/meta/StateVariable;->isModeratedNumericType()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 158
    iget-object v7, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->lastSentNumericValue:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/teleal/cling/model/state/StateVariableValue;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 170
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "newValue":Lorg/teleal/cling/model/state/StateVariableValue;
    :cond_3
    sget-object v6, Lorg/teleal/cling/model/gena/LocalGENASubscription;->log:Ljava/util/logging/Logger;

    const-string v7, "No state variable values for event (all moderated out?), not triggering event"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized registerOnService()V
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/LocalService;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/LocalService;->getManager()Lorg/teleal/cling/model/ServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/model/ServiceManager;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubscriptionDuration(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "requestedDurationSeconds"    # Ljava/lang/Integer;

    .prologue
    .line 240
    monitor-enter p0

    .line 241
    if-nez p1, :cond_0

    .line 242
    const/16 v0, 0x708

    .line 240
    :goto_0
    :try_start_0
    iput v0, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->requestedDurationSeconds:I

    .line 245
    iget v0, p0, Lorg/teleal/cling/model/gena/LocalGENASubscription;->requestedDurationSeconds:I

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->setActualSubscriptionDurationSeconds(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 243
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
