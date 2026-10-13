.class public Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;
.super Lorg/teleal/cling/model/message/StreamRequestMessage;
.source "IncomingUnsubscribeRequestMessage.java"


# instance fields
.field private final service:Lorg/teleal/cling/model/meta/LocalService;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/StreamRequestMessage;Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 0
    .param p1, "source"    # Lorg/teleal/cling/model/message/StreamRequestMessage;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/LocalService;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 36
    iput-object p2, p0, Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->service:Lorg/teleal/cling/model/meta/LocalService;

    .line 37
    return-void
.end method


# virtual methods
.method public getService()Lorg/teleal/cling/model/meta/LocalService;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->service:Lorg/teleal/cling/model/meta/LocalService;

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    .line 53
    .local v0, "header":Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCallbackHeader()Z
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CALLBACK:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/teleal/cling/model/message/header/CallbackHeader;

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNotificationHeader()Z
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/IncomingUnsubscribeRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v2, Lorg/teleal/cling/model/message/header/NTEventHeader;

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
