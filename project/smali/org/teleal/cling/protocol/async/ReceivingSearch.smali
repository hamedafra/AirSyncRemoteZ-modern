.class public Lorg/teleal/cling/protocol/async/ReceivingSearch;
.super Lorg/teleal/cling/protocol/ReceivingAsync;
.source "ReceivingSearch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/protocol/ReceivingAsync",
        "<",
        "Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final randomGenerator:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lorg/teleal/cling/protocol/async/ReceivingSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

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
    .line 73
    .local p2, "inputMessage":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<Lorg/teleal/cling/model/message/UpnpRequest;>;"
    new-instance v0, Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;

    invoke-direct {v0, p2}, Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/protocol/ReceivingAsync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/UpnpMessage;)V

    .line 70
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/protocol/async/ReceivingSearch;->randomGenerator:Ljava/util/Random;

    .line 74
    return-void
.end method


# virtual methods
.method protected createDeviceMessages(Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/NetworkAddress;)Ljava/util/List;
    .locals 4
    .param p1, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .param p2, "activeStreamServer"    # Lorg/teleal/cling/model/NetworkAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/LocalDevice;",
            "Lorg/teleal/cling/model/NetworkAddress;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "msgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;>;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/LocalDevice;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    new-instance v2, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseRootDevice;

    .line 203
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    .line 204
    invoke-virtual {p0, p2, p1}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/teleal/cling/model/NetworkAddress;Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/model/Location;

    move-result-object v3

    .line 202
    invoke-direct {v2, v1, v3, p1}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseRootDevice;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;)V

    .line 201
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    new-instance v2, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseUDN;

    .line 212
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    .line 213
    invoke-virtual {p0, p2, p1}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/teleal/cling/model/NetworkAddress;Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/model/Location;

    move-result-object v3

    .line 211
    invoke-direct {v2, v1, v3, p1}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseUDN;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;)V

    .line 210
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v2, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseDeviceType;

    .line 220
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    .line 221
    invoke-virtual {p0, p2, p1}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/teleal/cling/model/NetworkAddress;Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/model/Location;

    move-result-object v3

    .line 219
    invoke-direct {v2, v1, v3, p1}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseDeviceType;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;)V

    .line 218
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-object v0
.end method

.method protected createServiceTypeMessages(Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/NetworkAddress;)Ljava/util/List;
    .locals 8
    .param p1, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .param p2, "activeStreamServer"    # Lorg/teleal/cling/model/NetworkAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/LocalDevice;",
            "Lorg/teleal/cling/model/NetworkAddress;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "msgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;>;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/LocalDevice;->findServiceTypes()[Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_0

    .line 242
    return-object v0

    .line 232
    :cond_0
    aget-object v1, v4, v3

    .line 234
    .local v1, "serviceType":Lorg/teleal/cling/model/types/ServiceType;
    new-instance v6, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseServiceType;

    .line 235
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    .line 236
    invoke-virtual {p0, p2, p1}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/teleal/cling/model/NetworkAddress;Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/model/Location;

    move-result-object v7

    .line 234
    invoke-direct {v6, v2, v7, p1, v1}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseServiceType;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/ServiceType;)V

    .line 233
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0
.end method

