.class public Lorg/teleal/cling/model/message/gena/OutgoingRenewalRequestMessage;
.super Lorg/teleal/cling/model/message/StreamRequestMessage;
.source "OutgoingRenewalRequestMessage.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
    .locals 4
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .prologue
    .line 34
    sget-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getEventSubscriptionURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    .line 36
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingRenewalRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 37
    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 38
    new-instance v2, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 41
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingRenewalRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 42
    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->TIMEOUT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 43
    new-instance v2, Lorg/teleal/cling/model/message/header/TimeoutHeader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getRequestedDurationSeconds()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/TimeoutHeader;-><init>(I)V

    .line 41
    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 46
    return-void
.end method
