.class public Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;
.super Lorg/teleal/cling/model/message/StreamRequestMessage;
.source "OutgoingEventRequestMessage.java"


# instance fields
.field private final stateVariableValues:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/state/StateVariableValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/gena/GENASubscription;Ljava/net/URL;)V
    .locals 2
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/GENASubscription;
    .param p2, "callbackURL"    # Ljava/net/URL;

    .prologue
    .line 62
    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/GENASubscription;->getCurrentSequence()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v0

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/GENASubscription;->getCurrentValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;-><init>(Lorg/teleal/cling/model/gena/GENASubscription;Ljava/net/URL;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/util/Collection;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/gena/GENASubscription;Ljava/net/URL;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/util/Collection;)V
    .locals 6
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/GENASubscription;
    .param p2, "callbackURL"    # Ljava/net/URL;
    .param p3, "sequence"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/gena/GENASubscription;",
            "Ljava/net/URL;",
            "Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/state/StateVariableValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/state/StateVariableValue;>;"
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-direct {v0, v1, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest;)V

    .line 50
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    invoke-direct {v2}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 51
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/NTEventHeader;

    invoke-direct {v2}, Lorg/teleal/cling/model/message/header/NTEventHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 52
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/NTSHeader;

    sget-object v3, Lorg/teleal/cling/model/types/NotificationSubtype;->PROPCHANGE:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/NTSHeader;-><init>(Lorg/teleal/cling/model/types/NotificationSubtype;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 53
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/GENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 56
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SEQ:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/EventSequenceHeader;

    invoke-virtual {p3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/teleal/cling/model/message/header/EventSequenceHeader;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 58
    iput-object p4, p0, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;->stateVariableValues:Ljava/util/Collection;

    .line 59
    return-void
.end method


# virtual methods
.method public getStateVariableValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/state/StateVariableValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;->stateVariableValues:Ljava/util/Collection;

    return-object v0
.end method