.method protected execute()V
    .locals 6

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v3

    if-nez v3, :cond_1

    .line 79
    sget-object v3, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    const-string v4, "Router hasn\'t completed initialization, ignoring received search message"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;

    invoke-virtual {v3}, Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;->isMANSSDPDiscover()Z

    move-result v3

    if-nez v3, :cond_2

    .line 84
    sget-object v3, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid search request, no or invalid MAN ssdp:discover header: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;

    invoke-virtual {v3}, Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;->getSearchTarget()Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v2

    .line 90
    .local v2, "searchTarget":Lorg/teleal/cling/model/message/header/UpnpHeader;
    if-nez v2, :cond_3

    .line 91
    sget-object v3, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid search request, did not contain ST header: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v4

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;

    invoke-virtual {v3}, Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/teleal/cling/transport/Router;->getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;

    move-result-object v1

    .line 97
    .local v1, "activeStreamServers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/NetworkAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 98
    sget-object v3, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    const-string v4, "Aborting search response, no active stream servers found (network disabled?)"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/NetworkAddress;

    .line 103
    .local v0, "activeStreamServer":Lorg/teleal/cling/model/NetworkAddress;
    invoke-virtual {p0, v2, v0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->sendResponses(Lorg/teleal/cling/model/message/header/UpnpHeader;Lorg/teleal/cling/model/NetworkAddress;)V

    goto :goto_1
.end method

.method protected getDescriptorLocation(Lorg/teleal/cling/model/NetworkAddress;Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/model/Location;
    .locals 2
    .param p1, "activeStreamServer"    # Lorg/teleal/cling/model/NetworkAddress;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 309
    new-instance v0, Lorg/teleal/cling/model/Location;

    .line 311
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->getNamespace()Lorg/teleal/cling/model/Namespace;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/teleal/cling/model/Namespace;->getDescriptorPath(Lorg/teleal/cling/model/meta/Device;)Ljava/net/URI;

    move-result-object v1

    .line 309
    invoke-direct {v0, p1, v1}, Lorg/teleal/cling/model/Location;-><init>(Lorg/teleal/cling/model/NetworkAddress;Ljava/net/URI;)V

    return-object v0
.end method

.method protected sendResponses(Lorg/teleal/cling/model/message/header/UpnpHeader;Lorg/teleal/cling/model/NetworkAddress;)V
    .locals 3
    .param p1, "searchTarget"    # Lorg/teleal/cling/model/message/header/UpnpHeader;
    .param p2, "activeStreamServer"    # Lorg/teleal/cling/model/NetworkAddress;

    .prologue
    .line 133
    instance-of v0, p1, Lorg/teleal/cling/model/message/header/STAllHeader;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, p2}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->sendSearchResponseAll(Lorg/teleal/cling/model/NetworkAddress;)V

    .line 156
    :goto_0
    return-void

    .line 137
    :cond_0
    instance-of v0, p1, Lorg/teleal/cling/model/message/header/RootDeviceHeader;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0, p2}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->sendSearchResponseRootDevices(Lorg/teleal/cling/model/NetworkAddress;)V

    goto :goto_0

    .line 141
    :cond_1
    instance-of v0, p1, Lorg/teleal/cling/model/message/header/UDNHeader;

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {p0, v0, p2}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->sendSearchResponseUDN(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/NetworkAddress;)V

    goto :goto_0

    .line 145
    :cond_2
    instance-of v0, p1, Lorg/teleal/cling/model/message/header/DeviceTypeHeader;

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/types/DeviceType;

    invoke-virtual {p0, v0, p2}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->sendSearchResponseDeviceType(Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/NetworkAddress;)V

    goto :goto_0

    .line 149
    :cond_3
    instance-of v0, p1, Lorg/teleal/cling/model/message/header/ServiceTypeHeader;

    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/types/ServiceType;

    invoke-virtual {p0, v0, p2}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->sendSearchResponseServiceType(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/NetworkAddress;)V

    goto :goto_0

    .line 154
    :cond_4
    sget-object v0, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-implemented search request target: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendSearchResponseAll(Lorg/teleal/cling/model/NetworkAddress;)V
    .locals 13
    .param p1, "activeStreamServer"    # Lorg/teleal/cling/model/NetworkAddress;

    .prologue
    .line 159
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    const-string v7, "Responding to \'all\' search with advertisement messages for all local devices"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/registry/Registry;->getLocalDevices()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 192
    return-void

    .line 160
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/LocalDevice;

    .line 164
    .local v2, "localDevice":Lorg/teleal/cling/model/meta/LocalDevice;
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Sending root device messages: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, v2, p1}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->createDeviceMessages(Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/NetworkAddress;)Ljava/util/List;

    move-result-object v3

    .line 167
    .local v3, "rootDeviceMsgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 171
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/LocalDevice;->hasEmbeddedDevices()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 172
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/LocalDevice;->findEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;

    move-result-object v6

    check-cast v6, [Lorg/teleal/cling/model/meta/LocalDevice;

    array-length v9, v6

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v9, :cond_4

    .line 183
    :cond_2
    invoke-virtual {p0, v2, p1}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->createServiceTypeMessages(Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/NetworkAddress;)Ljava/util/List;

    move-result-object v4

    .line 184
    .local v4, "serviceTypeMsgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 185
    sget-object v6, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    const-string v7, "Sending service type messages"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 186
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;

    .line 187
    .local v5, "upnpMessage":Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v7

    invoke-interface {v7, v5}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_2

    .line 167
    .end local v4    # "serviceTypeMsgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;>;"
    .end local v5    # "upnpMessage":Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;

    .line 168
    .restart local v5    # "upnpMessage":Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v7

    invoke-interface {v7, v5}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0

    .line 172
    .end local v5    # "upnpMessage":Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;
    :cond_4
    aget-object v0, v6, v7

    .line 173
    .local v0, "embeddedDevice":Lorg/teleal/cling/model/meta/LocalDevice;
    sget-object v10, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Sending embedded device messages: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, v0, p1}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->createDeviceMessages(Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/NetworkAddress;)Ljava/util/List;

    move-result-object v1

    .line 176
    .local v1, "embeddedDeviceMsgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 172
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 176
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;

    .line 177
    .restart local v5    # "upnpMessage":Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v11

    invoke-interface {v11}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v11

    invoke-interface {v11, v5}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_3
.end method

