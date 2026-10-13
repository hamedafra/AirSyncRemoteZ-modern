.class public Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;
.super Ljava/lang/Object;
.source "RetrieveRemoteDescriptors.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final activeRetrievals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private rd:Lorg/teleal/cling/model/meta/RemoteDevice;

.field private final upnpService:Lorg/teleal/cling/UpnpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    .line 71
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "rd"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->upnpService:Lorg/teleal/cling/UpnpService;

    .line 75
    iput-object p2, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 76
    return-void
.end method


# virtual methods
.method protected describe()V
    .locals 5

    .prologue
    .line 117
    new-instance v1, Lorg/teleal/cling/model/message/StreamRequestMessage;

    sget-object v3, Lorg/teleal/cling/model/message/UpnpRequest$Method;->GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    iget-object v2, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    .line 119
    .local v1, "deviceDescRetrievalMsg":Lorg/teleal/cling/model/message/StreamRequestMessage;
    sget-object v2, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending device descriptor retrieval message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0

    .line 122
    .local v0, "deviceDescMsg":Lorg/teleal/cling/model/message/StreamResponseMessage;
    if-nez v0, :cond_0

    .line 123
    sget-object v3, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Device descriptor retrieval failed, no response: "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    sget-object v3, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Device descriptor retrieval failed: "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 131
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 132
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;->isContentTypeTextUDA()Z

    move-result v2

    if-nez v2, :cond_2

    .line 138
    sget-object v3, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Received device descriptor without or with invalid Content-Type: "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 142
    :cond_2
    sget-object v2, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received root device descriptor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->describe(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected describe(Ljava/lang/String;)V
    .locals 11
    .param p1, "descriptorXML"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v5, 0x0

    .line 149
    .local v5, "notifiedStart":Z
    const/4 v1, 0x0

    .line 153
    .local v1, "describedDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpServiceConfiguration;->getDeviceDescriptorBinderUDA10()Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;

    move-result-object v2

    .line 156
    .local v2, "deviceDescriptorBinder":Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;
    iget-object v7, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 155
    invoke-interface {v2, v7, p1}, Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;->describe(Lorg/teleal/cling/model/meta/Device;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    move-object v1, v0

    .line 160
    sget-object v7, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Remote device described (without services) notifying listeners: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/teleal/cling/registry/Registry;->notifyDiscoveryStart(Lorg/teleal/cling/model/meta/RemoteDevice;)Z

    move-result v5

    .line 163
    sget-object v7, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Hydrating described device\'s services: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v1}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->describeServices(Lorg/teleal/cling/model/meta/RemoteDevice;)Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v4

    .line 165
    .local v4, "hydratedDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    if-nez v4, :cond_1

    .line 166
    sget-object v7, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Device service description failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 167
    if-eqz v5, :cond_0

    .line 168
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v7

    .line 170
    new-instance v8, Lorg/teleal/cling/binding/xml/DescriptorBindingException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Device service description failed: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/teleal/cling/binding/xml/DescriptorBindingException;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-interface {v7, v1, v8}, Lorg/teleal/cling/registry/Registry;->notifyDiscoveryFailure(Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    .line 202
    .end local v2    # "deviceDescriptorBinder":Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;
    .end local v4    # "hydratedDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    :cond_0
    :goto_0
    return-void

    .line 175
    .restart local v2    # "deviceDescriptorBinder":Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;
    .restart local v4    # "hydratedDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    :cond_1
    sget-object v7, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Adding fully hydrated remote device to registry: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v7

    invoke-interface {v7, v4}, Lorg/teleal/cling/registry/Registry;->addDevice(Lorg/teleal/cling/model/meta/RemoteDevice;)V
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/teleal/cling/binding/xml/DescriptorBindingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/teleal/cling/registry/RegistrationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 182
    .end local v2    # "deviceDescriptorBinder":Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;
    .end local v4    # "hydratedDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    :catch_0
    move-exception v3

    .line 183
    .local v3, "ex":Lorg/teleal/cling/model/ValidationException;
    sget-object v7, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Could not validate device model: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v3}, Lorg/teleal/cling/model/ValidationException;->getErrors()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 187
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    .line 188
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v7

    invoke-interface {v7, v1, v3}, Lorg/teleal/cling/registry/Registry;->notifyDiscoveryFailure(Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/ValidationError;

    .line 185
    .local v6, "validationError":Lorg/teleal/cling/model/ValidationError;
    sget-object v8, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    invoke-virtual {v6}, Lorg/teleal/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 190
    .end local v3    # "ex":Lorg/teleal/cling/model/ValidationException;
    .end local v6    # "validationError":Lorg/teleal/cling/model/ValidationError;
    :catch_1
    move-exception v3

    .line 191
    .local v3, "ex":Lorg/teleal/cling/binding/xml/DescriptorBindingException;
    sget-object v7, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Could not hydrate device or its services from descriptor: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 192
    sget-object v7, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Cause was: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 193
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    .line 194
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v7

    invoke-interface {v7, v1, v3}, Lorg/teleal/cling/registry/Registry;->notifyDiscoveryFailure(Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 196
    .end local v3    # "ex":Lorg/teleal/cling/binding/xml/DescriptorBindingException;
    :catch_2
    move-exception v3

    .line 197
    .local v3, "ex":Lorg/teleal/cling/registry/RegistrationException;
    sget-object v7, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Adding hydrated device to registry failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 198
    sget-object v7, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Cause was: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/teleal/cling/registry/RegistrationException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 199
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    .line 200
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v7

    invoke-interface {v7, v1, v3}, Lorg/teleal/cling/registry/Registry;->notifyDiscoveryFailure(Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method protected describeService(Lorg/teleal/cling/model/meta/RemoteService;)Lorg/teleal/cling/model/meta/RemoteService;
    .locals 9
    .param p1, "service"    # Lorg/teleal/cling/model/meta/RemoteService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;,
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 252
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/RemoteService;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/RemoteService;->getDescriptorURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/teleal/cling/model/meta/RemoteDevice;->normalizeURI(Ljava/net/URI;)Ljava/net/URL;

    move-result-object v1

    .line 253
    .local v1, "descriptorURL":Ljava/net/URL;
    new-instance v3, Lorg/teleal/cling/model/message/StreamRequestMessage;

    sget-object v5, Lorg/teleal/cling/model/message/UpnpRequest$Method;->GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-direct {v3, v5, v1}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    .line 255
    .local v3, "serviceDescRetrievalMsg":Lorg/teleal/cling/model/message/StreamRequestMessage;
    sget-object v5, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sending service descriptor retrieval message: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v5

    invoke-interface {v5}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v2

    .line 258
    .local v2, "serviceDescMsg":Lorg/teleal/cling/model/message/StreamResponseMessage;
    if-nez v2, :cond_0

    .line 259
    sget-object v5, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not retrieve service descriptor: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v5, v6

    .line 286
    :goto_0
    return-object v5

    .line 263
    :cond_0
    invoke-virtual {v2}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    sget-object v7, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Service descriptor retrieval failed: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 266
    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 267
    invoke-virtual {v2}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v5}, Lorg/teleal/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-virtual {v7, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v5, v6

    .line 268
    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {v2}, Lorg/teleal/cling/model/message/StreamResponseMessage;->isContentTypeTextUDA()Z

    move-result v5

    if-nez v5, :cond_2

    .line 272
    sget-object v5, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Received service descriptor without or with invalid Content-Type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 276
    :cond_2
    invoke-virtual {v2}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "descriptorContent":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 278
    :cond_3
    sget-object v5, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Received empty descriptor:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v5, v6

    .line 279
    goto :goto_0

    .line 282
    :cond_4
    sget-object v5, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Received service descriptor, hydrating service model: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v5

    invoke-interface {v5}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v5

    invoke-interface {v5}, Lorg/teleal/cling/UpnpServiceConfiguration;->getServiceDescriptorBinderUDA10()Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;

    move-result-object v4

    .line 286
    .local v4, "serviceDescriptorBinder":Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;
    invoke-virtual {v2}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getBodyString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;->describe(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/meta/RemoteService;

    goto/16 :goto_0
.end method

.method protected describeServices(Lorg/teleal/cling/model/meta/RemoteDevice;)Lorg/teleal/cling/model/meta/RemoteDevice;
    .locals 17
    .param p1, "currentDevice"    # Lorg/teleal/cling/model/meta/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/binding/xml/DescriptorBindingException;,
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v10, "describedServices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/RemoteService;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->hasServices()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getServices()[Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->filterExclusiveServices([Lorg/teleal/cling/model/meta/RemoteService;)Ljava/util/List;

    move-result-object v12

    .line 210
    .local v12, "filteredServices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/RemoteService;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 219
    .end local v12    # "filteredServices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/RemoteService;>;"
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v8, "describedEmbeddedDevices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/RemoteDevice;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->hasEmbeddedDevices()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getEmbeddedDevices()[Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_4

    .line 231
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v1

    array-length v1, v1

    new-array v6, v1, [Lorg/teleal/cling/model/meta/Icon;

    .line 232
    .local v6, "iconDupes":[Lorg/teleal/cling/model/meta/Icon;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v1

    array-length v1, v1

    if-lt v13, v1, :cond_7

    .line 239
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v2

    .line 240
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getVersion()Lorg/teleal/cling/model/meta/UDAVersion;

    move-result-object v3

    .line 241
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v4

    .line 242
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v5

    .line 244
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/teleal/cling/model/meta/RemoteDevice;->toServiceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object v7

    move-object/from16 v1, p1

    .line 238
    invoke-virtual/range {v1 .. v8}, Lorg/teleal/cling/model/meta/RemoteDevice;->newInstance(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;Ljava/util/List;)Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v1

    .end local v6    # "iconDupes":[Lorg/teleal/cling/model/meta/Icon;
    .end local v8    # "describedEmbeddedDevices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/RemoteDevice;>;"
    .end local v13    # "i":I
    :goto_3
    return-object v1

    .line 210
    .restart local v12    # "filteredServices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/RemoteService;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/teleal/cling/model/meta/RemoteService;

    .line 211
    .local v15, "service":Lorg/teleal/cling/model/meta/RemoteService;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->describeService(Lorg/teleal/cling/model/meta/RemoteService;)Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object v16

    .line 212
    .local v16, "svc":Lorg/teleal/cling/model/meta/RemoteService;
    if-nez v16, :cond_3

    .line 213
    const/4 v1, 0x0

    goto :goto_3

    .line 215
    :cond_3
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    .end local v12    # "filteredServices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/RemoteService;>;"
    .end local v15    # "service":Lorg/teleal/cling/model/meta/RemoteService;
    .end local v16    # "svc":Lorg/teleal/cling/model/meta/RemoteService;
    .restart local v8    # "describedEmbeddedDevices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/RemoteDevice;>;"
    :cond_4
    aget-object v11, v2, v1

    .line 222
    .local v11, "embeddedDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    if-nez v11, :cond_5

    .line 221
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->describeServices(Lorg/teleal/cling/model/meta/RemoteDevice;)Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v9

    .line 224
    .local v9, "describedEmbeddedDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    if-nez v9, :cond_6

    .line 225
    const/4 v1, 0x0

    goto :goto_3

    .line 227
    :cond_6
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 233
    .end local v9    # "describedEmbeddedDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    .end local v11    # "embeddedDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    .restart local v6    # "iconDupes":[Lorg/teleal/cling/model/meta/Icon;
    .restart local v13    # "i":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v1

    aget-object v14, v1, v13

    .line 234
    .local v14, "icon":Lorg/teleal/cling/model/meta/Icon;
    invoke-virtual {v14}, Lorg/teleal/cling/model/meta/Icon;->deepCopy()Lorg/teleal/cling/model/meta/Icon;

    move-result-object v1

    aput-object v1, v6, v13

    .line 232
    add-int/lit8 v13, v13, 0x1

    goto :goto_2
.end method

.method protected filterExclusiveServices([Lorg/teleal/cling/model/meta/RemoteService;)Ljava/util/List;
    .locals 12
    .param p1, "services"    # [Lorg/teleal/cling/model/meta/RemoteService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/teleal/cling/model/meta/RemoteService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/meta/RemoteService;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 290
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/UpnpServiceConfiguration;->getExclusiveServiceTypes()[Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v3

    .line 292
    .local v3, "exclusiveTypes":[Lorg/teleal/cling/model/types/ServiceType;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_2

    .line 293
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 306
    :cond_1
    return-object v1

    .line 295
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v1, "exclusiveServices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/RemoteService;>;"
    array-length v7, p1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, p1, v6

    .line 297
    .local v0, "discoveredService":Lorg/teleal/cling/model/meta/RemoteService;
    array-length v8, v3

    move v4, v5

    :goto_1
    if-lt v4, v8, :cond_3

    .line 296
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 297
    :cond_3
    aget-object v2, v3, v4

    .line 298
    .local v2, "exclusiveType":Lorg/teleal/cling/model/types/ServiceType;
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/RemoteService;->getServiceType()Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v9

    invoke-virtual {v9, v2}, Lorg/teleal/cling/model/types/ServiceType;->implementsVersion(Lorg/teleal/cling/model/types/ServiceType;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 299
    sget-object v9, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Including exlusive service: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 300
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 302
    :cond_4
    sget-object v9, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Excluding unwanted service: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getUpnpService()Lorg/teleal/cling/UpnpService;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->upnpService:Lorg/teleal/cling/UpnpService;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v0

    .line 90
    .local v0, "deviceURL":Ljava/net/URL;
    sget-object v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    sget-object v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exiting early, active retrieval for URL already in progress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    iget-object v1, p0, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->rd:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lorg/teleal/cling/registry/Registry;->getRemoteDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 97
    sget-object v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exiting early, already discovered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    :try_start_0
    sget-object v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->describe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    sget-object v1, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v1

    .line 105
    sget-object v2, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;->activeRetrievals:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 106
    throw v1
.end method
