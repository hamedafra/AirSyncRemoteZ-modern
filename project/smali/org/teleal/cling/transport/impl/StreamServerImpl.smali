.class public Lorg/teleal/cling/transport/impl/StreamServerImpl;
.super Ljava/lang/Object;
.source "StreamServerImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/StreamServer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/transport/impl/StreamServerImpl$RequestHttpHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/teleal/cling/transport/spi/StreamServer",
        "<",
        "Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;

.field protected server:Lcom/sun/net/httpserver/HttpServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/teleal/cling/transport/spi/StreamServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;)V
    .locals 0
    .param p1, "configuration"    # Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->configuration:Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;

    .line 50
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->configuration:Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/teleal/cling/transport/spi/StreamServerConfiguration;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/StreamServerImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    invoke-virtual {v0}, Lcom/sun/net/httpserver/HttpServer;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I
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

.method public declared-synchronized init(Ljava/net/InetAddress;Lorg/teleal/cling/transport/Router;)V
    .locals 5
    .param p1, "bindAddress"    # Ljava/net/InetAddress;
    .param p2, "router"    # Lorg/teleal/cling/transport/Router;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->configuration:Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;

    invoke-virtual {v2}, Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;->getListenPort()I

    move-result v2

    invoke-direct {v1, p1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 56
    .local v1, "socketAddress":Ljava/net/InetSocketAddress;
    iget-object v2, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->configuration:Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;

    invoke-virtual {v2}, Lorg/teleal/cling/transport/impl/StreamServerConfigurationImpl;->getTcpConnectionBacklog()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sun/net/httpserver/HttpServer;->create(Ljava/net/InetSocketAddress;I)Lcom/sun/net/httpserver/HttpServer;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    .line 57
    iget-object v2, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    const-string v3, "/"

    new-instance v4, Lorg/teleal/cling/transport/impl/StreamServerImpl$RequestHttpHandler;

    invoke-direct {v4, p2}, Lorg/teleal/cling/transport/impl/StreamServerImpl$RequestHttpHandler;-><init>(Lorg/teleal/cling/transport/Router;)V

    invoke-virtual {v2, v3, v4}, Lcom/sun/net/httpserver/HttpServer;->createContext(Ljava/lang/String;Lcom/sun/net/httpserver/HttpHandler;)Lcom/sun/net/httpserver/HttpContext;

    .line 59
    sget-object v2, Lorg/teleal/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Created server (for receiving TCP streams) on: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    invoke-virtual {v4}, Lcom/sun/net/httpserver/HttpServer;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 61
    .end local v1    # "socketAddress":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lorg/teleal/cling/transport/spi/InitializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not initialize "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/teleal/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Starting StreamServer..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    invoke-virtual {v0}, Lcom/sun/net/httpserver/HttpServer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Stopping StreamServer..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/transport/impl/StreamServerImpl;->server:Lcom/sun/net/httpserver/HttpServer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/net/httpserver/HttpServer;->stop(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
