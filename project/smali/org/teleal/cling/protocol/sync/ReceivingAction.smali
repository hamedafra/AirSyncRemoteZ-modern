.class public Lorg/teleal/cling/protocol/sync/ReceivingAction;
.super Lorg/teleal/cling/protocol/ReceivingSync;
.source "ReceivingAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/ReceivingSync",
        "<",
        "Lorg/teleal/cling/model/message/StreamRequestMessage;",
        "Lorg/teleal/cling/model/message/StreamResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field protected static final extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/teleal/cling/model/message/UpnpHeaders;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;

.field protected static final requestThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    .line 68
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->requestThreadLocal:Ljava/lang/ThreadLocal;

    .line 69
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 0
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "inputMessage"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/protocol/ReceivingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 73
    return-void
.end method

.method public static getExtraResponseHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpHeaders;

    return-object v0
.end method

.method public static getRequestMessage()Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lorg/teleal/cling/protocol/sync/ReceivingAction;->requestThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;

    return-object v0
.end method


# virtual methods
.method protected executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 78
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v7}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v7

    sget-object v8, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v10, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    invoke-virtual {v7, v8, v10}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    .line 83
    .local v0, "contentTypeHeader":Lorg/teleal/cling/model/message/header/ContentTypeHeader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->isUDACompliantXML()Z

    move-result v7

    if-nez v7, :cond_0

    .line 84
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Received invalid Content-Type \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 85
    new-instance v5, Lorg/teleal/cling/model/message/StreamResponseMessage;

    new-instance v7, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v8, Lorg/teleal/cling/model/message/UpnpResponse$Status;->UNSUPPORTED_MEDIA_TYPE:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v7, v8}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v5, v7}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 179
    :goto_0
    return-object v5

    .line 88
    :cond_0
    if-nez v0, :cond_1

    .line 89
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Received without Content-Type: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingAction;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v8

    .line 94
    const-class v10, Lorg/teleal/cling/model/resource/ServiceControlResource;

    .line 95
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v7}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v7

    .line 93
    invoke-interface {v8, v10, v7}, Lorg/teleal/cling/registry/Registry;->getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/resource/ServiceControlResource;

    .line 98
    .local v4, "resource":Lorg/teleal/cling/model/resource/ServiceControlResource;
    if-nez v4, :cond_2

    .line 99
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "No local resource found: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v5, v9

    .line 100
    goto :goto_0

    .line 103
    :cond_2
    sget-object v8, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v7, "Found local action resource matching relative request URI: "

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v7}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getUri()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    const/4 v5, 0x0

    .line 112
    .local v5, "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    :try_start_0
    new-instance v3, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingAction;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v4}, Lorg/teleal/cling/model/resource/ServiceControlResource;->getModel()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/teleal/cling/model/meta/LocalService;

    invoke-direct {v3, v7, v8}, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;-><init>(Lorg/teleal/cling/model/message/StreamRequestMessage;Lorg/teleal/cling/model/meta/LocalService;)V

    .line 115
    .local v3, "requestMessage":Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->requestThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 116
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v8, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-direct {v8}, Lorg/teleal/cling/model/message/UpnpHeaders;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 118
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Created incoming action request message: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 119
    new-instance v2, Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {v3}, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    .line 122
    .local v2, "invocation":Lorg/teleal/cling/model/action/ActionInvocation;
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    const-string v8, "Reading body of request message"

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingAction;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpServiceConfiguration;->getSoapActionProcessor()Lorg/teleal/cling/transport/spi/SOAPActionProcessor;

    move-result-object v7

    invoke-interface {v7, v3, v2}, Lorg/teleal/cling/transport/spi/SOAPActionProcessor;->readBody(Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 125
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Executing on local service: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4}, Lorg/teleal/cling/model/resource/ServiceControlResource;->getModel()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/meta/LocalService;

    invoke-virtual {v2}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/teleal/cling/model/meta/LocalService;->getExecutor(Lorg/teleal/cling/model/meta/Action;)Lorg/teleal/cling/model/action/ActionExecutor;

    move-result-object v7

    invoke-interface {v7, v2}, Lorg/teleal/cling/model/action/ActionExecutor;->execute(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 128
    invoke-virtual {v2}, Lorg/teleal/cling/model/action/ActionInvocation;->getFailure()Lorg/teleal/cling/model/action/ActionException;

    move-result-object v7

    if-nez v7, :cond_4

    .line 130
    new-instance v6, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;

    invoke-virtual {v2}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/teleal/cling/model/meta/Action;)V
    :try_end_0
    .catch Lorg/teleal/cling/model/action/ActionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    .local v6, "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    move-object v5, v6

    .line 158
    .end local v6    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    .restart local v5    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    :goto_1
    if-eqz v5, :cond_3

    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 159
    sget-object v8, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v7, "Merging extra headers into action response message: "

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->size()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v5}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v8

    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v8, v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    .line 164
    :cond_3
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->requestThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 165
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 170
    .end local v3    # "requestMessage":Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;
    :goto_2
    :try_start_1
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    const-string v8, "Writing body of response message"

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingAction;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpServiceConfiguration;->getSoapActionProcessor()Lorg/teleal/cling/transport/spi/SOAPActionProcessor;

    move-result-object v7

    invoke-interface {v7, v5, v2}, Lorg/teleal/cling/transport/spi/SOAPActionProcessor;->writeBody(Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 173
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Returning finished response message: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "ex":Lorg/teleal/cling/transport/spi/UnsupportedDataException;
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    const-string v8, "Failure writing body of response message, sending \'500 Internal Server Error\' without body"

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 178
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v9, "Exception root cause: "

    invoke-static {v1}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    new-instance v5, Lorg/teleal/cling/model/message/StreamResponseMessage;

    .end local v5    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    sget-object v7, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v5, v7}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    goto/16 :goto_0

    .line 133
    .end local v1    # "ex":Lorg/teleal/cling/transport/spi/UnsupportedDataException;
    .restart local v3    # "requestMessage":Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;
    .restart local v5    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    :cond_4
    :try_start_2
    new-instance v6, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;

    sget-object v7, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-virtual {v2}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;Lorg/teleal/cling/model/meta/Action;)V
    :try_end_2
    .catch Lorg/teleal/cling/model/action/ActionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v5    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    .restart local v6    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    move-object v5, v6

    .line 137
    .end local v6    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    .restart local v5    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    goto/16 :goto_1

    .end local v2    # "invocation":Lorg/teleal/cling/model/action/ActionInvocation;
    .end local v3    # "requestMessage":Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;
    :catch_1
    move-exception v1

    .line 138
    .local v1, "ex":Lorg/teleal/cling/model/action/ActionException;
    :try_start_3
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Error executing local action: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 140
    new-instance v2, Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-direct {v2, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/action/ActionException;)V

    .line 141
    .restart local v2    # "invocation":Lorg/teleal/cling/model/action/ActionInvocation;
    new-instance v6, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;

    sget-object v7, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v6, v7}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    .end local v5    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    .restart local v6    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    if-eqz v6, :cond_5

    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 159
    sget-object v8, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v7, "Merging extra headers into action response message: "

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->size()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v6}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v8

    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v8, v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    .line 164
    :cond_5
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->requestThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 165
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v5, v6

    .end local v6    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    .restart local v5    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    goto/16 :goto_2

    .line 143
    .end local v1    # "ex":Lorg/teleal/cling/model/action/ActionException;
    .end local v2    # "invocation":Lorg/teleal/cling/model/action/ActionInvocation;
    :catch_2
    move-exception v1

    .line 144
    .local v1, "ex":Lorg/teleal/cling/transport/spi/UnsupportedDataException;
    :try_start_4
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 145
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error reading action request XML body: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v7, v8, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :cond_6
    new-instance v2, Lorg/teleal/cling/model/action/ActionInvocation;

    .line 150
    invoke-static {v1}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Lorg/teleal/cling/model/action/ActionException;

    if-eqz v7, :cond_8

    .line 151
    invoke-static {v1}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/action/ActionException;

    .line 149
    :goto_3
    invoke-direct {v2, v7}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/action/ActionException;)V

    .line 154
    .restart local v2    # "invocation":Lorg/teleal/cling/model/action/ActionInvocation;
    new-instance v6, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;

    sget-object v7, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v6, v7}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    .end local v5    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    .restart local v6    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    if-eqz v6, :cond_7

    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 159
    sget-object v8, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v7, "Merging extra headers into action response message: "

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->size()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v6}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v8

    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v8, v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    .line 164
    :cond_7
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->requestThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 165
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v5, v6

    .end local v6    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    .restart local v5    # "responseMessage":Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
    goto/16 :goto_2

    .line 152
    .end local v2    # "invocation":Lorg/teleal/cling/model/action/ActionInvocation;
    :cond_8
    :try_start_5
    new-instance v7, Lorg/teleal/cling/model/action/ActionException;

    sget-object v8, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    invoke-virtual {v1}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 156
    .end local v1    # "ex":Lorg/teleal/cling/transport/spi/UnsupportedDataException;
    :catchall_0
    move-exception v7

    move-object v8, v7

    .line 158
    if-eqz v5, :cond_9

    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 159
    sget-object v10, Lorg/teleal/cling/protocol/sync/ReceivingAction;->log:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v7, "Merging extra headers into action response message: "

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->size()I

    move-result v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v5}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v10

    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v10, v7}, Lorg/teleal/cling/model/message/UpnpHeaders;->putAll(Ljava/util/Map;)V

    .line 164
    :cond_9
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->requestThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 165
    sget-object v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;->extraResponseHeadersThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 166
    throw v8
.end method
