.class public Lorg/teleal/cling/UpnpServiceImpl;
.super Ljava/lang/Object;
.source "UpnpServiceImpl.java"

# interfaces
.implements Lorg/teleal/cling/UpnpService;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

.field protected final controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

.field protected final protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

.field protected final registry:Lorg/teleal/cling/registry/Registry;

.field protected final router:Lorg/teleal/cling/transport/Router;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/teleal/cling/UpnpServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/UpnpServiceImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;

    invoke-direct {v0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/teleal/cling/registry/RegistryListener;

    invoke-direct {p0, v0, v1}, Lorg/teleal/cling/UpnpServiceImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;[Lorg/teleal/cling/registry/RegistryListener;)V

    .line 59
    return-void
.end method

.method public varargs constructor <init>(Lorg/teleal/cling/UpnpServiceConfiguration;[Lorg/teleal/cling/registry/RegistryListener;)V
    .locals 4
    .param p1, "configuration"    # Lorg/teleal/cling/UpnpServiceConfiguration;
    .param p2, "registryListeners"    # [Lorg/teleal/cling/registry/RegistryListener;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/teleal/cling/UpnpServiceImpl;->configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

    .line 68
    sget-object v1, Lorg/teleal/cling/UpnpServiceImpl;->log:Ljava/util/logging/Logger;

    const-string v2, ">>> Starting UPnP service..."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 70
    sget-object v1, Lorg/teleal/cling/UpnpServiceImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using configuration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/UpnpServiceImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lorg/teleal/cling/UpnpServiceImpl;->createProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/UpnpServiceImpl;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    .line 76
    iget-object v1, p0, Lorg/teleal/cling/UpnpServiceImpl;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/UpnpServiceImpl;->createRegistry(Lorg/teleal/cling/protocol/ProtocolFactory;)Lorg/teleal/cling/registry/Registry;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/UpnpServiceImpl;->registry:Lorg/teleal/cling/registry/Registry;

    .line 77
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 81
    iget-object v1, p0, Lorg/teleal/cling/UpnpServiceImpl;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    iget-object v2, p0, Lorg/teleal/cling/UpnpServiceImpl;->registry:Lorg/teleal/cling/registry/Registry;

    invoke-virtual {p0, v1, v2}, Lorg/teleal/cling/UpnpServiceImpl;->createRouter(Lorg/teleal/cling/protocol/ProtocolFactory;Lorg/teleal/cling/registry/Registry;)Lorg/teleal/cling/transport/Router;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/UpnpServiceImpl;->router:Lorg/teleal/cling/transport/Router;

    .line 83
    iget-object v1, p0, Lorg/teleal/cling/UpnpServiceImpl;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    iget-object v2, p0, Lorg/teleal/cling/UpnpServiceImpl;->registry:Lorg/teleal/cling/registry/Registry;

    invoke-virtual {p0, v1, v2}, Lorg/teleal/cling/UpnpServiceImpl;->createControlPoint(Lorg/teleal/cling/protocol/ProtocolFactory;Lorg/teleal/cling/registry/Registry;)Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/UpnpServiceImpl;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    .line 85
    sget-object v1, Lorg/teleal/cling/UpnpServiceImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "<<< UPnP service started successfully"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 86
    return-void

    .line 77
    :cond_0
    aget-object v0, p2, v1

    .line 78
    .local v0, "registryListener":Lorg/teleal/cling/registry/RegistryListener;
    iget-object v3, p0, Lorg/teleal/cling/UpnpServiceImpl;->registry:Lorg/teleal/cling/registry/Registry;

    invoke-interface {v3, v0}, Lorg/teleal/cling/registry/Registry;->addListener(Lorg/teleal/cling/registry/RegistryListener;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public varargs constructor <init>([Lorg/teleal/cling/registry/RegistryListener;)V
    .locals 1
    .param p1, "registryListeners"    # [Lorg/teleal/cling/registry/RegistryListener;

    .prologue
    .line 62
    new-instance v0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;

    invoke-direct {v0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/teleal/cling/UpnpServiceImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;[Lorg/teleal/cling/registry/RegistryListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method protected createControlPoint(Lorg/teleal/cling/protocol/ProtocolFactory;Lorg/teleal/cling/registry/Registry;)Lorg/teleal/cling/controlpoint/ControlPoint;
    .locals 2
    .param p1, "protocolFactory"    # Lorg/teleal/cling/protocol/ProtocolFactory;
    .param p2, "registry"    # Lorg/teleal/cling/registry/Registry;

    .prologue
    .line 101
    new-instance v0, Lorg/teleal/cling/controlpoint/ControlPointImpl;

    invoke-virtual {p0}, Lorg/teleal/cling/UpnpServiceImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/teleal/cling/controlpoint/ControlPointImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;Lorg/teleal/cling/registry/Registry;)V

    return-object v0
.end method

.method protected createProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;

    invoke-direct {v0, p0}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;-><init>(Lorg/teleal/cling/UpnpService;)V

    return-object v0
.end method

.method protected createRegistry(Lorg/teleal/cling/protocol/ProtocolFactory;)Lorg/teleal/cling/registry/Registry;
    .locals 1
    .param p1, "protocolFactory"    # Lorg/teleal/cling/protocol/ProtocolFactory;

    .prologue
    .line 93
    new-instance v0, Lorg/teleal/cling/registry/RegistryImpl;

    invoke-direct {v0, p0}, Lorg/teleal/cling/registry/RegistryImpl;-><init>(Lorg/teleal/cling/UpnpService;)V

    return-object v0
.end method

.method protected createRouter(Lorg/teleal/cling/protocol/ProtocolFactory;Lorg/teleal/cling/registry/Registry;)Lorg/teleal/cling/transport/Router;
    .locals 2
    .param p1, "protocolFactory"    # Lorg/teleal/cling/protocol/ProtocolFactory;
    .param p2, "registry"    # Lorg/teleal/cling/registry/Registry;

    .prologue
    .line 97
    new-instance v0, Lorg/teleal/cling/transport/RouterImpl;

    invoke-virtual {p0}, Lorg/teleal/cling/UpnpServiceImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/teleal/cling/transport/RouterImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;)V

    return-object v0
.end method

.method public getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/teleal/cling/UpnpServiceImpl;->configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

    return-object v0
.end method

.method public getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/teleal/cling/UpnpServiceImpl;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    return-object v0
.end method

.method public getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/teleal/cling/UpnpServiceImpl;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    return-object v0
.end method

.method public getRegistry()Lorg/teleal/cling/registry/Registry;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/teleal/cling/UpnpServiceImpl;->registry:Lorg/teleal/cling/registry/Registry;

    return-object v0
.end method

.method public getRouter()Lorg/teleal/cling/transport/Router;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/teleal/cling/UpnpServiceImpl;->router:Lorg/teleal/cling/transport/Router;

    return-object v0
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/teleal/cling/UpnpServiceImpl;->log:Ljava/util/logging/Logger;

    const-string v1, ">>> Shutting down UPnP service..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lorg/teleal/cling/UpnpServiceImpl;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/registry/Registry;->shutdown()V

    .line 130
    invoke-virtual {p0}, Lorg/teleal/cling/UpnpServiceImpl;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/transport/Router;->shutdown()V

    .line 131
    invoke-virtual {p0}, Lorg/teleal/cling/UpnpServiceImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->shutdown()V

    .line 133
    sget-object v0, Lorg/teleal/cling/UpnpServiceImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "<<< UPnP service shutdown completed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
