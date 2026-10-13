.class public abstract Lorg/teleal/cling/protocol/async/SendingNotification;
.super Lorg/teleal/cling/protocol/SendingAsync;
.source "SendingNotification.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private device:Lorg/teleal/cling/model/meta/LocalDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/teleal/cling/protocol/async/SendingNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/async/SendingNotification;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/teleal/cling/protocol/SendingAsync;-><init>(Lorg/teleal/cling/UpnpService;)V

    .line 54
    iput-object p2, p0, Lorg/teleal/cling/protocol/async/SendingNotification;->device:Lorg/teleal/cling/model/meta/LocalDevice;

    .line 55
    return-void
.end method


# virtual methods
.method protected createDeviceMessages(Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/Location;)Ljava/util/List;
    .locals 3
    .param p1, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .param p2, "descriptorLocation"    # Lorg/teleal/cling/model/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/LocalDevice;",
            "Lorg/teleal/cling/model/Location;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, "msgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;>;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/LocalDevice;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    new-instance v1, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestRootDevice;

    .line 146
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getNotificationSubtype()Lorg/teleal/cling/model/types/NotificationSubtype;

    move-result-object v2

    .line 143
    invoke-direct {v1, p2, p1, v2}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestRootDevice;-><init>(Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/NotificationSubtype;)V

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    new-instance v1, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestUDN;

    .line 153
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getNotificationSubtype()Lorg/teleal/cling/model/types/NotificationSubtype;

    move-result-object v2

    .line 152
    invoke-direct {v1, p2, p1, v2}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestUDN;-><init>(Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/NotificationSubtype;)V

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestDeviceType;

    .line 158
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getNotificationSubtype()Lorg/teleal/cling/model/types/NotificationSubtype;

    move-result-object v2

    .line 157
    invoke-direct {v1, p2, p1, v2}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestDeviceType;-><init>(Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/NotificationSubtype;)V

    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-object v0
.end method

