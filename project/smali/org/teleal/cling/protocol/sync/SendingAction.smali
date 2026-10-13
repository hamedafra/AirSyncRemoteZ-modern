.class public Lorg/teleal/cling/protocol/sync/SendingAction;
.super Lorg/teleal/cling/protocol/SendingSync;
.source "SendingAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/SendingSync",
        "<",
        "Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;",
        "Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/teleal/cling/protocol/sync/SendingAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)V
    .locals 1
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p3, "controlURL"    # Ljava/net/URL;

    .prologue
    .line 58
    new-instance v0, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;

    invoke-direct {v0, p2, p3}, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/protocol/SendingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 59
    iput-object p2, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    .line 60
    return-void
.end method


# virtual methods
.method protected bridge synthetic executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingAction;->executeSync()Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected executeSync()Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingAction;->getInputMessage()Lorg/teleal/cling/model/message/StreamRequestMessage;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/protocol/sync/SendingAction;->invokeRemote(Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;)Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected handleResponse(Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;)V
    .locals 5
    .param p1, "responseMsg"    # Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    sget-object v1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received response for outgoing call, reading SOAP response body: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingAction;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->getSoapActionProcessor()Lorg/teleal/cling/transport/spi/SOAPActionProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-interface {v1, p1, v2}, Lorg/teleal/cling/transport/spi/SOAPActionProcessor;->readBody(Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    :try_end_0
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Lorg/teleal/cling/transport/spi/UnsupportedDataException;
    sget-object v1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error reading SOAP body: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 130
    sget-object v1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Exception root cause: "

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    new-instance v1, Lorg/teleal/cling/model/action/ActionException;

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading response message. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method protected handleResponseFailure(Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;)V
    .locals 5
    .param p1, "responseMsg"    # Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    sget-object v1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    const-string v2, "Received response with Internal Server Error, reading SOAP failure message"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingAction;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->getSoapActionProcessor()Lorg/teleal/cling/transport/spi/SOAPActionProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-interface {v1, p1, v2}, Lorg/teleal/cling/transport/spi/SOAPActionProcessor;->readBody(Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    :try_end_0
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "ex":Lorg/teleal/cling/transport/spi/UnsupportedDataException;
    sget-object v1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error reading SOAP body: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 142
    sget-object v1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Exception root cause: "

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    new-instance v1, Lorg/teleal/cling/model/action/ActionException;

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading response failure message. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method protected invokeRemote(Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;)Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    .locals 9
    .param p1, "requestMessage"    # Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;

    .prologue
    .line 67
    iget-object v5, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {v5}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 69
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    sget-object v5, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sending outgoing action call \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {v7}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v7

    invoke-virtual {v7}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' to remote service of: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x0

    .line 73
    .local v2, "responseMessage":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/protocol/sync/SendingAction;->sendRemoteRequest(Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v4

    .line 75
    .local v4, "streamResponse":Lorg/teleal/cling/model/message/StreamResponseMessage;
    if-nez v4, :cond_0

    .line 76
    sget-object v5, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    const-string v6, "No connection or no no response received, returning null"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 77
    iget-object v5, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    new-instance v6, Lorg/teleal/cling/model/action/ActionException;

    sget-object v7, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    const-string v8, "Connection error or no response received"

    invoke-direct {v6, v7, v8}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/teleal/cling/model/action/ActionInvocation;->setFailure(Lorg/teleal/cling/model/action/ActionException;)V

    .line 78
    const/4 v3, 0x0

    .line 103
    .end local v4    # "streamResponse":Lorg/teleal/cling/model/message/StreamResponseMessage;
    :goto_0
    return-object v3

    .line 81
    .restart local v4    # "streamResponse":Lorg/teleal/cling/model/message/StreamResponseMessage;
    :cond_0
    new-instance v3, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;

    invoke-direct {v3, v4}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/StreamResponseMessage;)V
    :try_end_0
    .catch Lorg/teleal/cling/model/action/ActionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .end local v2    # "responseMessage":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    .local v3, "responseMessage":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    :try_start_1
    invoke-virtual {v3}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;->isFailedNonRecoverable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 84
    sget-object v5, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Response was a non-recoverable failure: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 85
    new-instance v6, Lorg/teleal/cling/model/action/ActionException;

    .line 86
    sget-object v7, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v5, "Non-recoverable remote execution failure: "

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-direct {v6, v7, v5}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lorg/teleal/cling/model/action/ActionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 98
    .end local v3    # "responseMessage":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    .end local v4    # "streamResponse":Lorg/teleal/cling/model/message/StreamResponseMessage;
    .local v1, "ex":Lorg/teleal/cling/model/action/ActionException;
    .restart local v2    # "responseMessage":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    :goto_1
    sget-object v5, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remote action invocation failed, returning Internal Server Error message: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/model/action/ActionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 99
    iget-object v5, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {v5, v1}, Lorg/teleal/cling/model/action/ActionInvocation;->setFailure(Lorg/teleal/cling/model/action/ActionException;)V

    .line 100
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 101
    :cond_1
    new-instance v3, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;

    new-instance v5, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v6, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v5, v6}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v3, v5}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 88
    .end local v1    # "ex":Lorg/teleal/cling/model/action/ActionException;
    .end local v2    # "responseMessage":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    .restart local v3    # "responseMessage":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    .restart local v4    # "streamResponse":Lorg/teleal/cling/model/message/StreamResponseMessage;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;->isFailedRecoverable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    invoke-virtual {p0, v3}, Lorg/teleal/cling/protocol/sync/SendingAction;->handleResponseFailure(Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;)V

    :goto_2
    move-object v2, v3

    .line 94
    .end local v3    # "responseMessage":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    .restart local v2    # "responseMessage":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    goto/16 :goto_0

    .line 91
    .end local v2    # "responseMessage":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    .restart local v3    # "responseMessage":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    :cond_3
    invoke-virtual {p0, v3}, Lorg/teleal/cling/protocol/sync/SendingAction;->handleResponse(Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;)V
    :try_end_2
    .catch Lorg/teleal/cling/model/action/ActionException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .end local v3    # "responseMessage":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    .end local v4    # "streamResponse":Lorg/teleal/cling/model/message/StreamResponseMessage;
    .restart local v1    # "ex":Lorg/teleal/cling/model/action/ActionException;
    .restart local v2    # "responseMessage":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    :cond_4
    move-object v3, v2

    .line 103
    goto/16 :goto_0

    .line 97
    .end local v1    # "ex":Lorg/teleal/cling/model/action/ActionException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected sendRemoteRequest(Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 5
    .param p1, "requestMessage"    # Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    sget-object v1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Writing SOAP request body of: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingAction;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->getSoapActionProcessor()Lorg/teleal/cling/transport/spi/SOAPActionProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingAction;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-interface {v1, p1, v2}, Lorg/teleal/cling/transport/spi/SOAPActionProcessor;->writeBody(Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 113
    sget-object v1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    const-string v2, "Sending SOAP body of message as stream to remote device"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/SendingAction;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    :try_end_0
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Lorg/teleal/cling/transport/spi/UnsupportedDataException;
    sget-object v1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error writing SOAP body: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lorg/teleal/cling/protocol/sync/SendingAction;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Exception root cause: "

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    new-instance v1, Lorg/teleal/cling/model/action/ActionException;

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error writing request message. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v1
.end method
