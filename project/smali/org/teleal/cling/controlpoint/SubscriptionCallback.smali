.class public abstract Lorg/teleal/cling/controlpoint/SubscriptionCallback;
.super Ljava/lang/Object;
.source "SubscriptionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static log:Ljava/util/logging/Logger;


# instance fields
.field private controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

.field protected final requestedDurationSeconds:Ljava/lang/Integer;

.field protected final service:Lorg/teleal/cling/model/meta/Service;

.field private subscription:Lorg/teleal/cling/model/gena/GENASubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/model/meta/Service;)V
    .locals 1
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->service:Lorg/teleal/cling/model/meta/Service;

    .line 86
    const/16 v0, 0x708

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->requestedDurationSeconds:Ljava/lang/Integer;

    .line 87
    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/model/meta/Service;I)V
    .locals 1
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "requestedDurationSeconds"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->service:Lorg/teleal/cling/model/meta/Service;

    .line 91
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->requestedDurationSeconds:Ljava/lang/Integer;

    .line 92
    return-void
.end method

.method public static createDefaultFailureMessage(Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3
    .param p0, "responseStatus"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 320
    const-string v0, "Subscription failed: "

    .line 321
    .local v0, "message":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " HTTP response was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 323
    :cond_0
    if-eqz p1, :cond_1

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Exception occured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    goto :goto_0

    .line 326
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " No response received."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private endLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)V
    .locals 3
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/LocalGENASubscription;

    .prologue
    .line 248
    sget-object v0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing local subscription and ending it in callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/controlpoint/ControlPoint;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/teleal/cling/registry/Registry;->removeLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Z

    .line 250
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->end(Lorg/teleal/cling/model/gena/CancelReason;)V

    .line 251
    return-void
.end method

