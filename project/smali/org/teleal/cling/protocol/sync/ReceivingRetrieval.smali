.class public Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;
.super Lorg/teleal/cling/protocol/ReceivingSync;
.source "ReceivingRetrieval.java"


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
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 0
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "inputMessage"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/protocol/ReceivingSync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected createControlPointInfo()Lorg/teleal/cling/model/profile/ControlPointInfo;
    .locals 2

    .prologue
    .line 145
    new-instance v1, Lorg/teleal/cling/model/profile/ControlPointInfo;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/teleal/cling/model/profile/ControlPointInfo;-><init>(Lorg/teleal/cling/model/message/UpnpHeaders;)V

    return-object v1
.end method

.method protected createResponse(Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 13
    .param p1, "requestedURI"    # Ljava/net/URI;
    .param p2, "resource"    # Lorg/teleal/cling/model/resource/Resource;

    .prologue
    .line 91
    :try_start_0
    const-class v9, Lorg/teleal/cling/model/resource/DeviceDescriptorResource;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 93
    sget-object v9, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Found local device matching relative request URI: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Lorg/teleal/cling/model/resource/Resource;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/LocalDevice;

    .line 97
    .local v0, "device":Lorg/teleal/cling/model/meta/LocalDevice;
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v9

    invoke-interface {v9}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v9

    invoke-interface {v9}, Lorg/teleal/cling/UpnpServiceConfiguration;->getDeviceDescriptorBinderUDA10()Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;

    move-result-object v2

    .line 100
    .local v2, "deviceDescriptorBinder":Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->createControlPointInfo()Lorg/teleal/cling/model/profile/ControlPointInfo;

    move-result-object v9

    .line 101
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v10

    invoke-interface {v10}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v10

    invoke-interface {v10}, Lorg/teleal/cling/UpnpServiceConfiguration;->getNamespace()Lorg/teleal/cling/model/Namespace;

    move-result-object v10

    .line 98
    invoke-interface {v2, v0, v9, v10}, Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;->generate(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/profile/ControlPointInfo;Lorg/teleal/cling/model/Namespace;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "deviceDescriptor":Ljava/lang/String;
    new-instance v5, Lorg/teleal/cling/model/message/StreamResponseMessage;

    .line 105
    new-instance v9, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    sget-object v10, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE:Lorg/teleal/common/util/MimeType;

    invoke-direct {v9, v10}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/teleal/common/util/MimeType;)V

    .line 103
    invoke-direct {v5, v1, v9}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/message/header/ContentTypeHeader;)V
    :try_end_0
    .catch Lorg/teleal/cling/binding/xml/DescriptorBindingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "device":Lorg/teleal/cling/model/meta/LocalDevice;
    .end local v1    # "deviceDescriptor":Ljava/lang/String;
    .end local v2    # "deviceDescriptorBinder":Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;
    .local v5, "response":Lorg/teleal/cling/model/message/StreamResponseMessage;
    :goto_0
    invoke-virtual {v5}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v9

    sget-object v10, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v11, Lorg/teleal/cling/model/message/header/ServerHeader;

    invoke-direct {v11}, Lorg/teleal/cling/model/message/header/ServerHeader;-><init>()V

    invoke-virtual {v9, v10, v11}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 141
    .end local v5    # "response":Lorg/teleal/cling/model/message/StreamResponseMessage;
    :goto_1
    return-object v5

    .line 107
    :cond_0
    :try_start_1
    const-class v9, Lorg/teleal/cling/model/resource/ServiceDescriptorResource;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 110
    sget-object v9, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Found local service matching relative request URI: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Lorg/teleal/cling/model/resource/Resource;->getModel()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/meta/LocalService;

    .line 114
    .local v6, "service":Lorg/teleal/cling/model/meta/LocalService;
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v9

    invoke-interface {v9}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v9

    invoke-interface {v9}, Lorg/teleal/cling/UpnpServiceConfiguration;->getServiceDescriptorBinderUDA10()Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;

    move-result-object v8

    .line 115
    .local v8, "serviceDescriptorBinder":Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;
    invoke-interface {v8, v6}, Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;->generate(Lorg/teleal/cling/model/meta/Service;)Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "serviceDescriptor":Ljava/lang/String;
    new-instance v5, Lorg/teleal/cling/model/message/StreamResponseMessage;

    .line 118
    new-instance v9, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    sget-object v10, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE:Lorg/teleal/common/util/MimeType;

    invoke-direct {v9, v10}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/teleal/common/util/MimeType;)V

    .line 116
    invoke-direct {v5, v7, v9}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/message/header/ContentTypeHeader;)V

    .line 121
    .restart local v5    # "response":Lorg/teleal/cling/model/message/StreamResponseMessage;
    goto :goto_0

    .end local v5    # "response":Lorg/teleal/cling/model/message/StreamResponseMessage;
    .end local v6    # "service":Lorg/teleal/cling/model/meta/LocalService;
    .end local v7    # "serviceDescriptor":Ljava/lang/String;
    .end local v8    # "serviceDescriptorBinder":Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;
    :cond_1
    const-class v9, Lorg/teleal/cling/model/resource/IconResource;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 123
    sget-object v9, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Found local icon matching relative request URI: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Lorg/teleal/cling/model/resource/Resource;->getModel()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/meta/Icon;

    .line 125
    .local v4, "icon":Lorg/teleal/cling/model/meta/Icon;
    new-instance v5, Lorg/teleal/cling/model/message/StreamResponseMessage;

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/Icon;->getData()[B

    move-result-object v9

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/Icon;->getMimeType()Lorg/teleal/common/util/MimeType;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>([BLorg/teleal/common/util/MimeType;)V

    .line 127
    .restart local v5    # "response":Lorg/teleal/cling/model/message/StreamResponseMessage;
    goto/16 :goto_0

    .line 129
    .end local v4    # "icon":Lorg/teleal/cling/model/meta/Icon;
    .end local v5    # "response":Lorg/teleal/cling/model/message/StreamResponseMessage;
    :cond_2
    sget-object v9, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Ignoring GET for found local resource: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/teleal/cling/binding/xml/DescriptorBindingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 133
    :catch_0
    move-exception v3

    .line 134
    .local v3, "ex":Lorg/teleal/cling/binding/xml/DescriptorBindingException;
    sget-object v9, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error generating requested device/service descriptor: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 135
    sget-object v9, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "Exception root cause: "

    invoke-static {v3}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    new-instance v5, Lorg/teleal/cling/model/message/StreamResponseMessage;

    sget-object v9, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v5, v9}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    .restart local v5    # "response":Lorg/teleal/cling/model/message/StreamResponseMessage;
    goto/16 :goto_0
.end method

.method protected executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 5

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/StreamRequestMessage;->hasHostHeader()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    sget-object v2, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring message, missing HOST header: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 70
    new-instance v2, Lorg/teleal/cling/model/message/StreamResponseMessage;

    new-instance v3, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v4, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v3, v4}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 82
    :goto_0
    return-object v2

    .line 73
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/StreamRequestMessage;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/StreamRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/UpnpRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 75
    .local v1, "requestedURI":Ljava/net/URI;
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/teleal/cling/registry/Registry;->getResource(Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;

    move-result-object v0

    .line 77
    .local v0, "foundResource":Lorg/teleal/cling/model/resource/Resource;
    if-nez v0, :cond_1

    .line 78
    sget-object v2, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No local resource found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x0

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0, v1, v0}, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;->createResponse(Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v2

    goto :goto_0
.end method
