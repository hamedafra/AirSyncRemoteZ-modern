.class public Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;
.super Lorg/teleal/cling/protocol/ReceivingSync;
.source "ReceivingSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/ReceivingSync",
        "<",
        "Lorg/teleal/cling/model/message/StreamRequestMessage;",
        "Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 0
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "inputMessage"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/protocol/ReceivingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 63
    return-void
.end method


# virtual methods
.method protected bridge synthetic executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->executeSync()Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected executeSync()Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;
    .locals 5

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v3

    .line 69
    const-class v4, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;

    .line 70
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v2

    .line 68
    invoke-interface {v3, v4, v2}, Lorg/teleal/cling/registry/Registry;->getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;

    .line 73
    .local v1, "resource":Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;
    if-nez v1, :cond_0

    .line 74
    sget-object v2, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No local resource found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 75
    const/4 v2, 0x0

    .line 96
    :goto_0
    return-object v2

    .line 78
    :cond_0
    sget-object v3, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Found local event subscription matching relative request URI: "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v1}, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;->getModel()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/meta/LocalService;

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;-><init>(Lorg/teleal/cling/model/message/StreamRequestMessage;Lorg/teleal/cling/model/meta/LocalService;)V

    .line 84
    .local v0, "requestMessage":Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;->hasNotificationHeader()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;->getCallbackURLs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 86
    :cond_1
    sget-object v2, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Subscription ID and NT or Callback in subscribe request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 87
    new-instance v2, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v3, Lorg/teleal/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 91
    invoke-virtual {v1}, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;->getModel()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/LocalService;

    invoke-virtual {p0, v2, v0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->processRenewal(Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    move-result-object v2

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;->hasNotificationHeader()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;->getCallbackURLs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 93
    invoke-virtual {v1}, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;->getModel()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/LocalService;

    invoke-virtual {p0, v2, v0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->processNewSubscription(Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    move-result-object v2

    goto/16 :goto_0

    .line 95
    :cond_4
    sget-object v2, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No subscription ID, no NT or Callback, neither subscription or renewal: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 96
    new-instance v2, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v3, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    goto/16 :goto_0
.end method

.method protected processNewSubscription(Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;
    .locals 5
    .param p1, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .param p2, "requestMessage"    # Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;

    .prologue
    .line 125
    invoke-virtual {p2}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;->getCallbackURLs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 126
    sget-object v2, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Missing or invalid Callback URLs in subscribe request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 127
    new-instance v2, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v3, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    .line 161
    :goto_0
    return-object v2

    .line 130
    :cond_0
    invoke-virtual {p2}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;->hasNotificationHeader()Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    sget-object v2, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Missing or invalid NT header in subscribe request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 132
    new-instance v2, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v3, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p2}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;->getRequestedTimeoutSeconds()Ljava/lang/Integer;

    move-result-object v1

    .line 138
    .local v1, "timeoutSeconds":Ljava/lang/Integer;
    :try_start_0
    new-instance v2, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe$1;

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;->getCallbackURLs()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, p1, v1, v3}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe$1;-><init>(Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V

    iput-object v2, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    sget-object v2, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding subscription to registry: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    iget-object v3, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-interface {v2, v3}, Lorg/teleal/cling/registry/Registry;->addLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)V

    .line 160
    sget-object v2, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v3, "Returning subscription response, waiting to send initial event"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 161
    new-instance v2, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    iget-object v3, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/teleal/cling/model/gena/LocalGENASubscription;)V

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t create local subscription to service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 154
    new-instance v2, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v3, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    goto/16 :goto_0
.end method

.method protected processRenewal(Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;
    .locals 3
    .param p1, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .param p2, "requestMessage"    # Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/teleal/cling/registry/Registry;->getLocalSubscription(Ljava/lang/String;)Lorg/teleal/cling/model/gena/LocalGENASubscription;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    .line 107
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid subscription ID for renewal request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 109
    new-instance v0, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    .line 118
    :goto_0
    return-object v0

    .line 112
    :cond_0
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Renewing subscription: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;->getRequestedTimeoutSeconds()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->setSubscriptionDuration(Ljava/lang/Integer;)V

    .line 114
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-interface {v0, v1}, Lorg/teleal/cling/registry/Registry;->updateLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    iget-object v1, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/teleal/cling/model/gena/LocalGENASubscription;)V

    goto :goto_0

    .line 117
    :cond_1
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subscription went away before it could be renewed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 118
    new-instance v0, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    goto :goto_0
.end method

.method public responseException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 199
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Response could not be send to subscriber, removing local GENA subscription: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-interface {v0, v1}, Lorg/teleal/cling/registry/Registry;->removeLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Z

    goto :goto_0
.end method

.method public responseSent(Lorg/teleal/cling/model/message/StreamResponseMessage;)V
    .locals 4
    .param p1, "responseMessage"    # Lorg/teleal/cling/model/message/StreamResponseMessage;

    .prologue
    const-wide/16 v2, 0x0

    .line 166
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    if-eqz p1, :cond_2

    .line 168
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getCurrentSequence()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 176
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v1, "Establishing subscription"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->registerOnService()V

    .line 178
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->establish()V

    .line 180
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v1, "Response to subscription sent successfully, now sending initial event asynchronously"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-interface {v1, v2}, Lorg/teleal/cling/protocol/ProtocolFactory;->createSendingEvent(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingEvent;

    move-result-object v1

    .line 181
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v0}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getCurrentSequence()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 186
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v1, "Subscription request\'s response aborted, not sending initial event"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 187
    if-nez p1, :cond_3

    .line 188
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    const-string v1, "Reason: No response at all from subscriber"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 192
    :goto_1
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing subscription from registry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->subscription:Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-interface {v0, v1}, Lorg/teleal/cling/registry/Registry;->removeLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Z

    goto/16 :goto_0

    .line 190
    :cond_3
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1
.end method