.method private endRemoteSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
    .locals 3
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .prologue
    .line 254
    sget-object v0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ending remote subscription: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/controlpoint/ControlPoint;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->getSyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/controlpoint/ControlPoint;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/teleal/cling/protocol/ProtocolFactory;->createSendingUnsubscribe(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;

    move-result-object v1

    .line 255
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method private establishLocalSubscription(Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 8
    .param p1, "service"    # Lorg/teleal/cling/model/meta/LocalService;

    .prologue
    const/4 v7, 0x0

    .line 128
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/controlpoint/ControlPoint;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v3

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/LocalService;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/teleal/cling/registry/Registry;->getLocalDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v3

    if-nez v3, :cond_0

    .line 129
    sget-object v3, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    const-string v4, "Local device service is currently not registered, failing subscription immediately"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 130
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Local device is not registered"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v7, v3}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->failed(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V

    .line 193
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 141
    .local v1, "localSubscription":Lorg/teleal/cling/model/gena/LocalGENASubscription;
    :try_start_0
    new-instance v2, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;

    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v2, p0, p1, v3, v4}, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;-><init>(Lorg/teleal/cling/controlpoint/SubscriptionCallback;Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1    # "localSubscription":Lorg/teleal/cling/model/gena/LocalGENASubscription;
    .local v2, "localSubscription":Lorg/teleal/cling/model/gena/LocalGENASubscription;
    :try_start_1
    sget-object v3, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    const-string v4, "Local device service is currently registered, also registering subscription"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/controlpoint/ControlPoint;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/teleal/cling/registry/Registry;->addLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)V

    .line 176
    sget-object v3, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    const-string v4, "Notifying subscription callback of local subscription availablity"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v2}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->establish()V

    .line 179
    sget-object v3, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Simulating first initial event for local subscription callback, sequence: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getCurrentSequence()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, v2}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->eventReceived(Lorg/teleal/cling/model/gena/GENASubscription;)V

    .line 181
    invoke-virtual {v2}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->incrementSequence()V

    .line 183
    sget-object v3, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    const-string v4, "Starting to monitor state changes of local service"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->registerOnService()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 186
    .end local v2    # "localSubscription":Lorg/teleal/cling/model/gena/LocalGENASubscription;
    .restart local v1    # "localSubscription":Lorg/teleal/cling/model/gena/LocalGENASubscription;
    goto :goto_0

    :catch_0
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    sget-object v3, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Local callback creation failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 188
    sget-object v3, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Exception root cause: "

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/controlpoint/ControlPoint;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/teleal/cling/registry/Registry;->removeLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Z

    .line 191
    :cond_1
    invoke-virtual {p0, v1, v7, v0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->failed(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 186
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "localSubscription":Lorg/teleal/cling/model/gena/LocalGENASubscription;
    .restart local v2    # "localSubscription":Lorg/teleal/cling/model/gena/LocalGENASubscription;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "localSubscription":Lorg/teleal/cling/model/gena/LocalGENASubscription;
    .restart local v1    # "localSubscription":Lorg/teleal/cling/model/gena/LocalGENASubscription;
    goto :goto_1
.end method

.method private establishRemoteSubscription(Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 2
    .param p1, "service"    # Lorg/teleal/cling/model/meta/RemoteService;

    .prologue
    .line 197
    new-instance v0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;

    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->requestedDurationSeconds:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;-><init>(Lorg/teleal/cling/controlpoint/SubscriptionCallback;Lorg/teleal/cling/model/meta/RemoteService;I)V

    .line 233
    .local v0, "remoteSubscription":Lorg/teleal/cling/model/gena/RemoteGENASubscription;
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/controlpoint/ControlPoint;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v1

    .line 234
    invoke-interface {v1, v0}, Lorg/teleal/cling/protocol/ProtocolFactory;->createSendingSubscribe(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingSubscribe;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->run()V

    .line 236
    return-void
.end method


# virtual methods
.method public declared-synchronized end()V
    .locals 1

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/teleal/cling/model/gena/GENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 240
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/teleal/cling/model/gena/GENASubscription;

    instance-of v0, v0, Lorg/teleal/cling/model/gena/LocalGENASubscription;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/teleal/cling/model/gena/GENASubscription;

    check-cast v0, Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->endLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 242
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/teleal/cling/model/gena/GENASubscription;

    instance-of v0, v0, Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/teleal/cling/model/gena/GENASubscription;

    check-cast v0, Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->endRemoteSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected abstract ended(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V
.end method

.method protected abstract established(Lorg/teleal/cling/model/gena/GENASubscription;)V
.end method

.method protected abstract eventReceived(Lorg/teleal/cling/model/gena/GENASubscription;)V
.end method

.method protected abstract eventsMissed(Lorg/teleal/cling/model/gena/GENASubscription;I)V
.end method

.method protected failed(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/GENASubscription;
    .param p2, "responseStatus"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 261
    invoke-static {p2, p3}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->createDefaultFailureMessage(Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->failed(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method protected abstract failed(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;Ljava/lang/String;)V
.end method

.method public declared-synchronized getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getService()Lorg/teleal/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->service:Lorg/teleal/cling/model/meta/Service;

    return-object v0
.end method

.method public declared-synchronized getSubscription()Lorg/teleal/cling/model/gena/GENASubscription;
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/teleal/cling/model/gena/GENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback must be executed through ControlPoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    instance-of v0, v0, Lorg/teleal/cling/model/meta/LocalService;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->service:Lorg/teleal/cling/model/meta/Service;

    check-cast v0, Lorg/teleal/cling/model/meta/LocalService;

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->establishLocalSubscription(Lorg/teleal/cling/model/meta/LocalService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    instance-of v0, v0, Lorg/teleal/cling/model/meta/RemoteService;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->service:Lorg/teleal/cling/model/meta/Service;

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteService;

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->establishRemoteSubscription(Lorg/teleal/cling/model/meta/RemoteService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setControlPoint(Lorg/teleal/cling/controlpoint/ControlPoint;)V
    .locals 1
    .param p1, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)V
    .locals 1
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/GENASubscription;

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->subscription:Lorg/teleal/cling/model/gena/GENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(SubscriptionCallback) "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
