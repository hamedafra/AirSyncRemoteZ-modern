.class public Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;
.super Landroid/os/Binder;
.source "CoreUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoreUpnpServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;


# direct methods
.method public constructor <init>(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public addDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->addListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V

    .line 430
    :cond_1
    monitor-exit v1

    .line 431
    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addRegistryListener(Lorg/teleal/cling/registry/RegistryListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/teleal/cling/registry/RegistryListener;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$602(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/registry/RegistryListener;)Lorg/teleal/cling/registry/RegistryListener;

    .line 417
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/teleal/cling/registry/Registry;->addListener(Lorg/teleal/cling/registry/RegistryListener;)V

    .line 418
    return-void
.end method

.method public get()Lorg/teleal/cling/UpnpService;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

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
    .line 392
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1300(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDMS()Lorg/teleal/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1100(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method

.method public getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    return-object v0
.end method

.method public getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$800(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    return-object v0
.end method

.method public getRegistry()Lorg/teleal/cling/registry/Registry;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$700(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Z

    move-result v0

    return v0
.end method

.method public removeDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->removeListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V

    .line 438
    :cond_0
    monitor-exit v1

    .line 439
    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V
    .locals 5
    .param p1, "uDN"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 339
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1202(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/types/UDN;

    .line 341
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->dispose()V

    .line 344
    :cond_0
    if-nez p1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-direct {v2, v3}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$902(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    .line 348
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 351
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->addListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V

    goto :goto_0

    .line 352
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
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

    .line 383
    :goto_1
    return-void

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lorg/teleal/cling/registry/Registry;->getDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1302(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;

    .line 359
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1300(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    instance-of v1, v1, Lorg/teleal/cling/model/meta/RemoteDevice;

    if-eqz v1, :cond_4

    .line 361
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1300(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;-><init>(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$902(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    .line 363
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 365
    :try_start_2
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 366
    .restart local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->addListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V

    goto :goto_2

    .line 367
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 376
    :cond_4
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-direct {v2, v3}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$902(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    .line 378
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 379
    :try_start_4
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1400(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 380
    .restart local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$900(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->addListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V

    goto :goto_3

    .line 381
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :cond_5
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_1
.end method

.method public setCurrentDMS(Lorg/teleal/cling/model/types/UDN;)V
    .locals 4
    .param p1, "uDN"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    const/4 v3, 0x0

    .line 307
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1002(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/types/UDN;

    .line 309
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0, v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$802(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    .line 311
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lorg/teleal/cling/registry/Registry;->getDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1102(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;

    .line 313
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1100(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    instance-of v0, v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1100(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;-><init>(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$802(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    .line 320
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1100(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    instance-of v0, v0, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMSProcessorImpl;

    invoke-direct {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMSProcessorImpl;-><init>()V

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$802(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0, v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$802(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    goto :goto_0
.end method

.method public setDMSExported(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 422
    return-void
.end method

.method public setLiveTV(Lorg/teleal/cling/model/types/UDN;)V
    .locals 4
    .param p1, "uDN"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 323
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lorg/teleal/cling/registry/Registry;->getDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 325
    .local v0, "liveTVDevice":Lorg/teleal/cling/model/meta/Device;
    instance-of v1, v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;-><init>(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$802(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$802(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    goto :goto_0
.end method

.method public setProcessor(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$302(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;)Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;

    .line 413
    return-void
.end method

.method public stbOnline(Lorg/teleal/cling/model/types/UDN;)V
    .locals 3
    .param p1, "uDN"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1202(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/types/UDN;

    .line 335
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lorg/teleal/cling/registry/Registry;->getDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1302(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;

    .line 336
    return-void
.end method

.method public stopLoading()V
    .locals 0

    .prologue
    .line 452
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->stopLoading()V

    .line 453
    return-void
.end method

.method public updateOrCreateShareAMContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1700(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V

    .line 448
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1602(Z)Z

    .line 449
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
    .line 442
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceBinder;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1500(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;)V

    .line 443
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->access$1602(Z)Z

    .line 444
    return-void
.end method
