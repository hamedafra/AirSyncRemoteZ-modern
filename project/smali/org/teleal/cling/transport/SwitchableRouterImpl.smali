.class public Lorg/teleal/cling/transport/SwitchableRouterImpl;
.super Ljava/lang/Object;
.source "SwitchableRouterImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/SwitchableRouter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/transport/SwitchableRouterImpl$DisabledNetworkAddressFactory;,
        Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

.field private final protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

.field protected readLock:Ljava/util/concurrent/locks/Lock;

.field private router:Lorg/teleal/cling/transport/Router;

.field protected routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lorg/teleal/cling/transport/Router;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;)V
    .locals 2
    .param p1, "configuration"    # Lorg/teleal/cling/UpnpServiceConfiguration;
    .param p2, "protocolFactory"    # Lorg/teleal/cling/protocol/ProtocolFactory;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 75
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    .line 76
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->routerLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 79
    iput-object p1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

    .line 80
    iput-object p2, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    .line 81
    return-void
.end method


# virtual methods
.method public broadcast([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 199
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    invoke-interface {v0, p1}, Lorg/teleal/cling/transport/Router;->broadcast([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 203
    return-void

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 202
    throw v0
.end method

.method public disable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Disabling network transport router"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    invoke-interface {v0}, Lorg/teleal/cling/transport/Router;->shutdown()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 130
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 132
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 135
    throw v0
.end method

.method public enable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 103
    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 105
    :try_start_1
    sget-object v1, Lorg/teleal/cling/transport/SwitchableRouterImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "Enabling network transport router"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    new-instance v1, Lorg/teleal/cling/transport/RouterImpl;

    invoke-virtual {p0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-virtual {p0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/transport/RouterImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;)V

    iput-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;
    :try_end_1
    .catch Lorg/teleal/cling/transport/spi/InitializationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 107
    const/4 v1, 0x1

    .line 112
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Lorg/teleal/cling/transport/spi/InitializationException;
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->handleStartFailure(Lorg/teleal/cling/transport/spi/InitializationException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .end local v0    # "ex":Lorg/teleal/cling/transport/spi/InitializationException;
    :cond_0
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 112
    const/4 v1, 0x0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    .line 114
    iget-object v2, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v2}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 115
    throw v1
.end method

.method public getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;
    .locals 2
    .param p1, "preferredAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/NetworkAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 150
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    invoke-interface {v0, p1}, Lorg/teleal/cling/transport/Router;->getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 152
    :goto_0
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 150
    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 153
    throw v0
.end method

.method public getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

    return-object v0
.end method

.method protected getLockTimeoutMillis()I
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0x1770

    return v0
.end method

.method public getNetworkAddressFactory()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    invoke-interface {v0}, Lorg/teleal/cling/transport/Router;->getNetworkAddressFactory()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 143
    :goto_0
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 141
    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/teleal/cling/transport/SwitchableRouterImpl$DisabledNetworkAddressFactory;

    invoke-direct {v0, p0}, Lorg/teleal/cling/transport/SwitchableRouterImpl$DisabledNetworkAddressFactory;-><init>(Lorg/teleal/cling/transport/SwitchableRouterImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 144
    throw v0
.end method

.method public getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    return-object v0
.end method

.method public handleStartFailure(Lorg/teleal/cling/transport/spi/InitializationException;)V
    .locals 3
    .param p1, "ex"    # Lorg/teleal/cling/transport/spi/InitializationException;

    .prologue
    .line 119
    sget-object v0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to initialize network router: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public isEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 96
    :goto_0
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 94
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 97
    throw v0
.end method

.method protected lock(Ljava/util/concurrent/locks/Lock;)V
    .locals 1
    .param p1, "lock"    # Ljava/util/concurrent/locks/Lock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->getLockTimeoutMillis()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->lock(Ljava/util/concurrent/locks/Lock;I)V

    .line 220
    return-void
.end method

.method protected lock(Ljava/util/concurrent/locks/Lock;I)V
    .locals 4
    .param p1, "lock"    # Ljava/util/concurrent/locks/Lock;
    .param p2, "timeoutMilliseconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    sget-object v1, Lorg/teleal/cling/transport/SwitchableRouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to obtain lock with timeout milliseconds \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 208
    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v1}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    sget-object v1, Lorg/teleal/cling/transport/SwitchableRouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Acquired router lock: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 216
    return-void

    .line 211
    :cond_0
    new-instance v1, Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to acquire router lock: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to acquire router lock: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public received(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    .locals 2
    .param p1, "msg"    # Lorg/teleal/cling/model/message/IncomingDatagramMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 163
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    invoke-interface {v0, p1}, Lorg/teleal/cling/transport/Router;->received(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 167
    return-void

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 166
    throw v0
.end method

.method public received(Lorg/teleal/cling/transport/spi/UpnpStream;)V
    .locals 2
    .param p1, "stream"    # Lorg/teleal/cling/transport/spi/UpnpStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    invoke-interface {v0, p1}, Lorg/teleal/cling/transport/Router;->received(Lorg/teleal/cling/transport/spi/UpnpStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 176
    return-void

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 175
    throw v0
.end method

.method public send(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 2
    .param p1, "msg"    # Lorg/teleal/cling/model/message/StreamRequestMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 190
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    invoke-interface {v0, p1}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 192
    :goto_0
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 190
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    .line 192
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 193
    throw v0
.end method

.method public send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V
    .locals 2
    .param p1, "msg"    # Lorg/teleal/cling/model/message/OutgoingDatagramMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->router:Lorg/teleal/cling/transport/Router;

    invoke-interface {v0, p1}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 185
    return-void

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    iget-object v1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {p0, v1}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->unlock(Ljava/util/concurrent/locks/Lock;)V

    .line 184
    throw v0
.end method

.method public shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/SwitchableRouterImpl$RouterLockAcquisitionException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/teleal/cling/transport/SwitchableRouterImpl;->disable()Z

    .line 158
    return-void
.end method

.method protected unlock(Ljava/util/concurrent/locks/Lock;)V
    .locals 3
    .param p1, "lock"    # Ljava/util/concurrent/locks/Lock;

    .prologue
    .line 223
    sget-object v0, Lorg/teleal/cling/transport/SwitchableRouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Releasing router lock: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 224
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 225
    return-void
.end method
