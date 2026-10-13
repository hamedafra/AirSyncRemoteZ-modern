.class public Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;
.super Lorg/teleal/cling/protocol/SendingSync;
.source "SendingUnsubscribe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/SendingSync",
        "<",
        "Lorg/teleal/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;",
        "Lorg/teleal/cling/model/message/StreamResponseMessage;",
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
    .line 42
    const-class v0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
    .locals 1
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .prologue
    .line 47
    new-instance v0, Lorg/teleal/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;

    invoke-direct {v0, p2}, Lorg/teleal/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;-><init>(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/protocol/SendingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 48
    iput-object p2, p0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .line 49
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 4

    .prologue
    .line 53
    sget-object v1, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending unsubscribe request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->getInputMessage()Lorg/teleal/cling/model/message/StreamRequestMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v1

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->getInputMessage()Lorg/teleal/cling/model/message/StreamRequestMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0

    .line 58
    .local v0, "response":Lorg/teleal/cling/model/message/StreamResponseMessage;
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v1

    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v1, v2}, Lorg/teleal/cling/registry/Registry;->removeRemoteSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V

    .line 60
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 61
    new-instance v2, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;

    invoke-direct {v2, p0, v0}, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;-><init>(Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;Lorg/teleal/cling/model/message/StreamResponseMessage;)V

    .line 60
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 77
    return-object v0
.end method
