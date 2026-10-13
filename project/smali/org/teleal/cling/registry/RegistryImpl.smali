.class public Lorg/teleal/cling/registry/RegistryImpl;
.super Ljava/lang/Object;
.source "RegistryImpl.java"

# interfaces
.implements Lorg/teleal/cling/registry/Registry;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final localItems:Lorg/teleal/cling/registry/LocalItems;

.field protected final pendingExecutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final registryListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/teleal/cling/registry/RegistryListener;",
            ">;"
        }
    .end annotation
.end field

.field protected registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;

.field protected final remoteItems:Lorg/teleal/cling/registry/RemoteItems;

.field protected remoteSubscriptionsLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final resourceItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/teleal/cling/registry/RegistryItem",
            "<",
            "Ljava/net/URI;",
            "Lorg/teleal/cling/model/resource/Resource;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final upnpService:Lorg/teleal/cling/UpnpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/teleal/cling/registry/Registry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;)V
    .locals 3
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteSubscriptionsLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 102
    new-instance v0, Lorg/teleal/cling/registry/RemoteItems;

    invoke-direct {v0, p0}, Lorg/teleal/cling/registry/RemoteItems;-><init>(Lorg/teleal/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    .line 103
    new-instance v0, Lorg/teleal/cling/registry/LocalItems;

    invoke-direct {v0, p0}, Lorg/teleal/cling/registry/LocalItems;-><init>(Lorg/teleal/cling/registry/RegistryImpl;)V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    .line 66
    sget-object v0, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating Registry: "

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
    iput-object p1, p0, Lorg/teleal/cling/registry/RegistryImpl;->upnpService:Lorg/teleal/cling/UpnpService;

    .line 70
    sget-object v0, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Starting registry background maintenance..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->createRegistryMaintainer()Lorg/teleal/cling/registry/RegistryMaintainer;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;

    .line 72
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addDevice(Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 1
    .param p1, "localDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/registry/LocalItems;->add(Lorg/teleal/cling/model/meta/LocalDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addDevice(Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 1
    .param p1, "remoteDevice"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/registry/RemoteItems;->add(Lorg/teleal/cling/model/meta/RemoteDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addListener(Lorg/teleal/cling/registry/RegistryListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/teleal/cling/registry/RegistryListener;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)V
    .locals 1
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/LocalGENASubscription;

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/registry/LocalItems;->addSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addRemoteSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
    .locals 1
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/registry/RemoteItems;->addSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResource(Lorg/teleal/cling/model/resource/Resource;)V
    .locals 1
    .param p1, "resource"    # Lorg/teleal/cling/model/resource/Resource;

    .prologue
    .line 302
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/registry/RegistryImpl;->addResource(Lorg/teleal/cling/model/resource/Resource;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResource(Lorg/teleal/cling/model/resource/Resource;I)V
    .locals 2
    .param p1, "resource"    # Lorg/teleal/cling/model/resource/Resource;
    .param p2, "maxAgeSeconds"    # I

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/teleal/cling/registry/RegistryItem;

    invoke-virtual {p1}, Lorg/teleal/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 307
    .local v0, "resourceItem":Lorg/teleal/cling/registry/RegistryItem;
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 308
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    monitor-exit p0

    return-void

    .line 306
    .end local v0    # "resourceItem":Lorg/teleal/cling/registry/RegistryItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected createRegistryMaintainer()Lorg/teleal/cling/registry/RegistryMaintainer;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lorg/teleal/cling/registry/RegistryMaintainer;

    .line 92
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryMaintenanceIntervalMillis()I

    move-result v1

    .line 90
    invoke-direct {v0, p0, v1}, Lorg/teleal/cling/registry/RegistryMaintainer;-><init>(Lorg/teleal/cling/registry/RegistryImpl;I)V

    return-object v0
.end method

.method declared-synchronized executeAsyncProtocol(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;
    .locals 2
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "rootOnly"    # Z

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v1, p1, p2}, Lorg/teleal/cling/registry/LocalItems;->get(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 192
    :goto_0
    monitor-exit p0

    return-object v1

    .line 191
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v1, p1, p2}, Lorg/teleal/cling/registry/RemoteItems;->get(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 192
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 190
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDevices()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 213
    .local v0, "all":Ljava/util/Set;
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v1}, Lorg/teleal/cling/registry/LocalItems;->get()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v1}, Lorg/teleal/cling/registry/RemoteItems;->get()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 215
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 212
    .end local v0    # "all":Ljava/util/Set;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDevices(Lorg/teleal/cling/model/types/DeviceType;)Ljava/util/Collection;
    .locals 2
    .param p1, "deviceType"    # Lorg/teleal/cling/model/types/DeviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/DeviceType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 221
    .local v0, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/meta/Device;>;"
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v1, p1}, Lorg/teleal/cling/registry/LocalItems;->get(Lorg/teleal/cling/model/types/DeviceType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 222
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v1, p1}, Lorg/teleal/cling/registry/RemoteItems;->get(Lorg/teleal/cling/model/types/DeviceType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 219
    .end local v0    # "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/meta/Device;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDevices(Lorg/teleal/cling/model/types/ServiceType;)Ljava/util/Collection;
    .locals 2
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/ServiceType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 230
    .local v0, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/meta/Device;>;"
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v1, p1}, Lorg/teleal/cling/registry/LocalItems;->get(Lorg/teleal/cling/model/types/ServiceType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 231
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v1, p1}, Lorg/teleal/cling/registry/RemoteItems;->get(Lorg/teleal/cling/model/types/ServiceType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 233
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 228
    .end local v0    # "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/meta/Device;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/registry/RegistryListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/LocalDevice;
    .locals 1
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "rootOnly"    # Z

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v0, p1, p2}, Lorg/teleal/cling/registry/LocalItems;->get(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/LocalDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalDevices()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/LocalDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v0}, Lorg/teleal/cling/registry/LocalItems;->get()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalSubscription(Ljava/lang/String;)Lorg/teleal/cling/model/gena/LocalGENASubscription;
    .locals 1
    .param p1, "subscriptionId"    # Ljava/lang/String;

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/registry/LocalItems;->getSubscription(Ljava/lang/String;)Lorg/teleal/cling/model/gena/GENASubscription;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/gena/LocalGENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getRemoteDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/RemoteDevice;
    .locals 1
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "rootOnly"    # Z

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v0, p1, p2}, Lorg/teleal/cling/registry/RemoteItems;->get(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteDevices()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/RemoteDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v0}, Lorg/teleal/cling/registry/RemoteItems;->get()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteSubscription(Ljava/lang/String;)Lorg/teleal/cling/model/gena/RemoteGENASubscription;
    .locals 1
    .param p1, "subscriptionId"    # Ljava/lang/String;

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/registry/RemoteItems;->getSubscription(Ljava/lang/String;)Lorg/teleal/cling/model/gena/GENASubscription;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/gena/RemoteGENASubscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;
    .locals 2
    .param p2, "pathQuery"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/teleal/cling/model/resource/Resource;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/net/URI;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "resourceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/teleal/cling/registry/RegistryImpl;->getResource(Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;

    move-result-object v0

    .line 278
    .local v0, "resource":Lorg/teleal/cling/model/resource/Resource;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    .end local v0    # "resource":Lorg/teleal/cling/model/resource/Resource;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "resource":Lorg/teleal/cling/model/resource/Resource;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    .end local v0    # "resource":Lorg/teleal/cling/model/resource/Resource;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getResource(Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;
    .locals 6
    .param p1, "pathQuery"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Resource URI can not be absolute, only path and query:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 253
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 262
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 263
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 265
    .local v0, "pathQueryWithoutSlash":Ljava/net/URI;
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_5

    .line 273
    .end local v0    # "pathQueryWithoutSlash":Ljava/net/URI;
    :cond_3
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    .line 253
    :cond_4
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/registry/RegistryItem;

    .line 254
    .local v2, "resourceItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;"
    invoke-virtual {v2}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/resource/Resource;

    .line 255
    .local v1, "resource":Lorg/teleal/cling/model/resource/Resource;
    invoke-virtual {v1, p1}, Lorg/teleal/cling/model/resource/Resource;->matches(Ljava/net/URI;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 265
    .end local v1    # "resource":Lorg/teleal/cling/model/resource/Resource;
    .end local v2    # "resourceItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;"
    .restart local v0    # "pathQueryWithoutSlash":Ljava/net/URI;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/registry/RegistryItem;

    .line 266
    .restart local v2    # "resourceItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;"
    invoke-virtual {v2}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/resource/Resource;

    .line 267
    .restart local v1    # "resource":Lorg/teleal/cling/model/resource/Resource;
    invoke-virtual {v1, v0}, Lorg/teleal/cling/model/resource/Resource;->matches(Ljava/net/URI;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized getResources()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/resource/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 286
    .local v1, "s":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/resource/Resource;>;"
    iget-object v2, p0, Lorg/teleal/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 289
    monitor-exit p0

    return-object v1

    .line 286
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/registry/RegistryItem;

    .line 287
    .local v0, "resourceItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;"
    invoke-virtual {v0}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/resource/Resource;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 285
    .end local v0    # "resourceItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;"
    .end local v1    # "s":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/resource/Resource;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getResources(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/teleal/cling/model/resource/Resource;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "resourceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 294
    .local v1, "s":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v2, p0, Lorg/teleal/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 298
    monitor-exit p0

    return-object v1

    .line 294
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/registry/RegistryItem;

    .line 295
    .local v0, "resourceItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;"
    invoke-virtual {v0}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/resource/Resource;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {v0}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/resource/Resource;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    .end local v0    # "resourceItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;"
    .end local v1    # "s":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getService(Lorg/teleal/cling/model/ServiceReference;)Lorg/teleal/cling/model/meta/Service;
    .locals 3
    .param p1, "serviceReference"    # Lorg/teleal/cling/model/ServiceReference;

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/teleal/cling/model/ServiceReference;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/teleal/cling/registry/RegistryImpl;->getDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p1}, Lorg/teleal/cling/model/ServiceReference;->getServiceId()Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/meta/Device;->findService(Lorg/teleal/cling/model/types/ServiceId;)Lorg/teleal/cling/model/meta/Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 241
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 238
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getUpnpService()Lorg/teleal/cling/UpnpService;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->upnpService:Lorg/teleal/cling/UpnpService;

    return-object v0
.end method

.method public declared-synchronized isPaused()Z
    .locals 1

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lockRemoteSubscriptions()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteSubscriptionsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 487
    return-void
.end method

.method declared-synchronized maintain()V
    .locals 7

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    sget-object v3, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    sget-object v3, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v4, "Maintaining registry..."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 412
    :cond_0
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 413
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 423
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 431
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v3}, Lorg/teleal/cling/registry/RemoteItems;->maintain()V

    .line 432
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v3}, Lorg/teleal/cling/registry/LocalItems;->maintain()V

    .line 435
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/teleal/cling/registry/RegistryImpl;->runPendingExecutions(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    .line 414
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/registry/RegistryItem;

    .line 415
    .local v1, "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;"
    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryItem;->getExpirationDetails()Lorg/teleal/cling/model/ExpirationDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/ExpirationDetails;->hasExpired()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    sget-object v3, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 417
    sget-object v3, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing expired resource: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 418
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 408
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;>;"
    .end local v1    # "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 423
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;>;"
    :cond_4
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/registry/RegistryItem;

    .line 424
    .local v2, "resourceItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;"
    invoke-virtual {v2}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/resource/Resource;

    .line 425
    iget-object v5, p0, Lorg/teleal/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    .line 426
    invoke-virtual {v2}, Lorg/teleal/cling/registry/RegistryItem;->getExpirationDetails()Lorg/teleal/cling/model/ExpirationDetails;

    move-result-object v6

    .line 424
    invoke-virtual {v3, v5, v6}, Lorg/teleal/cling/model/resource/Resource;->maintain(Ljava/util/List;Lorg/teleal/cling/model/ExpirationDetails;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized notifyDiscoveryFailure(Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "device"    # Lorg/teleal/cling/model/meta/RemoteDevice;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 147
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/registry/RegistryListener;

    .line 139
    .local v0, "listener":Lorg/teleal/cling/registry/RegistryListener;
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 140
    new-instance v3, Lorg/teleal/cling/registry/RegistryImpl$2;

    invoke-direct {v3, p0, v0, p1, p2}, Lorg/teleal/cling/registry/RegistryImpl$2;-><init>(Lorg/teleal/cling/registry/RegistryImpl;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V

    .line 139
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    .end local v0    # "listener":Lorg/teleal/cling/registry/RegistryListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized notifyDiscoveryStart(Lorg/teleal/cling/model/meta/RemoteDevice;)Z
    .locals 5
    .param p1, "device"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    const/4 v2, 0x1

    .line 121
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v3

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lorg/teleal/cling/registry/Registry;->getRemoteDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not notifying listeners, already registered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    const/4 v1, 0x0

    .line 134
    :goto_0
    monitor-exit p0

    return v1

    .line 125
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 134
    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/registry/RegistryListener;

    .line 126
    .local v0, "listener":Lorg/teleal/cling/registry/RegistryListener;
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v3

    invoke-interface {v3}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 127
    new-instance v4, Lorg/teleal/cling/registry/RegistryImpl$1;

    invoke-direct {v4, p0, v0, p1}, Lorg/teleal/cling/registry/RegistryImpl$1;-><init>(Lorg/teleal/cling/registry/RegistryImpl;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    .line 126
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 121
    .end local v0    # "listener":Lorg/teleal/cling/registry/RegistryListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;

    if-eqz v0, :cond_0

    .line 382
    sget-object v0, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Pausing registry maintenance"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/teleal/cling/registry/RegistryImpl;->runPendingExecutions(Z)V

    .line 384
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;

    invoke-virtual {v0}, Lorg/teleal/cling/registry/RegistryMaintainer;->stop()V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    monitor-exit p0

    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public printDebugLog()V
    .locals 6

    .prologue
    .line 459
    sget-object v3, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    sget-object v3, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v4, "====================================    REMOTE   ================================================"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 462
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v3}, Lorg/teleal/cling/registry/RemoteItems;->get()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 466
    sget-object v3, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v4, "====================================    LOCAL    ================================================"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 468
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v3}, Lorg/teleal/cling/registry/LocalItems;->get()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 472
    sget-object v3, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v4, "====================================  RESOURCES  ================================================"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 474
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 478
    sget-object v3, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v4, "================================================================================================="

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 482
    :cond_0
    return-void

    .line 462
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 463
    .local v1, "remoteDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    sget-object v4, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/RemoteDevice;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    .end local v1    # "remoteDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/LocalDevice;

    .line 469
    .local v0, "localDevice":Lorg/teleal/cling/model/meta/LocalDevice;
    sget-object v4, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/LocalDevice;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 474
    .end local v0    # "localDevice":Lorg/teleal/cling/model/meta/LocalDevice;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/registry/RegistryItem;

    .line 475
    .local v2, "resourceItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;"
    sget-object v4, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Lorg/teleal/cling/registry/RegistryItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public declared-synchronized removeAllLocalDevices()V
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v0}, Lorg/teleal/cling/registry/LocalItems;->removeAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAllRemoteDevices()V
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v0}, Lorg/teleal/cling/registry/RemoteItems;->removeAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeDevice(Lorg/teleal/cling/model/meta/LocalDevice;)Z
    .locals 1
    .param p1, "localDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/registry/LocalItems;->remove(Lorg/teleal/cling/model/meta/LocalDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeDevice(Lorg/teleal/cling/model/meta/RemoteDevice;)Z
    .locals 1
    .param p1, "remoteDevice"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/registry/RemoteItems;->remove(Lorg/teleal/cling/model/meta/RemoteDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeDevice(Lorg/teleal/cling/model/types/UDN;)Z
    .locals 2
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 180
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/teleal/cling/registry/RegistryImpl;->getDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 181
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v1, :cond_0

    .line 182
    check-cast v0, Lorg/teleal/cling/model/meta/LocalDevice;

    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    invoke-virtual {p0, v0}, Lorg/teleal/cling/registry/RegistryImpl;->removeDevice(Lorg/teleal/cling/model/meta/LocalDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 185
    :goto_0
    monitor-exit p0

    return v1

    .line 183
    .restart local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_0
    if-eqz v0, :cond_1

    :try_start_1
    instance-of v1, v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    if-eqz v1, :cond_1

    .line 184
    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    invoke-virtual {p0, v0}, Lorg/teleal/cling/registry/RegistryImpl;->removeDevice(Lorg/teleal/cling/model/meta/RemoteDevice;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 185
    .restart local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 180
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeListener(Lorg/teleal/cling/registry/RegistryListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/teleal/cling/registry/RegistryListener;

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Z
    .locals 1
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/LocalGENASubscription;

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/registry/LocalItems;->removeSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRemoteSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
    .locals 1
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/registry/RemoteItems;->removeSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeResource(Lorg/teleal/cling/model/resource/Resource;)Z
    .locals 3
    .param p1, "resource"    # Lorg/teleal/cling/model/resource/Resource;

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    new-instance v1, Lorg/teleal/cling/registry/RegistryItem;

    invoke-virtual {p1}, Lorg/teleal/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 2

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;

    if-nez v0, :cond_0

    .line 391
    sget-object v0, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Resuming registry maintenance"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v0}, Lorg/teleal/cling/registry/RemoteItems;->resume()V

    .line 393
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->createRegistryMaintainer()Lorg/teleal/cling/registry/RegistryMaintainer;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;

    .line 394
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_0
    monitor-exit p0

    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized runPendingExecutions(Z)V
    .locals 4
    .param p1, "async"    # Z

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    sget-object v1, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing pending operations: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 445
    :cond_0
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 451
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 452
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :cond_1
    monitor-exit p0

    return-void

    .line 445
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 446
    .local v0, "pendingExecution":Ljava/lang/Runnable;
    if-eqz p1, :cond_3

    .line 447
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RegistryImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 443
    .end local v0    # "pendingExecution":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 449
    .restart local v0    # "pendingExecution":Ljava/lang/Runnable;
    :cond_3
    :try_start_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized shutdown()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 353
    monitor-enter p0

    :try_start_0
    sget-object v4, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "Shutting down registry..."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 355
    iget-object v4, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;

    if-eqz v4, :cond_0

    .line 356
    iget-object v4, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryMaintainer:Lorg/teleal/cling/registry/RegistryMaintainer;

    invoke-virtual {v4}, Lorg/teleal/cling/registry/RegistryMaintainer;->stop()V

    .line 360
    :cond_0
    sget-object v4, Lorg/teleal/cling/registry/RegistryImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Executing final pending operations on shutdown: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/teleal/cling/registry/RegistryImpl;->pendingExecutions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 361
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/teleal/cling/registry/RegistryImpl;->runPendingExecutions(Z)V

    .line 363
    iget-object v4, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 367
    iget-object v4, p0, Lorg/teleal/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    iget-object v5, p0, Lorg/teleal/cling/registry/RegistryImpl;->resourceItems:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Lorg/teleal/cling/registry/RegistryItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/teleal/cling/registry/RegistryItem;

    .line 368
    .local v2, "resources":[Lorg/teleal/cling/registry/RegistryItem;
    array-length v5, v2

    move v4, v3

    :goto_1
    if-lt v4, v5, :cond_2

    .line 372
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v3}, Lorg/teleal/cling/registry/RemoteItems;->shutdown()V

    .line 373
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v3}, Lorg/teleal/cling/registry/LocalItems;->shutdown()V

    .line 375
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryImpl;->registryListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 378
    monitor-exit p0

    return-void

    .line 363
    .end local v2    # "resources":[Lorg/teleal/cling/registry/RegistryItem;
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/registry/RegistryListener;

    .line 364
    .local v0, "listener":Lorg/teleal/cling/registry/RegistryListener;
    invoke-interface {v0, p0}, Lorg/teleal/cling/registry/RegistryListener;->beforeShutdown(Lorg/teleal/cling/registry/Registry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 353
    .end local v0    # "listener":Lorg/teleal/cling/registry/RegistryListener;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 368
    .restart local v2    # "resources":[Lorg/teleal/cling/registry/RegistryItem;
    :cond_2
    :try_start_2
    aget-object v1, v2, v4

    .line 369
    .local v1, "resourceItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;"
    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/resource/Resource;

    invoke-virtual {v3}, Lorg/teleal/cling/model/resource/Resource;->shutdown()V

    .line 368
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 375
    .end local v1    # "resourceItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/net/URI;Lorg/teleal/cling/model/resource/Resource;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/registry/RegistryListener;

    .line 376
    .restart local v0    # "listener":Lorg/teleal/cling/registry/RegistryListener;
    invoke-interface {v0}, Lorg/teleal/cling/registry/RegistryListener;->afterShutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public unlockRemoteSubscriptions()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteSubscriptionsLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 492
    return-void
.end method

.method public declared-synchronized update(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)Z
    .locals 1
    .param p1, "rdIdentity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/registry/RemoteItems;->update(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Z
    .locals 1
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/LocalGENASubscription;

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->localItems:Lorg/teleal/cling/registry/LocalItems;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/registry/LocalItems;->updateSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateRemoteSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
    .locals 1
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl;->remoteItems:Lorg/teleal/cling/registry/RemoteItems;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/registry/RemoteItems;->updateSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
