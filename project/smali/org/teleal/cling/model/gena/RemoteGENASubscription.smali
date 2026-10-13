.class public abstract Lorg/teleal/cling/model/gena/RemoteGENASubscription;
.super Lorg/teleal/cling/model/gena/GENASubscription;
.source "RemoteGENASubscription.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/gena/GENASubscription",
        "<",
        "Lorg/teleal/cling/model/meta/RemoteService;",
        ">;"
    }
.end annotation


# instance fields
.field protected propertyChangeSupport:Ljava/beans/PropertyChangeSupport;


# direct methods
.method protected constructor <init>(Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 1
    .param p1, "service"    # Lorg/teleal/cling/model/meta/RemoteService;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/gena/GENASubscription;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    .line 46
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 50
    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/model/meta/RemoteService;I)V
    .locals 1
    .param p1, "service"    # Lorg/teleal/cling/model/meta/RemoteService;
    .param p2, "requestedDurationSeconds"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/model/gena/GENASubscription;-><init>(Lorg/teleal/cling/model/meta/Service;I)V

    .line 46
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 55
    return-void
.end method


# virtual methods
.method public declared-synchronized end(Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 1
    .param p1, "reason"    # Lorg/teleal/cling/model/gena/CancelReason;
    .param p2, "response"    # Lorg/teleal/cling/model/message/UpnpResponse;

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->ended(Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract ended(Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V
.end method

.method public declared-synchronized establish()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->established()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract eventsMissed(I)V
.end method

.method public declared-synchronized fail(Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 1
    .param p1, "responseStatus"    # Lorg/teleal/cling/model/message/UpnpResponse;

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->failed(Lorg/teleal/cling/model/message/UpnpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract failed(Lorg/teleal/cling/model/message/UpnpResponse;)V
.end method

.method public declared-synchronized getEventCallbackURLs(Ljava/util/List;Lorg/teleal/cling/model/Namespace;)Ljava/util/List;
    .locals 5
    .param p2, "namespace"    # Lorg/teleal/cling/model/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/NetworkAddress;",
            ">;",
            "Lorg/teleal/cling/model/Namespace;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "activeStreamServers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/NetworkAddress;>;"
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v1, "callbackURLs":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 72
    monitor-exit p0

    return-object v1

    .line 65
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/NetworkAddress;

    .line 67
    .local v0, "activeStreamServer":Lorg/teleal/cling/model/NetworkAddress;
    new-instance v3, Lorg/teleal/cling/model/Location;

    .line 69
    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/teleal/cling/model/Namespace;->getEventCallbackPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v4

    .line 67
    invoke-direct {v3, v0, v4}, Lorg/teleal/cling/model/Location;-><init>(Lorg/teleal/cling/model/NetworkAddress;Ljava/net/URI;)V

    .line 70
    invoke-virtual {v3}, Lorg/teleal/cling/model/Location;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 66
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "activeStreamServer":Lorg/teleal/cling/model/NetworkAddress;
    .end local v1    # "callbackURLs":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getEventSubscriptionURL()Ljava/net/URL;
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteService;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/RemoteService;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 59
    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteService;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteService;->getEventSubscriptionURI()Ljava/net/URI;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/meta/RemoteDevice;->normalizeURI(Ljava/net/URI;)Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized receive(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/util/Collection;)V
    .locals 10
    .param p1, "sequence"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/state/StateVariableValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "newValues":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/state/StateVariableValue;>;"
    const-wide/16 v8, 0x1

    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    if-eqz v4, :cond_2

    .line 97
    iget-object v4, p0, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v4}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v5}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getBits()Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;->getMaxValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    .line 98
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "TODO: HANDLE ROLLOVER"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v4}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 107
    iget-object v4, p0, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v4}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long v2, v4, v8

    .line 108
    .local v2, "expectedValue":J
    invoke-virtual {p1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v0, v4

    .local v0, "difference":I
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->eventsMissed(I)V

    .line 114
    .end local v0    # "difference":I
    .end local v2    # "expectedValue":J
    :cond_2
    iput-object p1, p0, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 116
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 120
    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->eventReceived()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 116
    :cond_3
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/state/StateVariableValue;

    .line 117
    .local v1, "newValue":Lorg/teleal/cling/model/state/StateVariableValue;
    iget-object v5, p0, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->currentValues:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/teleal/cling/model/state/StateVariableValue;->getStateVariable()Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/StateVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(SID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
