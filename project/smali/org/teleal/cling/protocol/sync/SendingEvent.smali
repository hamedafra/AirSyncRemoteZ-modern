.class public Lorg/teleal/cling/protocol/sync/SendingEvent;
.super Lorg/teleal/cling/protocol/SendingSync;
.source "SendingEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/SendingSync",
        "<",
        "Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;",
        "Lorg/teleal/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

.field protected final requestMessages:[Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;

.field protected final subscriptionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/teleal/cling/protocol/sync/SendingEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/gena/LocalGENASubscription;)V
    .locals 5
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "subscription"    # Lorg/teleal/cling/model/gena/LocalGENASubscription;

    .prologue
    .line 51
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lorg/teleal/cling/protocol/SendingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 55
    invoke-virtual {p2}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingEvent;->subscriptionId:Ljava/lang/String;

    .line 57
    invoke-virtual {p2}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getCallbackURLs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;

    iput-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "i":I
    invoke-virtual {p2}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getCallbackURLs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-virtual {p2}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getCurrentSequence()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingEvent;->currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 69
    invoke-virtual {p2}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->incrementSequence()V

    .line 70
    return-void

    .line 59
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 60
    .local v1, "url":Ljava/net/URL;
    iget-object v3, p0, Lorg/teleal/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;

    new-instance v4, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;

    invoke-direct {v4, p2, v1}, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;-><init>(Lorg/teleal/cling/model/gena/GENASubscription;Ljava/net/URL;)V

    aput-object v4, v3, v0

    .line 61
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingEvent;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpServiceConfiguration;->getGenaEventProcessor()Lorg/teleal/cling/transport/spi/GENAEventProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/teleal/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;

    aget-object v4, v4, v0

    invoke-interface {v3, v4}, Lorg/teleal/cling/transport/spi/GENAEventProcessor;->writeBody(Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 10

    .prologue
    .line 74
    sget-object v2, Lorg/teleal/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending event for subscription: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/teleal/cling/protocol/sync/SendingEvent;->subscriptionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "lastResponse":Lorg/teleal/cling/model/message/StreamResponseMessage;
    iget-object v3, p0, Lorg/teleal/cling/protocol/sync/SendingEvent;->requestMessages:[Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 95
    return-object v0

    .line 78
    :cond_0
    aget-object v1, v3, v2

    .line 80
    .local v1, "requestMessage":Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;
    iget-object v5, p0, Lorg/teleal/cling/protocol/sync/SendingEvent;->currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v5}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->getValue()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 81
    sget-object v5, Lorg/teleal/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sending initial event message to callback URL: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    :goto_1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingEvent;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v5

    invoke-interface {v5}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0

    .line 89
    sget-object v5, Lorg/teleal/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Received event callback response: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    sget-object v5, Lorg/teleal/cling/protocol/sync/SendingEvent;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sending event message \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/teleal/cling/protocol/sync/SendingEvent;->currentSequence:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' to callback URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1
.end method
