.class public Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;
.super Lorg/teleal/cling/model/message/StreamResponseMessage;
.source "OutgoingSubscribeResponseMessage.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/gena/LocalGENASubscription;)V
    .locals 4
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/LocalGENASubscription;

    .prologue
    .line 39
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 41
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/ServerHeader;

    invoke-direct {v2}, Lorg/teleal/cling/model/message/header/ServerHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 42
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 43
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->TIMEOUT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/TimeoutHeader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getActualDurationSeconds()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/TimeoutHeader;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V
    .locals 0
    .param p1, "status"    # Lorg/teleal/cling/model/message/UpnpResponse$Status;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    .line 36
    return-void
.end method
