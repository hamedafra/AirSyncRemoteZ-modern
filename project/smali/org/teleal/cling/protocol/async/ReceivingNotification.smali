.class public Lorg/teleal/cling/protocol/async/ReceivingNotification;
.super Lorg/teleal/cling/protocol/ReceivingAsync;
.source "ReceivingNotification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/ReceivingAsync",
        "<",
        "Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lorg/teleal/cling/protocol/async/ReceivingNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

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
            "Lorg/teleal/cling/model/message/UpnpRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "inputMessage":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<Lorg/teleal/cling/model/message/UpnpRequest;>;"
    new-instance v0, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;

    invoke-direct {v0, p2}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/protocol/ReceivingAsync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/UpnpMessage;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 9

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;

    invoke-virtual {v6}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getUDN()Lorg/teleal/cling/model/types/UDN;

    move-result-object v4

    .line 84
    .local v4, "udn":Lorg/teleal/cling/model/types/UDN;
    if-nez v4, :cond_1

    .line 85
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring notification message without UDN: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    new-instance v2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;

    invoke-direct {v2, v6}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;)V

    .line 90
    .local v2, "rdIdentity":Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Received device notification: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 94
    :try_start_0
    new-instance v1, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/meta/RemoteDevice;-><init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)V
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v1, "rd":Lorg/teleal/cling/model/meta/RemoteDevice;
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;

    invoke-virtual {v6}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->isAliveMessage()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 105
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Received device ALIVE advertisement, descriptor location is: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v6

    if-nez v6, :cond_2

    .line 108
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring message without location URL header: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v1    # "rd":Lorg/teleal/cling/model/meta/RemoteDevice;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Lorg/teleal/cling/model/ValidationException;
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Validation errors of device during discovery: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Lorg/teleal/cling/model/ValidationException;->getErrors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/ValidationError;

    .line 98
    .local v5, "validationError":Lorg/teleal/cling/model/ValidationError;
    sget-object v7, Lorg/teleal/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    invoke-virtual {v5}, Lorg/teleal/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    .end local v0    # "ex":Lorg/teleal/cling/model/ValidationException;
    .end local v5    # "validationError":Lorg/teleal/cling/model/ValidationError;
    .restart local v1    # "rd":Lorg/teleal/cling/model/meta/RemoteDevice;
    :cond_2
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_3

    .line 113
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring message without max-age header: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_3
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingNotification;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/teleal/cling/registry/Registry;->update(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 118
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Remote device was already known: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_4
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingNotification;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/UpnpServiceConfiguration;->getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 125
    new-instance v7, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingNotification;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    .line 124
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 128
    :cond_5
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;

    invoke-virtual {v6}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->isByeByeMessage()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 130
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    const-string v7, "Received device BYEBYE advertisement"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingNotification;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/teleal/cling/registry/Registry;->removeDevice(Lorg/teleal/cling/model/meta/RemoteDevice;)Z

    move-result v3

    .line 132
    .local v3, "removed":Z
    if-eqz v3, :cond_0

    .line 133
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Removed remote device from registry: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    .end local v3    # "removed":Z
    :cond_6
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingNotification;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring unknown notification message: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingNotification;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
