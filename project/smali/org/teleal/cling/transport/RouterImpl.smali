.class public Lorg/teleal/cling/transport/RouterImpl;
.super Ljava/lang/Object;
.source "RouterImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/Router;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

.field protected final datagramIOs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Lorg/teleal/cling/transport/spi/DatagramIO;",
            ">;"
        }
    .end annotation
.end field

.field protected final multicastReceivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/NetworkInterface;",
            "Lorg/teleal/cling/transport/spi/MulticastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field protected final networkAddressFactory:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

.field protected final protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

.field protected final streamClient:Lorg/teleal/cling/transport/spi/StreamClient;

.field protected final streamServers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Lorg/teleal/cling/transport/spi/StreamServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/teleal/cling/transport/Router;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;)V
    .locals 13
    .param p1, "configuration"    # Lorg/teleal/cling/UpnpServiceConfiguration;
    .param p2, "protocolFactory"    # Lorg/teleal/cling/protocol/ProtocolFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/teleal/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    .line 68
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/teleal/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    .line 69
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/teleal/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    .line 87
    sget-object v8, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Creating Router: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lorg/teleal/cling/transport/RouterImpl;->configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

    .line 90
    iput-object p2, p0, Lorg/teleal/cling/transport/RouterImpl;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    .line 92
    sget-object v8, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    const-string v9, "Starting networking services..."

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v8

    invoke-interface {v8}, Lorg/teleal/cling/UpnpServiceConfiguration;->createNetworkAddressFactory()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    move-result-object v8

    iput-object v8, p0, Lorg/teleal/cling/transport/RouterImpl;->networkAddressFactory:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    .line 95
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v8

    invoke-interface {v8}, Lorg/teleal/cling/UpnpServiceConfiguration;->createStreamClient()Lorg/teleal/cling/transport/spi/StreamClient;

    move-result-object v8

    iput-object v8, p0, Lorg/teleal/cling/transport/RouterImpl;->streamClient:Lorg/teleal/cling/transport/spi/StreamClient;

    .line 97
    iget-object v8, p0, Lorg/teleal/cling/transport/RouterImpl;->networkAddressFactory:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v8}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->getNetworkInterfaces()[Ljava/net/NetworkInterface;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v10, :cond_0

    .line 104
    iget-object v8, p0, Lorg/teleal/cling/transport/RouterImpl;->networkAddressFactory:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v8}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->getBindAddresses()[Ljava/net/InetAddress;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v10, :cond_2

    .line 117
    iget-object v8, p0, Lorg/teleal/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 123
    iget-object v8, p0, Lorg/teleal/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 129
    iget-object v8, p0, Lorg/teleal/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 135
    return-void

    .line 97
    :cond_0
    aget-object v6, v9, v8

    .line 98
    .local v6, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v11

    iget-object v12, p0, Lorg/teleal/cling/transport/RouterImpl;->networkAddressFactory:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v11, v12}, Lorg/teleal/cling/UpnpServiceConfiguration;->createMulticastReceiver(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/spi/MulticastReceiver;

    move-result-object v5

    .line 99
    .local v5, "multicastReceiver":Lorg/teleal/cling/transport/spi/MulticastReceiver;
    if-eqz v5, :cond_1

    .line 100
    iget-object v11, p0, Lorg/teleal/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    invoke-interface {v11, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 104
    .end local v5    # "multicastReceiver":Lorg/teleal/cling/transport/spi/MulticastReceiver;
    .end local v6    # "networkInterface":Ljava/net/NetworkInterface;
    :cond_2
    aget-object v4, v9, v8

    .line 106
    .local v4, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v11

    iget-object v12, p0, Lorg/teleal/cling/transport/RouterImpl;->networkAddressFactory:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v11, v12}, Lorg/teleal/cling/UpnpServiceConfiguration;->createDatagramIO(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/spi/DatagramIO;

    move-result-object v0

    .line 107
    .local v0, "datagramIO":Lorg/teleal/cling/transport/spi/DatagramIO;
    if-eqz v0, :cond_3

    .line 108
    iget-object v11, p0, Lorg/teleal/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    invoke-interface {v11, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_3
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v11

    iget-object v12, p0, Lorg/teleal/cling/transport/RouterImpl;->networkAddressFactory:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    invoke-interface {v11, v12}, Lorg/teleal/cling/UpnpServiceConfiguration;->createStreamServer(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/spi/StreamServer;

    move-result-object v7

    .line 111
    .local v7, "streamServer":Lorg/teleal/cling/transport/spi/StreamServer;
    if-eqz v7, :cond_4

    .line 112
    iget-object v11, p0, Lorg/teleal/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    invoke-interface {v11, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "datagramIO":Lorg/teleal/cling/transport/spi/DatagramIO;
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    .end local v7    # "streamServer":Lorg/teleal/cling/transport/spi/StreamServer;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 118
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lorg/teleal/cling/transport/spi/StreamServer;>;"
    sget-object v8, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Starting stream server on address: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 119
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/teleal/cling/transport/spi/StreamServer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/InetAddress;

    invoke-interface {v8, v9, p0}, Lorg/teleal/cling/transport/spi/StreamServer;->init(Ljava/net/InetAddress;Lorg/teleal/cling/transport/Router;)V

    .line 120
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v8

    invoke-interface {v8}, Lorg/teleal/cling/UpnpServiceConfiguration;->getStreamServerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-interface {v9, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 123
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lorg/teleal/cling/transport/spi/StreamServer;>;"
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 124
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/NetworkInterface;Lorg/teleal/cling/transport/spi/MulticastReceiver;>;"
    sget-object v9, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v8, "Starting multicast receiver on interface: "

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/NetworkInterface;

    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 125
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/teleal/cling/transport/spi/MulticastReceiver;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/NetworkInterface;

    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v11

    invoke-interface {v11}, Lorg/teleal/cling/UpnpServiceConfiguration;->getDatagramProcessor()Lorg/teleal/cling/transport/spi/DatagramProcessor;

    move-result-object v11

    invoke-interface {v8, v9, p0, v11}, Lorg/teleal/cling/transport/spi/MulticastReceiver;->init(Ljava/net/NetworkInterface;Lorg/teleal/cling/transport/Router;Lorg/teleal/cling/transport/spi/DatagramProcessor;)V

    .line 126
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v8

    invoke-interface {v8}, Lorg/teleal/cling/UpnpServiceConfiguration;->getMulticastReceiverExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-interface {v9, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 129
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/NetworkInterface;Lorg/teleal/cling/transport/spi/MulticastReceiver;>;"
    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 130
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lorg/teleal/cling/transport/spi/DatagramIO;>;"
    sget-object v8, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Starting datagram I/O on address: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/teleal/cling/transport/spi/DatagramIO;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/InetAddress;

    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v11

    invoke-interface {v11}, Lorg/teleal/cling/UpnpServiceConfiguration;->getDatagramProcessor()Lorg/teleal/cling/transport/spi/DatagramProcessor;

    move-result-object v11

    invoke-interface {v8, v9, p0, v11}, Lorg/teleal/cling/transport/spi/DatagramIO;->init(Ljava/net/InetAddress;Lorg/teleal/cling/transport/Router;Lorg/teleal/cling/transport/spi/DatagramProcessor;)V

    .line 132
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v8

    invoke-interface {v8}, Lorg/teleal/cling/UpnpServiceConfiguration;->getDatagramIOExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-interface {v9, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public broadcast([B)V
    .locals 7
    .param p1, "bytes"    # [B

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getDatagramIOs()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    return-void

    .line 295
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 296
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lorg/teleal/cling/transport/spi/DatagramIO;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getNetworkAddressFactory()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-interface {v5, v3}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->getBroadcastAddress(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    .line 297
    .local v0, "broadcast":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    .line 298
    sget-object v3, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sending UDP datagram to broadcast address: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 299
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, p1

    const/16 v5, 0x9

    invoke-direct {v2, p1, v3, v0, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 300
    .local v2, "packet":Ljava/net/DatagramPacket;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/transport/spi/DatagramIO;

    invoke-interface {v3, v2}, Lorg/teleal/cling/transport/spi/DatagramIO;->send(Ljava/net/DatagramPacket;)V

    goto :goto_0
.end method

.method public declared-synchronized getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;
    .locals 8
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

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getStreamServers()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 167
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v3, "streamServerAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/NetworkAddress;>;"
    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getStreamServers()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/transport/spi/StreamServer;

    .local v2, "preferredServer":Lorg/teleal/cling/transport/spi/StreamServer;
    if-eqz v2, :cond_2

    .line 173
    new-instance v4, Lorg/teleal/cling/model/NetworkAddress;

    .line 175
    invoke-interface {v2}, Lorg/teleal/cling/transport/spi/StreamServer;->getPort()I

    move-result v5

    .line 176
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getNetworkAddressFactory()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->getHardwareAddress(Ljava/net/InetAddress;)[B

    move-result-object v6

    .line 173
    invoke-direct {v4, p1, v5, v6}, Lorg/teleal/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I[B)V

    .line 172
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    .end local v2    # "preferredServer":Lorg/teleal/cling/transport/spi/StreamServer;
    .end local v3    # "streamServerAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/NetworkAddress;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 183
    .restart local v3    # "streamServerAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/NetworkAddress;>;"
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getStreamServers()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 184
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lorg/teleal/cling/transport/spi/StreamServer;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getNetworkAddressFactory()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-interface {v5, v4}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->getHardwareAddress(Ljava/net/InetAddress;)[B

    move-result-object v1

    .line 186
    .local v1, "hardwareAddress":[B
    new-instance v7, Lorg/teleal/cling/model/NetworkAddress;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/transport/spi/StreamServer;

    invoke-interface {v5}, Lorg/teleal/cling/transport/spi/StreamServer;->getPort()I

    move-result v5

    invoke-direct {v7, v4, v5, v1}, Lorg/teleal/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I[B)V

    .line 185
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

    return-object v0
.end method

.method protected getDatagramIOs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Lorg/teleal/cling/transport/spi/DatagramIO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    return-object v0
.end method

.method protected getMulticastReceivers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/net/NetworkInterface;",
            "Lorg/teleal/cling/transport/spi/MulticastReceiver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkAddressFactory()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->networkAddressFactory:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    return-object v0
.end method

.method public getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    return-object v0
.end method

.method protected getStreamClient()Lorg/teleal/cling/transport/spi/StreamClient;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->streamClient:Lorg/teleal/cling/transport/spi/StreamClient;

    return-object v0
.end method

.method protected getStreamServers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/net/InetAddress;",
            "Lorg/teleal/cling/transport/spi/StreamServer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/teleal/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    return-object v0
.end method

.method public received(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    .locals 5
    .param p1, "msg"    # Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    .prologue
    .line 233
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/teleal/cling/protocol/ProtocolFactory;->createReceivingAsync(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)Lorg/teleal/cling/protocol/ReceivingAsync;

    move-result-object v1

    .line 234
    .local v1, "protocol":Lorg/teleal/cling/protocol/ReceivingAsync;
    if-nez v1, :cond_1

    .line 235
    sget-object v2, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    sget-object v2, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No protocol, ignoring received message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 245
    .end local v1    # "protocol":Lorg/teleal/cling/protocol/ReceivingAsync;
    :cond_0
    :goto_0
    return-void

    .line 239
    .restart local v1    # "protocol":Lorg/teleal/cling/protocol/ReceivingAsync;
    :cond_1
    sget-object v2, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    sget-object v2, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received asynchronous message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 241
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/teleal/cling/UpnpServiceConfiguration;->getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/teleal/cling/protocol/ProtocolCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v1    # "protocol":Lorg/teleal/cling/protocol/ReceivingAsync;
    :catch_0
    move-exception v0

    .line 243
    .local v0, "ex":Lorg/teleal/cling/protocol/ProtocolCreationException;
    sget-object v2, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Handling received datagram failed - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public received(Lorg/teleal/cling/transport/spi/UpnpStream;)V
    .locals 3
    .param p1, "stream"    # Lorg/teleal/cling/transport/spi/UpnpStream;

    .prologue
    .line 254
    sget-object v0, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received synchronous stream: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->getSyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public send(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 3
    .param p1, "msg"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getStreamClient()Lorg/teleal/cling/transport/spi/StreamClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    sget-object v0, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No StreamClient available, ignoring: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    .line 281
    :cond_0
    sget-object v0, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending via TCP unicast stream: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getStreamClient()Lorg/teleal/cling/transport/spi/StreamClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/teleal/cling/transport/spi/StreamClient;->sendRequest(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V
    .locals 3
    .param p1, "msg"    # Lorg/teleal/cling/model/message/OutgoingDatagramMessage;

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/teleal/cling/transport/RouterImpl;->getDatagramIOs()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    return-void

    .line 264
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/transport/spi/DatagramIO;

    .line 265
    .local v0, "datagramIO":Lorg/teleal/cling/transport/spi/DatagramIO;
    invoke-interface {v0, p1}, Lorg/teleal/cling/transport/spi/DatagramIO;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    goto :goto_0
.end method

.method public declared-synchronized shutdown()V
    .locals 7

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    sget-object v3, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    const-string v4, "Shutting down network services"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->streamClient:Lorg/teleal/cling/transport/spi/StreamClient;

    if-eqz v3, :cond_0

    .line 196
    sget-object v3, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    const-string v4, "Stopping stream client connection management/pool"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->streamClient:Lorg/teleal/cling/transport/spi/StreamClient;

    invoke-interface {v3}, Lorg/teleal/cling/transport/spi/StreamClient;->stop()V

    .line 200
    :cond_0
    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 204
    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->streamServers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 206
    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 210
    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->multicastReceivers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 212
    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 216
    iget-object v3, p0, Lorg/teleal/cling/transport/RouterImpl;->datagramIOs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 200
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 201
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lorg/teleal/cling/transport/spi/StreamServer;>;"
    sget-object v3, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Stopping stream server on address: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 202
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/transport/spi/StreamServer;

    invoke-interface {v3}, Lorg/teleal/cling/transport/spi/StreamServer;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lorg/teleal/cling/transport/spi/StreamServer;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 206
    :cond_2
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 207
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/NetworkInterface;Lorg/teleal/cling/transport/spi/MulticastReceiver;>;"
    sget-object v5, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "Stopping multicast receiver on interface: "

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 208
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/transport/spi/MulticastReceiver;

    invoke-interface {v3}, Lorg/teleal/cling/transport/spi/MulticastReceiver;->stop()V

    goto :goto_1

    .line 212
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/NetworkInterface;Lorg/teleal/cling/transport/spi/MulticastReceiver;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 213
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/InetAddress;Lorg/teleal/cling/transport/spi/DatagramIO;>;"
    sget-object v3, Lorg/teleal/cling/transport/RouterImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Stopping datagram I/O on address: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/transport/spi/DatagramIO;

    invoke-interface {v3}, Lorg/teleal/cling/transport/spi/DatagramIO;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method
