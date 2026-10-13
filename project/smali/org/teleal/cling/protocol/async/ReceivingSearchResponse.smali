.class public Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;
.super Lorg/teleal/cling/protocol/ReceivingAsync;
.source "ReceivingSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/ReceivingAsync",
        "<",
        "Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    .locals 1
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/UpnpService;",
            "Lorg/teleal/cling/model/message/IncomingDatagramMessage",
            "<",
            "Lorg/teleal/cling/model/message/UpnpResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "inputMessage":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<Lorg/teleal/cling/model/message/UpnpResponse;>;"
    new-instance v0, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;

    invoke-direct {v0, p2}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/protocol/ReceivingAsync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/UpnpMessage;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 8

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->isSearchResponseMessage()Z

    move-result v5

    if-nez v5, :cond_1

    .line 55
    sget-object v5, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring invalid search response message: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getRootDeviceUDN()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    .line 60
    .local v3, "udn":Lorg/teleal/cling/model/types/UDN;
    if-nez v3, :cond_2

    .line 61
    sget-object v5, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring search response message without UDN: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    new-instance v2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;

    invoke-direct {v2, v5}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;)V

    .line 66
    .local v2, "rdIdentity":Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    sget-object v5, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Received device search response: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v5

    invoke-interface {v5}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/teleal/cling/registry/Registry;->update(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    sget-object v5, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remote device was already known: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_3
    :try_start_0
    new-instance v1, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/meta/RemoteDevice;-><init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)V
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .local v1, "rd":Lorg/teleal/cling/model/meta/RemoteDevice;
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v5

    if-nez v5, :cond_4

    .line 85
    sget-object v5, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring message without location URL header: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    .end local v1    # "rd":Lorg/teleal/cling/model/meta/RemoteDevice;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Lorg/teleal/cling/model/ValidationException;
    sget-object v5, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Validation errors of device during discovery: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Lorg/teleal/cling/model/ValidationException;->getErrors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/ValidationError;

    .line 79
    .local v4, "validationError":Lorg/teleal/cling/model/ValidationError;
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    invoke-virtual {v4}, Lorg/teleal/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    .end local v0    # "ex":Lorg/teleal/cling/model/ValidationException;
    .end local v4    # "validationError":Lorg/teleal/cling/model/ValidationError;
    .restart local v1    # "rd":Lorg/teleal/cling/model/meta/RemoteDevice;
    :cond_4
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_5

    .line 90
    sget-object v5, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring message without max-age header: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :cond_5
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v5

    invoke-interface {v5}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v5

    invoke-interface {v5}, Lorg/teleal/cling/UpnpServiceConfiguration;->getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 97
    new-instance v6, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearchResponse;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    .line 96
    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
