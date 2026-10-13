.class public Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;
.super Ljava/lang/Object;
.source "UpnpProcessorImpl.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;
.implements Lorg/teleal/cling/registry/RegistryListener;
.implements Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;


# static fields
.field private static upnpProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;


# instance fields
.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/meta/Device;",
            ">;"
        }
    .end annotation
.end field

.field private devicesListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;",
            ">;"
        }
    .end annotation
.end field

.field private playlistListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;",
            ">;"
        }
    .end annotation
.end field

.field private playlistProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private systemListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;",
            ">;"
        }
    .end annotation
.end field

.field private upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devices:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistListeners:Ljava/util/List;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->fireOnStartCompleteEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->fireOnStartFailedEvent()V

    return-void
.end method

.method private addSTBDMR(Lorg/teleal/cling/model/meta/Device;)V
    .locals 6
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 238
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Come into addSTBDMR device"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMR()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .local v0, "dmrDevice":Lorg/teleal/cling/model/meta/Device;
    move-object v3, p1

    .line 240
    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v2

    .line 241
    .local v2, "url":Ljava/net/URL;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The device port is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isSTBDMR(Lorg/teleal/cling/model/meta/Device;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSTBDMR It is not null device\'s name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSTBDMR Dmr list size is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v5

    invoke-interface {v5}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isSTBDMR(Lorg/teleal/cling/model/meta/Device;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    .line 250
    .local v1, "udn":Lorg/teleal/cling/model/types/UDN;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->stbOnline(Lorg/teleal/cling/model/types/UDN;)V

    goto :goto_0
.end method

.method private fireDeviceAddedEvent(Lorg/teleal/cling/model/meta/Device;)V
    .locals 4
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 301
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 302
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    monitor-enter v2

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    .line 304
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;
    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;->onDeviceAdded(Lorg/teleal/cling/model/meta/Device;)V

    goto :goto_0

    .line 307
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :cond_2
    return-void
.end method

.method private fireDeviceRemovedEvent(Lorg/teleal/cling/model/meta/Device;)V
    .locals 4
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 322
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 323
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    monitor-enter v2

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    .line 325
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;
    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;->onDeviceRemoved(Lorg/teleal/cling/model/meta/Device;)V

    goto :goto_0

    .line 328
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :cond_2
    return-void
.end method

.method private fireDeviceUpdateEvent(Lorg/teleal/cling/model/meta/Device;)V
    .locals 4
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 311
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 312
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    monitor-enter v2

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    .line 314
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;
    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;->onDeviceUpdate(Lorg/teleal/cling/model/meta/Device;)V

    goto :goto_0

    .line 317
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :cond_2
    return-void
.end method

.method private fireOnDMRChangedEvent()V
    .locals 4

    .prologue
    .line 342
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 343
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    monitor-enter v2

    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    .line 345
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;
    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;->onDMRChanged()V

    goto :goto_0

    .line 348
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :cond_2
    return-void
.end method

.method private fireOnDMSChangedEvent()V
    .locals 4

    .prologue
    .line 332
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 333
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    monitor-enter v2

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    .line 335
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;
    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;->onDMSChanged()V

    goto :goto_0

    .line 338
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :cond_2
    return-void
.end method

.method private fireOnNetworkChangedEvent()V
    .locals 4

    .prologue
    .line 188
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 189
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    monitor-enter v2

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    .line 191
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;->onNetworkChanged()V

    goto :goto_0

    .line 194
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :cond_2
    return-void
.end method

.method private fireOnRouterDisabledEvent()V
    .locals 4

    .prologue
    .line 198
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 199
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    monitor-enter v2

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    .line 201
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;->onRouterDisabledEvent()V

    goto :goto_0

    .line 204
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :cond_2
    return-void
.end method

.method private fireOnRouterEnabledEvent()V
    .locals 4

    .prologue
    .line 208
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 209
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    monitor-enter v2

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    .line 211
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;->onRouterEnabledEvent()V

    goto :goto_0

    .line 214
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :cond_2
    return-void
.end method

.method private fireOnRouterErrorEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 179
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    monitor-enter v2

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    .line 181
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;->onRouterError(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :cond_2
    return-void
.end method

.method private fireOnStartCompleteEvent()V
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 159
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    .line 161
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;->onStartComplete()V

    goto :goto_0

    .line 164
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_2
    return-void
.end method

.method private fireOnStartFailedEvent()V
    .locals 4

    .prologue
    .line 168
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 169
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    monitor-enter v2

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    .line 171
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;->onStartFailed()V

    goto :goto_0

    .line 174
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :cond_2
    return-void
.end method

.method public static getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;

    invoke-direct {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;-><init>()V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    .line 60
    :cond_0
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    return-object v0
.end method

.method private removeSTBDMR(Lorg/teleal/cling/model/meta/Device;)V
    .locals 2
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 273
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isSTBDMR(Lorg/teleal/cling/model/meta/Device;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 277
    :cond_0
    return-void
.end method


# virtual methods
.method public addDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->addDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V

    .line 516
    :cond_0
    return-void
.end method

.method public addDevicesListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addPlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    .prologue
    .line 526
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistListeners:Ljava/util/List;

    monitor-enter v1

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->addListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V

    .line 531
    :cond_1
    monitor-exit v1

    .line 532
    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSystemListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    .prologue
    .line 475
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_0
    monitor-exit v1

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public afterShutdown()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public beforeShutdown(Lorg/teleal/cling/registry/Registry;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;

    .prologue
    .line 293
    return-void
.end method

.method public bindUpnpService()V
    .locals 4

    .prologue
    .line 65
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl$1;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;)V

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->serviceConnection:Landroid/content/ServiceConnection;

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 88
    return-void
.end method

.method public getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentDMR()Lorg/teleal/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getCurrentDMR()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentDMS()Lorg/teleal/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDMRList()Ljava/util/Collection;
    .locals 4
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
    .line 362
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    new-instance v1, Lorg/teleal/cling/model/types/DeviceType;

    const-string v2, "schemas-upnp-org"

    const-string v3, "MediaRenderer"

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/types/DeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/teleal/cling/registry/Registry;->getDevices(Lorg/teleal/cling/model/types/DeviceType;)Ljava/util/Collection;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDMSDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/meta/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devices:Ljava/util/List;

    return-object v0
.end method

.method public getDMSList()Ljava/util/Collection;
    .locals 4
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
    .line 354
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    new-instance v1, Lorg/teleal/cling/model/types/DeviceType;

    const-string v2, "schemas-upnp-org"

    const-string v3, "MediaServer"

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/types/DeviceType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/teleal/cling/registry/Registry;->getDevices(Lorg/teleal/cling/model/types/DeviceType;)Ljava/util/Collection;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    return-object v0
.end method

.method public getRegistry()Lorg/teleal/cling/registry/Registry;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    return-object v0
.end method

.method public localDeviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 3
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 281
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Come into localDeviceAdded!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/LocalDevice;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, p2}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->fireDeviceAddedEvent(Lorg/teleal/cling/model/meta/Device;)V

    .line 283
    return-void
.end method

.method public localDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 3
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 287
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Come into localDeviceRemoved!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/LocalDevice;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, p2}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->fireDeviceRemovedEvent(Lorg/teleal/cling/model/meta/Device;)V

    .line 289
    return-void
.end method

.method public onNetworkChanged(Ljava/net/NetworkInterface;)V
    .locals 0
    .param p1, "ni"    # Ljava/net/NetworkInterface;

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->fireOnNetworkChangedEvent()V

    .line 439
    return-void
.end method

.method public onRouterDisabled()V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->fireOnRouterDisabledEvent()V

    .line 449
    return-void
.end method

.method public onRouterEnabled()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->fireOnRouterEnabledEvent()V

    .line 454
    return-void
.end method

.method public onRouterError(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->fireOnRouterErrorEvent(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public refreshDevice(Lorg/teleal/cling/model/types/UDN;)V
    .locals 2
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/teleal/cling/registry/Registry;->removeDevice(Lorg/teleal/cling/model/types/UDN;)Z

    .line 502
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v0

    new-instance v1, Lorg/teleal/cling/model/message/header/UDNHeader;

    invoke-direct {v1, p1}, Lorg/teleal/cling/model/message/header/UDNHeader;-><init>(Lorg/teleal/cling/model/types/UDN;)V

    invoke-interface {v0, v1}, Lorg/teleal/cling/controlpoint/ControlPoint;->search(Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 504
    :cond_0
    return-void
.end method

.method public refreshDevicesList()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/registry/Registry;->removeAllRemoteDevices()V

    .line 494
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/controlpoint/ControlPoint;->search()V

    .line 496
    :cond_0
    return-void
.end method

.method public remoteDeviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 3
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    .line 227
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Come into remoteDeviceAdded!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/RemoteDevice;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/RemoteDevice;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "schemas-upnp-org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/RemoteDevice;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRenderer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0, p2}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->addSTBDMR(Lorg/teleal/cling/model/meta/Device;)V

    .line 234
    :cond_0
    invoke-direct {p0, p2}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->fireDeviceAddedEvent(Lorg/teleal/cling/model/meta/Device;)V

    .line 235
    return-void
.end method

.method public remoteDeviceDiscoveryFailed(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/RemoteDevice;
    .param p3, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 223
    return-void
.end method

.method public remoteDeviceDiscoveryStarted(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    .line 219
    return-void
.end method

.method public remoteDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 3
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    .line 262
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Come into remoteDeviceRemoved!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/RemoteDevice;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/RemoteDevice;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "schemas-upnp-org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/RemoteDevice;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRenderer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0, p2}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->removeSTBDMR(Lorg/teleal/cling/model/meta/Device;)V

    .line 269
    :cond_0
    invoke-direct {p0, p2}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->fireDeviceRemovedEvent(Lorg/teleal/cling/model/meta/Device;)V

    .line 270
    return-void
.end method

.method public remoteDeviceUpdated(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 3
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    .line 256
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Come into remoteDeviceUpdated!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/RemoteDevice;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, p2}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->fireDeviceUpdateEvent(Lorg/teleal/cling/model/meta/Device;)V

    .line 258
    return-void
.end method

.method public removeAllRemoteDevices()V
    .locals 2

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/registry/Registry;->removeAllRemoteDevices()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->removeDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V

    .line 522
    :cond_0
    return-void
.end method

.method public removeDevicesListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devicesListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    monitor-exit v1

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    .prologue
    .line 536
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistListeners:Ljava/util/List;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->removeListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V

    .line 540
    :cond_0
    monitor-exit v1

    .line 541
    return-void

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeSystemListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    .prologue
    .line 483
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    monitor-enter v1

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->systemListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 486
    :cond_0
    monitor-exit v1

    .line 488
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public searchAll()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/registry/Registry;->removeAllRemoteDevices()V

    .line 129
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/controlpoint/ControlPoint;->search()V

    .line 131
    :cond_0
    return-void
.end method

.method public setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V
    .locals 1
    .param p1, "uDN"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 402
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->fireOnDMRChangedEvent()V

    .line 407
    :cond_0
    return-void
.end method

.method public setCurrentDMS(Lorg/teleal/cling/model/types/UDN;)V
    .locals 1
    .param p1, "uDN"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->setCurrentDMS(Lorg/teleal/cling/model/types/UDN;)V

    .line 377
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->fireOnDMSChangedEvent()V

    .line 378
    return-void
.end method

.method public setDMSDevice(Lorg/teleal/cling/model/meta/Device;)V
    .locals 4
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 551
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/Device;

    .line 552
    .local v0, "item":Lorg/teleal/cling/model/meta/Device;
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    .end local v0    # "item":Lorg/teleal/cling/model/meta/Device;
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->devices:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDMSExproted(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 508
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->setDMSExported(Z)V

    .line 510
    :cond_0
    return-void
.end method

.method public setLiveTV(Lorg/teleal/cling/model/types/UDN;)V
    .locals 1
    .param p1, "uDN"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->setLiveTV(Lorg/teleal/cling/model/types/UDN;)V

    .line 384
    return-void
.end method

.method public setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V
    .locals 4
    .param p1, "processor"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    .line 460
    if-nez p1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 471
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistListeners:Ljava/util/List;

    monitor-enter v2

    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    .line 468
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->playlistProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    invoke-interface {v3, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->addListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V

    goto :goto_1

    .line 469
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stbOnline(Lorg/teleal/cling/model/types/UDN;)V
    .locals 1
    .param p1, "uDN"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->stbOnline(Lorg/teleal/cling/model/types/UDN;)V

    .line 389
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->stopLoading()V

    .line 547
    :cond_0
    return-void
.end method

.method public unbindUpnpService()V
    .locals 3

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->serviceConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 94
    :try_start_1
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 99
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 100
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateOrCreateShareAMContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->updateOrCreateShareAMContent()V

    .line 124
    :cond_0
    return-void
.end method

.method public updateOrCreateShareContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->upnpService:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->updateOrCreateShareContent()V

    .line 118
    :cond_0
    return-void
.end method
