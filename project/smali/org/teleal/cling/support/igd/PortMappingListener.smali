.class public Lorg/teleal/cling/support/igd/PortMappingListener;
.super Lorg/teleal/cling/registry/DefaultRegistryListener;
.source "PortMappingListener.java"


# static fields
.field public static final CONNECTION_DEVICE_TYPE:Lorg/teleal/cling/model/types/DeviceType;

.field public static final IGD_DEVICE_TYPE:Lorg/teleal/cling/model/types/DeviceType;

.field public static final IP_SERVICE_TYPE:Lorg/teleal/cling/model/types/ServiceType;

.field public static final PPP_SERVICE_TYPE:Lorg/teleal/cling/model/types/ServiceType;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected activePortMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/meta/Service;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/PortMapping;",
            ">;>;"
        }
    .end annotation
.end field

.field protected portMappings:[Lorg/teleal/cling/support/model/PortMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 74
    const-class v0, Lorg/teleal/cling/support/igd/PortMappingListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    .line 76
    new-instance v0, Lorg/teleal/cling/model/types/UDADeviceType;

    const-string v1, "InternetGatewayDevice"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UDADeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/igd/PortMappingListener;->IGD_DEVICE_TYPE:Lorg/teleal/cling/model/types/DeviceType;

    .line 77
    new-instance v0, Lorg/teleal/cling/model/types/UDADeviceType;

    const-string v1, "WANConnectionDevice"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UDADeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/igd/PortMappingListener;->CONNECTION_DEVICE_TYPE:Lorg/teleal/cling/model/types/DeviceType;

    .line 79
    new-instance v0, Lorg/teleal/cling/model/types/UDAServiceType;

    const-string v1, "WANIPConnection"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/igd/PortMappingListener;->IP_SERVICE_TYPE:Lorg/teleal/cling/model/types/ServiceType;

    .line 80
    new-instance v0, Lorg/teleal/cling/model/types/UDAServiceType;

    const-string v1, "WANPPPConnection"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/igd/PortMappingListener;->PPP_SERVICE_TYPE:Lorg/teleal/cling/model/types/ServiceType;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/PortMapping;)V
    .locals 2
    .param p1, "portMapping"    # Lorg/teleal/cling/support/model/PortMapping;

    .prologue
    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/teleal/cling/support/model/PortMapping;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/teleal/cling/support/igd/PortMappingListener;-><init>([Lorg/teleal/cling/support/model/PortMapping;)V

    .line 89
    return-void
.end method

.method public constructor <init>([Lorg/teleal/cling/support/model/PortMapping;)V
    .locals 1
    .param p1, "portMappings"    # [Lorg/teleal/cling/support/model/PortMapping;

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/teleal/cling/registry/DefaultRegistryListener;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/igd/PortMappingListener;->activePortMappings:Ljava/util/Map;

    .line 92
    iput-object p1, p0, Lorg/teleal/cling/support/igd/PortMappingListener;->portMappings:[Lorg/teleal/cling/support/model/PortMapping;

    .line 93
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/teleal/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized beforeShutdown(Lorg/teleal/cling/registry/Registry;)V
    .locals 9
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/support/igd/PortMappingListener;->activePortMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 165
    monitor-exit p0

    return-void

    .line 142
    :cond_1
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 144
    .local v7, "activeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/teleal/cling/model/meta/Service;Ljava/util/List<Lorg/teleal/cling/support/model/PortMapping;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 145
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/support/model/PortMapping;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/PortMapping;

    .line 147
    .local v4, "pm":Lorg/teleal/cling/support/model/PortMapping;
    sget-object v0, Lorg/teleal/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to delete port mapping on IGD: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 148
    new-instance v0, Lorg/teleal/cling/support/igd/PortMappingListener$2;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/Service;

    invoke-interface {p1}, Lorg/teleal/cling/registry/Registry;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v3

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/igd/PortMappingListener$2;-><init>(Lorg/teleal/cling/support/igd/PortMappingListener;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/support/model/PortMapping;Lorg/teleal/cling/support/model/PortMapping;Ljava/util/Iterator;)V

    .line 162
    invoke-virtual {v0}, Lorg/teleal/cling/support/igd/PortMappingListener$2;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    .end local v4    # "pm":Lorg/teleal/cling/support/model/PortMapping;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/support/model/PortMapping;>;"
    .end local v7    # "activeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/teleal/cling/model/meta/Service;Ljava/util/List<Lorg/teleal/cling/support/model/PortMapping;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V
    .locals 10
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/teleal/cling/support/igd/PortMappingListener;->discoverConnectionService(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "connectionService":Lorg/teleal/cling/model/meta/Service;
    if-nez v2, :cond_0

    .line 122
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_0
    :try_start_1
    sget-object v0, Lorg/teleal/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Activating port mappings on: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 103
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v6, "activeForService":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/PortMapping;>;"
    iget-object v8, p0, Lorg/teleal/cling/support/igd/PortMappingListener;->portMappings:[Lorg/teleal/cling/support/model/PortMapping;

    array-length v9, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-lt v7, v9, :cond_1

    .line 121
    iget-object v0, p0, Lorg/teleal/cling/support/igd/PortMappingListener;->activePortMappings:Ljava/util/Map;

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v2    # "connectionService":Lorg/teleal/cling/model/meta/Service;
    .end local v6    # "activeForService":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/PortMapping;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    .restart local v2    # "connectionService":Lorg/teleal/cling/model/meta/Service;
    .restart local v6    # "activeForService":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/PortMapping;>;"
    :cond_1
    :try_start_2
    aget-object v4, v8, v7

    .line 105
    .local v4, "pm":Lorg/teleal/cling/support/model/PortMapping;
    new-instance v0, Lorg/teleal/cling/support/igd/PortMappingListener$1;

    invoke-interface {p1}, Lorg/teleal/cling/registry/Registry;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v3

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/igd/PortMappingListener$1;-><init>(Lorg/teleal/cling/support/igd/PortMappingListener;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/support/model/PortMapping;Lorg/teleal/cling/support/model/PortMapping;Ljava/util/List;)V

    .line 118
    invoke-virtual {v0}, Lorg/teleal/cling/support/igd/PortMappingListener$1;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1
.end method

.method public declared-synchronized deviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V
    .locals 8
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->findServices()[Lorg/teleal/cling/model/meta/Service;

    move-result-object v5

    array-length v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    .line 138
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    aget-object v2, v5, v4

    .line 127
    .local v2, "service":Lorg/teleal/cling/model/meta/Service;
    iget-object v3, p0, Lorg/teleal/cling/support/igd/PortMappingListener;->activePortMappings:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 128
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/teleal/cling/model/meta/Service;Ljava/util/List<Lorg/teleal/cling/support/model/PortMapping;>;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 126
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 129
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    .local v0, "activeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/teleal/cling/model/meta/Service;Ljava/util/List<Lorg/teleal/cling/support/model/PortMapping;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/meta/Service;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v3, "Device disappeared, couldn\'t delete port mappings: "

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/teleal/cling/support/igd/PortMappingListener;->handleFailureMessage(Ljava/lang/String;)V

    .line 135
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 126
    .end local v0    # "activeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/teleal/cling/model/meta/Service;Ljava/util/List<Lorg/teleal/cling/support/model/PortMapping;>;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/teleal/cling/model/meta/Service;Ljava/util/List<Lorg/teleal/cling/support/model/PortMapping;>;>;>;"
    .end local v2    # "service":Lorg/teleal/cling/model/meta/Service;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected discoverConnectionService(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;
    .locals 7
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v4

    sget-object v5, Lorg/teleal/cling/support/igd/PortMappingListener;->IGD_DEVICE_TYPE:Lorg/teleal/cling/model/types/DeviceType;

    invoke-virtual {v4, v5}, Lorg/teleal/cling/model/types/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v2

    .line 172
    :cond_1
    sget-object v4, Lorg/teleal/cling/support/igd/PortMappingListener;->CONNECTION_DEVICE_TYPE:Lorg/teleal/cling/model/types/DeviceType;

    invoke-virtual {p1, v4}, Lorg/teleal/cling/model/meta/Device;->findDevices(Lorg/teleal/cling/model/types/DeviceType;)[Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    .line 173
    .local v1, "connectionDevices":[Lorg/teleal/cling/model/meta/Device;
    array-length v4, v1

    if-nez v4, :cond_2

    .line 174
    sget-object v4, Lorg/teleal/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IGD doesn\'t support \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lorg/teleal/cling/support/igd/PortMappingListener;->CONNECTION_DEVICE_TYPE:Lorg/teleal/cling/model/types/DeviceType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    const/4 v4, 0x0

    aget-object v0, v1, v4

    .line 179
    .local v0, "connectionDevice":Lorg/teleal/cling/model/meta/Device;
    sget-object v4, Lorg/teleal/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Using first discovered WAN connection device: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 181
    sget-object v4, Lorg/teleal/cling/support/igd/PortMappingListener;->IP_SERVICE_TYPE:Lorg/teleal/cling/model/types/ServiceType;

    invoke-virtual {v0, v4}, Lorg/teleal/cling/model/meta/Device;->findService(Lorg/teleal/cling/model/types/ServiceType;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    .line 182
    .local v2, "ipConnectionService":Lorg/teleal/cling/model/meta/Service;
    sget-object v4, Lorg/teleal/cling/support/igd/PortMappingListener;->PPP_SERVICE_TYPE:Lorg/teleal/cling/model/types/ServiceType;

    invoke-virtual {v0, v4}, Lorg/teleal/cling/model/meta/Device;->findService(Lorg/teleal/cling/model/types/ServiceType;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v3

    .line 184
    .local v3, "pppConnectionService":Lorg/teleal/cling/model/meta/Service;
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 185
    sget-object v4, Lorg/teleal/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IGD doesn\'t support IP or PPP WAN connection service: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 188
    :cond_3
    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0
.end method

.method protected handleFailureMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 192
    sget-object v0, Lorg/teleal/cling/support/igd/PortMappingListener;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 193
    return-void
.end method
