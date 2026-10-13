.class public interface abstract Lorg/teleal/cling/protocol/ProtocolFactory;
.super Ljava/lang/Object;
.source "ProtocolFactory.java"


# virtual methods
.method public abstract createReceivingAsync(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)Lorg/teleal/cling/protocol/ReceivingAsync;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/protocol/ProtocolCreationException;
        }
    .end annotation
.end method

.method public abstract createReceivingSync(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/protocol/ReceivingSync;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/protocol/ProtocolCreationException;
        }
    .end annotation
.end method

.method public abstract createSendingAction(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)Lorg/teleal/cling/protocol/sync/SendingAction;
.end method

.method public abstract createSendingEvent(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingEvent;
.end method

.method public abstract createSendingNotificationAlive(Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/protocol/async/SendingNotificationAlive;
.end method

.method public abstract createSendingNotificationByebye(Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/protocol/async/SendingNotificationByebye;
.end method

.method public abstract createSendingRenewal(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingRenewal;
.end method

.method public abstract createSendingSearch(Lorg/teleal/cling/model/message/header/UpnpHeader;I)Lorg/teleal/cling/protocol/async/SendingSearch;
.end method

.method public abstract createSendingSubscribe(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingSubscribe;
.end method

.method public abstract createSendingUnsubscribe(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;
.end method

.method public abstract getUpnpService()Lorg/teleal/cling/UpnpService;
.end method