.method protected createServiceTypeMessages(Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/Location;)Ljava/util/List;
    .locals 7
    .param p1, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .param p2, "descriptorLocation"    # Lorg/teleal/cling/model/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/LocalDevice;",
            "Lorg/teleal/cling/model/Location;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "msgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;>;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/LocalDevice;->findServiceTypes()[Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 178
    return-object v0

    .line 169
    :cond_0
    aget-object v1, v3, v2

    .line 171
    .local v1, "serviceType":Lorg/teleal/cling/model/types/ServiceType;
    new-instance v5, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestServiceType;

    .line 173
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getNotificationSubtype()Lorg/teleal/cling/model/types/NotificationSubtype;

    move-result-object v6

    .line 171
    invoke-direct {v5, p2, p1, v6, v1}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestServiceType;-><init>(Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/NotificationSubtype;Lorg/teleal/cling/model/types/ServiceType;)V

    .line 170
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected execute()V
    .locals 10

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/teleal/cling/transport/Router;->getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, "activeStreamServers":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/NetworkAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 66
    sget-object v6, Lorg/teleal/cling/protocol/async/SendingNotification;->log:Ljava/util/logging/Logger;

    const-string v7, "Aborting notifications, no active stream servers found (network disabled?)"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void

    .line 71
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v3, "descriptorLocations":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/Location;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 81
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getBulkRepeat()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 84
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 89
    sget-object v6, Lorg/teleal/cling/protocol/async/SendingNotification;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sleeping "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getBulkIntervalMilliseconds()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " milliseconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getBulkIntervalMilliseconds()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 72
    .end local v5    # "i":I
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/NetworkAddress;

    .line 74
    .local v0, "activeStreamServer":Lorg/teleal/cling/model/NetworkAddress;
    new-instance v7, Lorg/teleal/cling/model/Location;

    .line 76
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v8

    invoke-interface {v8}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v8

    invoke-interface {v8}, Lorg/teleal/cling/UpnpServiceConfiguration;->getNamespace()Lorg/teleal/cling/model/Namespace;

    move-result-object v8

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getDevice()Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/teleal/cling/model/Namespace;->getDescriptorPath(Lorg/teleal/cling/model/meta/Device;)Ljava/net/URI;

    move-result-object v8

    .line 74
    invoke-direct {v7, v0, v8}, Lorg/teleal/cling/model/Location;-><init>(Lorg/teleal/cling/model/NetworkAddress;Ljava/net/URI;)V

    .line 73
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v0    # "activeStreamServer":Lorg/teleal/cling/model/NetworkAddress;
    .restart local v5    # "i":I
    :cond_3
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/Location;

    .line 85
    .local v2, "descriptorLocation":Lorg/teleal/cling/model/Location;
    invoke-virtual {p0, v2}, Lorg/teleal/cling/protocol/async/SendingNotification;->sendMessages(Lorg/teleal/cling/model/Location;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 92
    .end local v2    # "descriptorLocation":Lorg/teleal/cling/model/Location;
    :catch_0
    move-exception v4

    .line 93
    .local v4, "ex":Ljava/lang/InterruptedException;
    sget-object v6, Lorg/teleal/cling/protocol/async/SendingNotification;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Advertisement thread was interrupted: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected getBulkIntervalMilliseconds()I
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x96

    return v0
.end method

.method protected getBulkRepeat()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x3

    return v0
.end method

.method public getDevice()Lorg/teleal/cling/model/meta/LocalDevice;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/teleal/cling/protocol/async/SendingNotification;->device:Lorg/teleal/cling/model/meta/LocalDevice;

    return-object v0
.end method

.method protected abstract getNotificationSubtype()Lorg/teleal/cling/model/types/NotificationSubtype;
.end method

.method public sendMessages(Lorg/teleal/cling/model/Location;)V
    .locals 11
    .param p1, "descriptorLocation"    # Lorg/teleal/cling/model/Location;

    .prologue
    .line 107
    sget-object v5, Lorg/teleal/cling/protocol/async/SendingNotification;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sending root device messages: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getDevice()Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getDevice()Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v5

    invoke-virtual {p0, v5, p1}, Lorg/teleal/cling/protocol/async/SendingNotification;->createDeviceMessages(Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/Location;)Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, "rootDeviceMsgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 114
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getDevice()Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/LocalDevice;->hasEmbeddedDevices()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getDevice()Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/LocalDevice;->findEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;

    move-result-object v5

    check-cast v5, [Lorg/teleal/cling/model/meta/LocalDevice;

    array-length v7, v5

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v7, :cond_3

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getDevice()Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v5

    invoke-virtual {p0, v5, p1}, Lorg/teleal/cling/protocol/async/SendingNotification;->createServiceTypeMessages(Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/Location;)Ljava/util/List;

    move-result-object v3

    .line 127
    .local v3, "serviceTypeMsgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 128
    sget-object v5, Lorg/teleal/cling/protocol/async/SendingNotification;->log:Ljava/util/logging/Logger;

    const-string v6, "Sending service type messages"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 129
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 133
    :cond_1
    return-void

    .line 110
    .end local v3    # "serviceTypeMsgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;

    .line 111
    .local v4, "upnpMessage":Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0

    .line 115
    .end local v4    # "upnpMessage":Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;
    :cond_3
    aget-object v0, v5, v6

    .line 116
    .local v0, "embeddedDevice":Lorg/teleal/cling/model/meta/LocalDevice;
    sget-object v8, Lorg/teleal/cling/protocol/async/SendingNotification;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Sending embedded device messages: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v0, p1}, Lorg/teleal/cling/protocol/async/SendingNotification;->createDeviceMessages(Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/Location;)Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "embeddedDeviceMsgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 119
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;

    .line 120
    .restart local v4    # "upnpMessage":Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v9

    invoke-interface {v9}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v9

    invoke-interface {v9, v4}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_3

    .line 129
    .end local v0    # "embeddedDevice":Lorg/teleal/cling/model/meta/LocalDevice;
    .end local v1    # "embeddedDeviceMsgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;>;"
    .end local v4    # "upnpMessage":Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;
    .restart local v3    # "serviceTypeMsgs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;>;"
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;

    .line 130
    .restart local v4    # "upnpMessage":Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/UpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_2
.end method
