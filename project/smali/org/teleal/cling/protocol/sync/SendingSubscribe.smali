.class public Lorg/teleal/cling/protocol/sync/SendingSubscribe;
.super Lorg/teleal/cling/protocol/SendingSync;
.source "SendingSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/SendingSync",
        "<",
        "Lorg/teleal/cling/model/message/gena/OutgoingSubscribeRequestMessage;",
        "Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/teleal/cling/protocol/sync/SendingSubscribe;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
    .locals 3
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .prologue
    .line 53
    .line 54
    new-instance v1, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeRequestMessage;

    .line 57
    invoke-interface {p1}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v2

    .line 58
    invoke-virtual {p2}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteService;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/RemoteService;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDiscoveredOnLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 57
    invoke-interface {v2, v0}, Lorg/teleal/cling/transport/Router;->getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-interface {p1}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->getNamespace()Lorg/teleal/cling/model/Namespace;

    move-result-object v2

    .line 56
    invoke-virtual {p2, v0, v2}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getEventCallbackURLs(Ljava/util/List;Lorg/teleal/cling/model/Namespace;)Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-direct {v1, p2, v0}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeRequestMessage;-><init>(Lorg/teleal/cling/model/gena/RemoteGENASubscription;Ljava/util/List;)V

    invoke-direct {p0, p1, v1}, Lorg/teleal/cling/protocol/SendingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 65
    iput-object p2, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .line 66
    return-void
.end method


# virtual methods
.method protected bridge synthetic executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->executeSync()Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected executeSync()Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getInputMessage()Lorg/teleal/cling/model/message/StreamRequestMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeRequestMessage;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeRequestMessage;->hasCallbackURLs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    sget-object v2, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v3, "Subscription failed, no active local callback URLs available (network disabled?)"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 73
    new-instance v3, Lorg/teleal/cling/protocol/sync/SendingSubscribe$1;

    invoke-direct {v3, p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe$1;-><init>(Lorg/teleal/cling/protocol/sync/SendingSubscribe;)V

    .line 72
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 139
    :goto_0
    return-object v1

    .line 82
    :cond_0
    sget-object v2, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending subscription request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getInputMessage()Lorg/teleal/cling/model/message/StreamRequestMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/registry/Registry;->lockRemoteSubscriptions()V

    .line 88
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v2

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getInputMessage()Lorg/teleal/cling/model/message/StreamRequestMessage;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0

    .line 90
    .local v0, "response":Lorg/teleal/cling/model/message/StreamResponseMessage;
    if-nez v0, :cond_1

    .line 91
    sget-object v2, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v3, "Subscription failed, no response received"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 93
    new-instance v3, Lorg/teleal/cling/protocol/sync/SendingSubscribe$2;

    invoke-direct {v3, p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe$2;-><init>(Lorg/teleal/cling/protocol/sync/SendingSubscribe;)V

    .line 92
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/registry/Registry;->unlockRemoteSubscriptions()V

    goto :goto_0

    .line 102
    :cond_1
    :try_start_1
    new-instance v1, Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-direct {v1, v0}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;-><init>(Lorg/teleal/cling/model/message/StreamResponseMessage;)V

    .line 104
    .local v1, "responseMessage":Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    sget-object v2, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Subscription failed, response was: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 107
    new-instance v3, Lorg/teleal/cling/protocol/sync/SendingSubscribe$3;

    invoke-direct {v3, p0, v1}, Lorg/teleal/cling/protocol/sync/SendingSubscribe$3;-><init>(Lorg/teleal/cling/protocol/sync/SendingSubscribe;Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;)V

    .line 106
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/registry/Registry;->unlockRemoteSubscriptions()V

    goto/16 :goto_0

    .line 113
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;->isVaildHeaders()Z

    move-result v2

    if-nez v2, :cond_3

    .line 114
    sget-object v2, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v3, "Subscription failed, invalid or missing (SID, Timeout) response headers"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 116
    new-instance v3, Lorg/teleal/cling/protocol/sync/SendingSubscribe$4;

    invoke-direct {v3, p0, v1}, Lorg/teleal/cling/protocol/sync/SendingSubscribe$4;-><init>(Lorg/teleal/cling/protocol/sync/SendingSubscribe;Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;)V

    .line 115
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 140
    .end local v0    # "response":Lorg/teleal/cling/model/message/StreamResponseMessage;
    .end local v1    # "responseMessage":Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;
    :catchall_0
    move-exception v2

    .line 141
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/registry/Registry;->unlockRemoteSubscriptions()V

    .line 142
    throw v2

    .line 124
    .restart local v0    # "response":Lorg/teleal/cling/model/message/StreamResponseMessage;
    .restart local v1    # "responseMessage":Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;
    :cond_3
    :try_start_3
    sget-object v2, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Subscription established, adding to registry, response was: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->setSubscriptionId(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;->getSubscriptionDurationSeconds()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->setActualSubscriptionDurationSeconds(I)V

    .line 128
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    iget-object v3, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v2, v3}, Lorg/teleal/cling/registry/Registry;->addRemoteSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V

    .line 130
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 131
    new-instance v3, Lorg/teleal/cling/protocol/sync/SendingSubscribe$5;

    invoke-direct {v3, p0}, Lorg/teleal/cling/protocol/sync/SendingSubscribe$5;-><init>(Lorg/teleal/cling/protocol/sync/SendingSubscribe;)V

    .line 130
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method
