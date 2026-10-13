.class public Lorg/teleal/cling/protocol/ProtocolFactoryImpl;
.super Ljava/lang/Object;
.source "ProtocolFactoryImpl.java"

# interfaces
.implements Lorg/teleal/cling/protocol/ProtocolFactory;


# static fields
.field private static synthetic $SWITCH_TABLE$org$teleal$cling$model$message$UpnpRequest$Method:[I

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final upnpService:Lorg/teleal/cling/UpnpService;


# direct methods
.method static synthetic $SWITCH_TABLE$org$teleal$cling$model$message$UpnpRequest$Method()[I
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->$SWITCH_TABLE$org$teleal$cling$model$message$UpnpRequest$Method:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->values()[Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->MSEARCH:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->POST:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->$SWITCH_TABLE$org$teleal$cling$model$message$UpnpRequest$Method:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/teleal/cling/protocol/ProtocolFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;)V
    .locals 3
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating ProtocolFactory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->upnpService:Lorg/teleal/cling/UpnpService;

    .line 69
    return-void
.end method


# virtual methods
.method public createReceivingAsync(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)Lorg/teleal/cling/protocol/ReceivingAsync;
    .locals 6
    .param p1, "message"    # Lorg/teleal/cling/model/message/IncomingDatagramMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/protocol/ProtocolCreationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 76
    sget-object v2, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Creating protocol for incoming asynchronous: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v2

    instance-of v2, v2, Lorg/teleal/cling/model/message/UpnpRequest;

    if-eqz v2, :cond_3

    .line 79
    move-object v0, p1

    .line 81
    .local v0, "incomingRequest":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<Lorg/teleal/cling/model/message/UpnpRequest;>;"
    invoke-static {}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->$SWITCH_TABLE$org$teleal$cling$model$message$UpnpRequest$Method()[I

    move-result-object v4

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/UpnpRequest;->getMethod()Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 96
    .end local v0    # "incomingRequest":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<Lorg/teleal/cling/model/message/UpnpRequest;>;"
    :cond_0
    new-instance v2, Lorg/teleal/cling/protocol/ProtocolCreationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Protocol for incoming datagram message not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/protocol/ProtocolCreationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    .restart local v0    # "incomingRequest":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<Lorg/teleal/cling/model/message/UpnpRequest;>;"
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->isByeBye(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->isSupportedServiceAdvertisement(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    :cond_1
    new-instance v2, Lorg/teleal/cling/protocol/async/ReceivingNotification;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/teleal/cling/protocol/async/ReceivingNotification;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V

    .line 92
    .end local v0    # "incomingRequest":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<Lorg/teleal/cling/model/message/UpnpRequest;>;"
    :goto_0
    return-object v2

    .restart local v0    # "incomingRequest":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<Lorg/teleal/cling/model/message/UpnpRequest;>;"
    :cond_2
    move-object v2, v3

    .line 84
    goto :goto_0

    .line 86
    :pswitch_1
    new-instance v2, Lorg/teleal/cling/protocol/async/ReceivingSearch;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V

    goto :goto_0

    .line 89
    .end local v0    # "incomingRequest":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<Lorg/teleal/cling/model/message/UpnpRequest;>;"
    :cond_3
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v2

    instance-of v2, v2, Lorg/teleal/cling/model/message/UpnpResponse;

    if-eqz v2, :cond_0

    .line 90
    move-object v1, p1

    .line 92
    .local v1, "incomingResponse":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<Lorg/teleal/cling/model/message/UpnpResponse;>;"
    invoke-virtual {p0, v1}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->isSupportedServiceAdvertisement(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    new-instance v3, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V

    :cond_4
    move-object v2, v3

    .line 92
    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createReceivingSync(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/protocol/ReceivingSync;
    .locals 3
    .param p1, "message"    # Lorg/teleal/cling/model/message/StreamRequestMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/protocol/ProtocolCreationException;
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating protocol for incoming synchronous: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpRequest;->getMethod()Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 152
    :goto_0
    return-object v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->getNamespace()Lorg/teleal/cling/model/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/Namespace;->isControlPath(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpRequest;->getMethod()Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->POST:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    new-instance v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/protocol/sync/ReceivingAction;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->getNamespace()Lorg/teleal/cling/model/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/Namespace;->isEventSubscriptionPath(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpRequest;->getMethod()Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    new-instance v0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpRequest;->getMethod()Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    new-instance v0, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->getNamespace()Lorg/teleal/cling/model/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/Namespace;->isEventCallbackPath(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpRequest;->getMethod()Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    new-instance v0, Lorg/teleal/cling/protocol/sync/ReceivingEvent;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/protocol/sync/ReceivingEvent;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    goto/16 :goto_0

    .line 156
    :cond_4
    new-instance v0, Lorg/teleal/cling/protocol/ProtocolCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Protocol for message type not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/protocol/ProtocolCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSendingAction(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)Lorg/teleal/cling/protocol/sync/SendingAction;
    .locals 2
    .param p1, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "controlURL"    # Ljava/net/URL;

    .prologue
    .line 172
    new-instance v0, Lorg/teleal/cling/protocol/sync/SendingAction;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/teleal/cling/protocol/sync/SendingAction;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)V

    return-object v0
.end method

.method public createSendingEvent(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingEvent;
    .locals 2
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/LocalGENASubscription;

    .prologue
    .line 188
    new-instance v0, Lorg/teleal/cling/protocol/sync/SendingEvent;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/protocol/sync/SendingEvent;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/gena/LocalGENASubscription;)V

    return-object v0
.end method

.method public createSendingNotificationAlive(Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/protocol/async/SendingNotificationAlive;
    .locals 2
    .param p1, "localDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 160
    new-instance v0, Lorg/teleal/cling/protocol/async/SendingNotificationAlive;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/protocol/async/SendingNotificationAlive;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/LocalDevice;)V

    return-object v0
.end method

.method public createSendingNotificationByebye(Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/protocol/async/SendingNotificationByebye;
    .locals 2
    .param p1, "localDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 164
    new-instance v0, Lorg/teleal/cling/protocol/async/SendingNotificationByebye;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/protocol/async/SendingNotificationByebye;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/LocalDevice;)V

    return-object v0
.end method

.method public createSendingRenewal(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingRenewal;
    .locals 2
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .prologue
    .line 180
    new-instance v0, Lorg/teleal/cling/protocol/sync/SendingRenewal;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/protocol/sync/SendingRenewal;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V

    return-object v0
.end method

.method public createSendingSearch(Lorg/teleal/cling/model/message/header/UpnpHeader;I)Lorg/teleal/cling/protocol/async/SendingSearch;
    .locals 2
    .param p1, "searchTarget"    # Lorg/teleal/cling/model/message/header/UpnpHeader;
    .param p2, "mxSeconds"    # I

    .prologue
    .line 168
    new-instance v0, Lorg/teleal/cling/protocol/async/SendingSearch;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/teleal/cling/protocol/async/SendingSearch;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/header/UpnpHeader;I)V

    return-object v0
.end method

.method public createSendingSubscribe(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingSubscribe;
    .locals 2
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .prologue
    .line 176
    new-instance v0, Lorg/teleal/cling/protocol/sync/SendingSubscribe;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/protocol/sync/SendingSubscribe;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V

    return-object v0
.end method

.method public createSendingUnsubscribe(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;
    .locals 2
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .prologue
    .line 184
    new-instance v0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V

    return-object v0
.end method

.method public getUpnpService()Lorg/teleal/cling/UpnpService;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->upnpService:Lorg/teleal/cling/UpnpService;

    return-object v0
.end method

.method protected isByeBye(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)Z
    .locals 3
    .param p1, "message"    # Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    .prologue
    .line 102
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "ntsHeader":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Lorg/teleal/cling/model/types/NotificationSubtype;->BYEBYE:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/NotificationSubtype;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isSupportedServiceAdvertisement(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)Z
    .locals 10
    .param p1, "message"    # Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpServiceConfiguration;->getExclusiveServiceTypes()[Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v2

    .line 108
    .local v2, "exclusiveServiceTypes":[Lorg/teleal/cling/model/types/ServiceType;
    if-nez v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v5

    .line 109
    :cond_1
    array-length v7, v2

    if-nez v7, :cond_2

    move v5, v6

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v7

    sget-object v8, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v8}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->getHttpName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "usnHeader":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 115
    :try_start_0
    invoke-static {v4}, Lorg/teleal/cling/model/types/NamedServiceType;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/NamedServiceType;

    move-result-object v3

    .line 116
    .local v3, "nst":Lorg/teleal/cling/model/types/NamedServiceType;
    array-length v8, v2
    :try_end_0
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v5

    :goto_1
    if-lt v7, v8, :cond_3

    .line 123
    .end local v3    # "nst":Lorg/teleal/cling/model/types/NamedServiceType;
    :goto_2
    sget-object v6, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Service advertisement not supported, dropping it: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .restart local v3    # "nst":Lorg/teleal/cling/model/types/NamedServiceType;
    :cond_3
    :try_start_1
    aget-object v1, v2, v7

    .line 117
    .local v1, "exclusiveServiceType":Lorg/teleal/cling/model/types/ServiceType;
    invoke-virtual {v3}, Lorg/teleal/cling/model/types/NamedServiceType;->getServiceType()Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/teleal/cling/model/types/ServiceType;->implementsVersion(Lorg/teleal/cling/model/types/ServiceType;)Z
    :try_end_1
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    if-eqz v9, :cond_4

    move v5, v6

    .line 118
    goto :goto_0

    .line 116
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 120
    .end local v1    # "exclusiveServiceType":Lorg/teleal/cling/model/types/ServiceType;
    .end local v3    # "nst":Lorg/teleal/cling/model/types/NamedServiceType;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Lorg/teleal/cling/model/types/InvalidValueException;
    sget-object v6, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Not a named service type header value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_2
.end method
