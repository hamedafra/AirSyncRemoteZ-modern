.class public Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;
.super Lorg/teleal/cling/protocol/ReceivingSync;
.source "ReceivingUnsubscribe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/ReceivingSync",
        "<",
        "Lorg/teleal/cling/model/message/StreamRequestMessage;",
        "Lorg/teleal/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 0
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "inputMessage"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/protocol/ReceivingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v4

    .line 48
    const-class v6, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;

    .line 49
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v3}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v3

    .line 47
    invoke-interface {v4, v6, v3}, Lorg/teleal/cling/registry/Registry;->getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;

    .line 52
    .local v1, "resource":Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;
    if-nez v1, :cond_0

    .line 53
    sget-object v3, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "No local resource found: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v3, v5

    .line 84
    :goto_0
    return-object v3

    .line 57
    :cond_0
    sget-object v4, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "Found local event subscription matching relative request URI: "

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v3}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 60
    new-instance v0, Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v1}, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;->getModel()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/meta/LocalService;

    invoke-direct {v0, v3, v4}, Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;-><init>(Lorg/teleal/cling/model/message/StreamRequestMessage;Lorg/teleal/cling/model/meta/LocalService;)V

    .line 63
    .local v0, "requestMessage":Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 64
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->hasNotificationHeader()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->hasCallbackHeader()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    :cond_1
    sget-object v3, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Subscription ID and NT or Callback in unsubcribe request: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 66
    new-instance v3, Lorg/teleal/cling/model/message/StreamResponseMessage;

    sget-object v4, Lorg/teleal/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v3, v4}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v3

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->getSubscriptionId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/teleal/cling/registry/Registry;->getLocalSubscription(Ljava/lang/String;)Lorg/teleal/cling/model/gena/LocalGENASubscription;

    move-result-object v2

    .line 72
    .local v2, "subscription":Lorg/teleal/cling/model/gena/LocalGENASubscription;
    if-nez v2, :cond_3

    .line 73
    sget-object v3, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid subscription ID for unsubscribe request: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 74
    new-instance v3, Lorg/teleal/cling/model/message/StreamResponseMessage;

    sget-object v4, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v3, v4}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    goto/16 :goto_0

    .line 77
    :cond_3
    sget-object v3, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Unregistering subscription: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/teleal/cling/registry/Registry;->removeLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 79
    invoke-virtual {v2, v5}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->end(Lorg/teleal/cling/model/gena/CancelReason;)V

    .line 84
    :goto_1
    new-instance v3, Lorg/teleal/cling/model/message/StreamResponseMessage;

    sget-object v4, Lorg/teleal/cling/model/message/UpnpResponse$Status;->OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v3, v4}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    goto/16 :goto_0

    .line 81
    :cond_4
    sget-object v3, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;->log:Ljava/util/logging/Logger;

    const-string v4, "Subscription was already removed from registry"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1
.end method