.method protected sendSearchResponseDeviceType(Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/NetworkAddress;)V
    .locals 7
    .param p1, "deviceType"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p2, "activeStreamServer"    # Lorg/teleal/cling/model/NetworkAddress;

    .prologue
    .line 274
    sget-object v2, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Responding to device type search: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/teleal/cling/registry/Registry;->getDevices(Lorg/teleal/cling/model/types/DeviceType;)Ljava/util/Collection;

    move-result-object v1

    .line 276
    .local v1, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/meta/Device;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 288
    return-void

    .line 276
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/Device;

    .line 277
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    instance-of v2, v0, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v2, :cond_0

    .line 278
    sget-object v2, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Sending matching device type search result for: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v5

    .line 280
    new-instance v6, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseDeviceType;

    .line 281
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    move-object v3, v0

    .line 282
    check-cast v3, Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p2, v3}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/teleal/cling/model/NetworkAddress;Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/model/Location;

    move-result-object v3

    .line 283
    check-cast v0, Lorg/teleal/cling/model/meta/LocalDevice;

    .line 280
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    invoke-direct {v6, v2, v3, v0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseDeviceType;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;)V

    .line 279
    invoke-interface {v5, v6}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0
.end method

.method protected sendSearchResponseRootDevices(Lorg/teleal/cling/model/NetworkAddress;)V
    .locals 6
    .param p1, "activeStreamServer"    # Lorg/teleal/cling/model/NetworkAddress;

    .prologue
    .line 246
    sget-object v1, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    const-string v2, "Responding to root device search with advertisement messages for all local root devices"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/registry/Registry;->getLocalDevices()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    return-void

    .line 247
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/LocalDevice;

    .line 249
    .local v0, "device":Lorg/teleal/cling/model/meta/LocalDevice;
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v3

    .line 250
    new-instance v4, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseRootDeviceUDN;

    .line 251
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    .line 252
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/teleal/cling/model/NetworkAddress;Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/model/Location;

    move-result-object v5

    .line 250
    invoke-direct {v4, v1, v5, v0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseRootDeviceUDN;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;)V

    .line 249
    invoke-interface {v3, v4}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0
.end method

.method protected sendSearchResponseServiceType(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/NetworkAddress;)V
    .locals 7
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .param p2, "activeStreamServer"    # Lorg/teleal/cling/model/NetworkAddress;

    .prologue
    .line 291
    sget-object v2, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Responding to service type search: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/teleal/cling/registry/Registry;->getDevices(Lorg/teleal/cling/model/types/ServiceType;)Ljava/util/Collection;

    move-result-object v1

    .line 293
    .local v1, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/meta/Device;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    return-void

    .line 293
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/Device;

    .line 294
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    instance-of v2, v0, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v2, :cond_0

    .line 295
    sget-object v2, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Sending matching service type search result: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v5

    .line 297
    new-instance v6, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseServiceType;

    .line 298
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    move-object v3, v0

    .line 299
    check-cast v3, Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p2, v3}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/teleal/cling/model/NetworkAddress;Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/model/Location;

    move-result-object v3

    .line 300
    check-cast v0, Lorg/teleal/cling/model/meta/LocalDevice;

    .line 297
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    invoke-direct {v6, v2, v3, v0, p1}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseServiceType;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/ServiceType;)V

    .line 296
    invoke-interface {v5, v6}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0
.end method

.method protected sendSearchResponseUDN(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/NetworkAddress;)V
    .locals 5
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "activeStreamServer"    # Lorg/teleal/cling/model/NetworkAddress;

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lorg/teleal/cling/registry/Registry;->getDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 261
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v1, :cond_0

    .line 262
    sget-object v1, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Responding to UDN device search: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v3

    .line 264
    new-instance v4, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseUDN;

    .line 265
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    move-object v2, v0

    .line 266
    check-cast v2, Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p2, v2}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getDescriptorLocation(Lorg/teleal/cling/model/NetworkAddress;Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/model/Location;

    move-result-object v2

    .line 267
    check-cast v0, Lorg/teleal/cling/model/meta/LocalDevice;

    .line 264
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    invoke-direct {v4, v1, v2, v0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseUDN;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;)V

    .line 263
    invoke-interface {v3, v4}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    .line 271
    :cond_0
    return-void
.end method

.method protected waitBeforeExecution()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;->getMX()Ljava/lang/Integer;

    move-result-object v0

    .line 112
    .local v0, "mx":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 113
    sget-object v2, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid search request, did not contain MX header: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x0

    .line 129
    :goto_0
    return v2

    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x78

    if-gt v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    sget-object v0, Lorg/teleal/cling/model/message/header/MXHeader;->DEFAULT_VALUE:Ljava/lang/Integer;

    .line 123
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/ReceivingSearch;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/registry/Registry;->getLocalDevices()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 124
    iget-object v2, p0, Lorg/teleal/cling/protocol/async/ReceivingSearch;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 125
    .local v1, "sleepTime":I
    sget-object v2, Lorg/teleal/cling/protocol/async/ReceivingSearch;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sleeping "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds to avoid flooding with search responses"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 126
    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 129
    .end local v1    # "sleepTime":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method
