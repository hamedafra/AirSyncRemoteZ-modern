.class public Lorg/teleal/cling/model/message/gena/OutgoingSubscribeRequestMessage;
.super Lorg/teleal/cling/model/message/StreamRequestMessage;
.source "OutgoingSubscribeRequestMessage.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/gena/RemoteGENASubscription;Ljava/util/List;)V
    .locals 4
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/gena/RemoteGENASubscription;",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "callbackURLs":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    sget-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getEventSubscriptionURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    .line 40
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 41
    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CALLBACK:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 42
    new-instance v2, Lorg/teleal/cling/model/message/header/CallbackHeader;

    invoke-direct {v2, p2}, Lorg/teleal/cling/model/message/header/CallbackHeader;-><init>(Ljava/util/List;)V

    .line 40
    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 45
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 46
    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 47
    new-instance v2, Lorg/teleal/cling/model/message/header/NTEventHeader;

    invoke-direct {v2}, Lorg/teleal/cling/model/message/header/NTEventHeader;-><init>()V

    .line 45
    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 50
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 51
    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->TIMEOUT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 52
    new-instance v2, Lorg/teleal/cling/model/message/header/TimeoutHeader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getRequestedDurationSeconds()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/TimeoutHeader;-><init>(I)V

    .line 50
    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 54
    return-void
.end method


# virtual methods
.method public hasCallbackURLs()Z
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/OutgoingSubscribeRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CALLBACK:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/CallbackHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/CallbackHeader;

    .line 59
    .local v0, "callbackHeader":Lorg/teleal/cling/model/message/header/CallbackHeader;
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/CallbackHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
