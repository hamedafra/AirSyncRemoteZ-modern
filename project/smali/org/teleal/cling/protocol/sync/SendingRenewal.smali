.class public Lorg/teleal/cling/protocol/sync/SendingRenewal;
.super Lorg/teleal/cling/protocol/SendingSync;
.source "SendingRenewal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/SendingSync",
        "<",
        "Lorg/teleal/cling/model/message/gena/OutgoingRenewalRequestMessage;",
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
    .line 44
    const-class v0, Lorg/teleal/cling/protocol/sync/SendingRenewal;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
    .locals 1
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .prologue
    .line 49
    new-instance v0, Lorg/teleal/cling/model/message/gena/OutgoingRenewalRequestMessage;

    invoke-direct {v0, p2}, Lorg/teleal/cling/model/message/gena/OutgoingRenewalRequestMessage;-><init>(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/protocol/SendingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 50
    iput-object p2, p0, Lorg/teleal/cling/protocol/sync/SendingRenewal;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .line 51
    return-void
.end method


# virtual methods
.method protected bridge synthetic executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingRenewal;->executeSync()Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected executeSync()Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;
    .locals 5

    .prologue
    .line 54
    sget-object v2, Lorg/teleal/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending subscription renewal request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingRenewal;->getInputMessage()Lorg/teleal/cling/model/message/StreamRequestMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingRenewal;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v2

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingRenewal;->getInputMessage()Lorg/teleal/cling/model/message/StreamRequestMessage;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0

    .line 58
    .local v0, "response":Lorg/teleal/cling/model/message/StreamResponseMessage;
    if-nez v0, :cond_0

    .line 59
    sget-object v2, Lorg/teleal/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    const-string v3, "Subscription renewal failed, no response received"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingRenewal;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    iget-object v3, p0, Lorg/teleal/cling/protocol/sync/SendingRenewal;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v2, v3}, Lorg/teleal/cling/registry/Registry;->removeRemoteSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V

    .line 61
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingRenewal;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 62
    new-instance v3, Lorg/teleal/cling/protocol/sync/SendingRenewal$1;

    invoke-direct {v3, p0}, Lorg/teleal/cling/protocol/sync/SendingRenewal$1;-><init>(Lorg/teleal/cling/protocol/sync/SendingRenewal;)V

    .line 61
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    const/4 v1, 0x0

    .line 89
    :goto_0
    return-object v1

    .line 71
    :cond_0
    new-instance v1, Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-direct {v1, v0}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;-><init>(Lorg/teleal/cling/model/message/StreamResponseMessage;)V

    .line 73
    .local v1, "responseMessage":Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    sget-object v2, Lorg/teleal/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Subscription renewal failed, response was: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingRenewal;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    iget-object v3, p0, Lorg/teleal/cling/protocol/sync/SendingRenewal;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v2, v3}, Lorg/teleal/cling/registry/Registry;->removeRemoteSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V

    .line 76
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingRenewal;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 77
    new-instance v3, Lorg/teleal/cling/protocol/sync/SendingRenewal$2;

    invoke-direct {v3, p0, v1}, Lorg/teleal/cling/protocol/sync/SendingRenewal$2;-><init>(Lorg/teleal/cling/protocol/sync/SendingRenewal;Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;)V

    .line 76
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 84
    :cond_1
    sget-object v2, Lorg/teleal/cling/protocol/sync/SendingRenewal;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Subscription renewed, updating in registry, response was: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingRenewal;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;->getSubscriptionDurationSeconds()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->setActualSubscriptionDurationSeconds(I)V

    .line 86
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingRenewal;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    iget-object v3, p0, Lorg/teleal/cling/protocol/sync/SendingRenewal;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v2, v3}, Lorg/teleal/cling/registry/Registry;->updateRemoteSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V

    goto :goto_0
.end method
