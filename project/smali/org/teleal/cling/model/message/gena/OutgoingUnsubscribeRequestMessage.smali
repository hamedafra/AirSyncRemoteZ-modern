.class public Lorg/teleal/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;
.super Lorg/teleal/cling/model/message/StreamRequestMessage;
.source "OutgoingUnsubscribeRequestMessage.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
    .locals 4
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .prologue
    .line 33
    sget-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getEventSubscriptionURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    .line 35
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingUnsubscribeRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 36
    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 37
    new-instance v2, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 39
    return-void
.end method
