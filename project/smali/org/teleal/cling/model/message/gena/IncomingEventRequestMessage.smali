.class public Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;
.super Lorg/teleal/cling/model/message/StreamRequestMessage;
.source "IncomingEventRequestMessage.java"


# instance fields
.field private final service:Lorg/teleal/cling/model/meta/RemoteService;

.field private final stateVariableValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/state/StateVariableValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/StreamRequestMessage;Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 1
    .param p1, "source"    # Lorg/teleal/cling/model/message/StreamRequestMessage;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/RemoteService;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->stateVariableValues:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->service:Lorg/teleal/cling/model/meta/RemoteService;

    .line 45
    return-void
.end method


# virtual methods
.method public getSequence()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SEQ:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/EventSequenceHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/EventSequenceHeader;

    .line 63
    .local v0, "header":Lorg/teleal/cling/model/message/header/EventSequenceHeader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/EventSequenceHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getService()Lorg/teleal/cling/model/meta/RemoteService;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->service:Lorg/teleal/cling/model/meta/RemoteService;

    return-object v0
.end method

.method public getStateVariableValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/state/StateVariableValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->stateVariableValues:Ljava/util/List;

    return-object v0
.end method

.method public getSubscrptionId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    .line 58
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

.method public hasNotificationHeaders()Z
    .locals 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v2

    sget-object v3, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    .line 71
    .local v0, "ntHeader":Lorg/teleal/cling/model/message/header/UpnpHeader;
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v2

    sget-object v3, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v1

    .line 72
    .local v1, "ntsHeader":Lorg/teleal/cling/model/message/header/UpnpHeader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 72
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasValidNotificationHeaders()Z
    .locals 5

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v2

    sget-object v3, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v4, Lorg/teleal/cling/model/message/header/NTEventHeader;

    invoke-virtual {v2, v3, v4}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/NTEventHeader;

    .line 82
    .local v0, "ntHeader":Lorg/teleal/cling/model/message/header/NTEventHeader;
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v2

    sget-object v3, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v4, Lorg/teleal/cling/model/message/header/NTSHeader;

    invoke-virtual {v2, v3, v4}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/header/NTSHeader;

    .line 83
    .local v1, "ntsHeader":Lorg/teleal/cling/model/message/header/NTSHeader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/NTEventHeader;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 84
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/header/NTSHeader;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/types/NotificationSubtype;

    sget-object v3, Lorg/teleal/cling/model/types/NotificationSubtype;->PROPCHANGE:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v2, v3}, Lorg/teleal/cling/model/types/NotificationSubtype;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/teleal/cling/model/message/StreamRequestMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " SEQUENCE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;->getSequence()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
