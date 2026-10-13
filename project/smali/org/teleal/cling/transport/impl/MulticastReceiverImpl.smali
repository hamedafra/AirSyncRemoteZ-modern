.class public Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;
.super Ljava/lang/Object;
.source "MulticastReceiverImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/MulticastReceiver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/teleal/cling/transport/spi/MulticastReceiver",
        "<",
        "Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;

.field protected datagramProcessor:Lorg/teleal/cling/transport/spi/DatagramProcessor;

.field protected multicastAddress:Ljava/net/InetSocketAddress;

.field protected multicastInterface:Ljava/net/NetworkInterface;

.field protected router:Lorg/teleal/cling/transport/Router;

.field private socket:Ljava/net/MulticastSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/teleal/cling/transport/spi/MulticastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;)V
    .locals 0
    .param p1, "configuration"    # Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;

    .line 58
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/teleal/cling/transport/spi/MulticastReceiverConfiguration;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Ljava/net/NetworkInterface;Lorg/teleal/cling/transport/Router;Lorg/teleal/cling/transport/spi/DatagramProcessor;)V
    .locals 4
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p2, "router"    # Lorg/teleal/cling/transport/Router;
    .param p3, "datagramProcessor"    # Lorg/teleal/cling/transport/spi/DatagramProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->router:Lorg/teleal/cling/transport/Router;

    .line 67
    iput-object p3, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->datagramProcessor:Lorg/teleal/cling/transport/spi/DatagramProcessor;

    .line 68
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    sget-object v1, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating wildcard socket (for receiving multicast datagrams) on port: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;

    invoke-virtual {v3}, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 73
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;

    invoke-virtual {v2}, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->getGroup()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;

    invoke-virtual {v3}, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    .line 75
    new-instance v1, Ljava/net/MulticastSocket;

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->configuration:Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;

    invoke-virtual {v2}, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->getPort()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    .line 76
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 77
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    const v2, 0x8000

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setReceiveBufferSize(I)V

    .line 79
    sget-object v1, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Joining multicast group: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on network interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v1, v2, v3}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Lorg/teleal/cling/transport/spi/InitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not initialize "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/transport/spi/InitializationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 8

    .prologue
    .line 103
    sget-object v4, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Entering blocking receiving loop, listening for UDP datagrams on: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v6}, Ljava/net/MulticastSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 107
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/transport/impl/MulticastReceiverConfigurationImpl;->getMaxDatagramBytes()I

    move-result v4

    new-array v0, v4, [B

    .line 108
    .local v0, "buf":[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v4, v0

    invoke-direct {v1, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 110
    .local v1, "datagram":Ljava/net/DatagramPacket;
    iget-object v4, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v4, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 113
    iget-object v4, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->router:Lorg/teleal/cling/transport/Router;

    invoke-interface {v4}, Lorg/teleal/cling/transport/Router;->getNetworkAddressFactory()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    move-result-object v4

    .line 114
    iget-object v5, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    .line 115
    iget-object v6, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet6Address;

    .line 116
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 113
    invoke-interface {v4, v5, v6, v7}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->getLocalAddress(Ljava/net/NetworkInterface;ZLjava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v3

    .line 119
    .local v3, "receivedOnLocalAddress":Ljava/net/InetAddress;
    sget-object v4, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UDP datagram received from: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 121
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 122
    const-string v6, " on local interface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 123
    const-string v6, " and address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 120
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 126
    iget-object v4, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->router:Lorg/teleal/cling/transport/Router;

    iget-object v5, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->datagramProcessor:Lorg/teleal/cling/transport/spi/DatagramProcessor;

    invoke-interface {v5, v3, v1}, Lorg/teleal/cling/transport/spi/DatagramProcessor;->read(Ljava/net/InetAddress;Ljava/net/DatagramPacket;)Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/teleal/cling/transport/Router;->received(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 128
    .end local v0    # "buf":[B
    .end local v1    # "datagram":Ljava/net/DatagramPacket;
    .end local v3    # "receivedOnLocalAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .line 129
    .local v2, "ex":Ljava/net/SocketException;
    sget-object v4, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "Socket closed"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 138
    :try_start_1
    iget-object v4, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v4}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    sget-object v4, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    const-string v5, "Closing multicast socket"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 140
    iget-object v4, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v4}, Ljava/net/MulticastSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 145
    :cond_0
    return-void

    .line 131
    .end local v2    # "ex":Ljava/net/SocketException;
    :catch_1
    move-exception v2

    .line 132
    .local v2, "ex":Lorg/teleal/cling/transport/spi/UnsupportedDataException;
    sget-object v4, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not read datagram: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    .end local v2    # "ex":Lorg/teleal/cling/transport/spi/UnsupportedDataException;
    :catch_2
    move-exception v2

    .line 134
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 142
    .local v2, "ex":Ljava/net/SocketException;
    :catch_3
    move-exception v2

    .line 143
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 90
    :try_start_1
    sget-object v1, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    const-string v2, "Leaving multicast group"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->multicastAddress:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->multicastInterface:Ljava/net/NetworkInterface;

    invoke-virtual {v1, v2, v3}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    sget-object v1, Lorg/teleal/cling/transport/impl/MulticastReceiverImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not leave multicast group: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 88
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
