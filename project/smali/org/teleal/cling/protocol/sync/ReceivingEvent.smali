.class public Lorg/teleal/cling/protocol/sync/ReceivingEvent;
.super Lorg/teleal/cling/protocol/ReceivingSync;
.source "ReceivingEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/ReceivingSync",
        "<",
        "Lorg/teleal/cling/model/message/StreamRequestMessage;",
        "Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 0
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "inputMessage"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/protocol/ReceivingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 50
    return-void
.end method

.method static synthetic access$1()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->executeSync()Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected executeSync()Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;
    .locals 7

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v4}, Lorg/teleal/cling/model/message/StreamRequestMessage;->isContentTypeTextUDA()Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    sget-object v4, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received without or with invalid Content-Type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v5

    .line 62
    const-class v6, Lorg/teleal/cling/model/resource/ServiceEventCallbackResource;

    .line 63
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v4}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v4

    .line 61
    invoke-interface {v5, v6, v4}, Lorg/teleal/cling/registry/Registry;->getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/resource/ServiceEventCallbackResource;

    .line 66
    .local v2, "resource":Lorg/teleal/cling/model/resource/ServiceEventCallbackResource;
    if-nez v2, :cond_1

    .line 67
    sget-object v4, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No local resource found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 68
    new-instance v4, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v5, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v6, Lorg/teleal/cling/model/message/UpnpResponse$Status;->NOT_FOUND:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v5, v6}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v4, v5}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 133
    :goto_0
    return-object v4

    .line 72
    :cond_1
    new-instance v1, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v2}, Lorg/teleal/cling/model/resource/ServiceEventCallbackResource;->getModel()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/meta/RemoteService;

    invoke-direct {v1, v4, v5}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;-><init>(Lorg/teleal/cling/model/message/StreamRequestMessage;Lorg/teleal/cling/model/meta/RemoteService;)V

    .line 75
    .local v1, "requestMessage":Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;
    invoke-virtual {v1}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getSubscrptionId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 76
    sget-object v4, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Subscription ID missing in event request: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 77
    new-instance v4, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v5, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v6, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v5, v6}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v4, v5}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v1}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->hasValidNotificationHeaders()Z

    move-result v4

    if-nez v4, :cond_3

    .line 81
    sget-object v4, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Missing NT and/or NTS headers in event request: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 82
    new-instance v4, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v5, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v6, Lorg/teleal/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v5, v6}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v4, v5}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v1}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->hasValidNotificationHeaders()Z

    move-result v4

    if-nez v4, :cond_4

    .line 86
    sget-object v4, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid NT and/or NTS headers in event request: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 87
    new-instance v4, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v5, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v6, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v5, v6}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v4, v5}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto/16 :goto_0

    .line 90
    :cond_4
    invoke-virtual {v1}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getSequence()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v4

    if-nez v4, :cond_5

    .line 91
    sget-object v4, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sequence missing in event request: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 92
    new-instance v4, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v5, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v6, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v5, v6}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v4, v5}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto/16 :goto_0

    .line 97
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/UpnpServiceConfiguration;->getGenaEventProcessor()Lorg/teleal/cling/transport/spi/GENAEventProcessor;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/teleal/cling/transport/spi/GENAEventProcessor;->readBody(Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;)V
    :try_end_0
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :try_start_1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/registry/Registry;->lockRemoteSubscriptions()V

    .line 111
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v4

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getSubscrptionId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/teleal/cling/registry/Registry;->getRemoteSubscription(Ljava/lang/String;)Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    move-result-object v3

    .line 113
    .local v3, "subscription":Lorg/teleal/cling/model/gena/RemoteGENASubscription;
    if-nez v3, :cond_6

    .line 114
    sget-object v4, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid subscription ID, no active subscription: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 115
    new-instance v4, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v5, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v6, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v5, v6}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v4, v5}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v5

    invoke-interface {v5}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v5

    invoke-interface {v5}, Lorg/teleal/cling/registry/Registry;->unlockRemoteSubscriptions()V

    goto/16 :goto_0

    .line 99
    .end local v3    # "subscription":Lorg/teleal/cling/model/gena/RemoteGENASubscription;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "ex":Lorg/teleal/cling/transport/spi/UnsupportedDataException;
    sget-object v4, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t read request body, "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 101
    new-instance v4, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    new-instance v5, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v6, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v5, v6}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v4, v5}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto/16 :goto_0

    .line 118
    .end local v0    # "ex":Lorg/teleal/cling/transport/spi/UnsupportedDataException;
    .restart local v3    # "subscription":Lorg/teleal/cling/model/gena/RemoteGENASubscription;
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 119
    new-instance v5, Lorg/teleal/cling/protocol/sync/ReceivingEvent$1;

    invoke-direct {v5, p0, v3, v1}, Lorg/teleal/cling/protocol/sync/ReceivingEvent$1;-><init>(Lorg/teleal/cling/protocol/sync/ReceivingEvent;Lorg/teleal/cling/model/gena/RemoteGENASubscription;Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;)V

    .line 118
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/registry/Registry;->unlockRemoteSubscriptions()V

    .line 133
    new-instance v4, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;

    invoke-direct {v4}, Lorg/teleal/cling/model/message/gena/OutgoingEventResponseMessage;-><init>()V

    goto/16 :goto_0

    .line 129
    .end local v3    # "subscription":Lorg/teleal/cling/model/gena/RemoteGENASubscription;
    :catchall_0
    move-exception v4

    .line 130
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v5

    invoke-interface {v5}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v5

    invoke-interface {v5}, Lorg/teleal/cling/registry/Registry;->unlockRemoteSubscriptions()V

    .line 131
    throw v4
.end method
