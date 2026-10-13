.class public Lorg/teleal/cling/transport/impl/DatagramIOImpl;
.super Ljava/lang/Object;
.source "DatagramIOImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/DatagramIO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/teleal/cling/transport/spi/DatagramIO",
        "<",
        "Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final configuration:Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;

.field protected datagramProcessor:Lorg/teleal/cling/transport/spi/DatagramProcessor;

.field protected localAddress:Ljava/net/InetSocketAddress;

.field protected router:Lorg/teleal/cling/transport/Router;

.field protected socket:Ljava/net/MulticastSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/teleal/cling/transport/spi/DatagramIO;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;)V
    .locals 0
    .param p1, "configuration"    # Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->configuration:Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;

    .line 69
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->configuration:Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/teleal/cling/transport/spi/DatagramIOConfiguration;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Ljava/net/InetAddress;Lorg/teleal/cling/transport/Router;Lorg/teleal/cling/transport/spi/DatagramProcessor;)V
    .locals 4
    .param p1, "bindAddress"    # Ljava/net/InetAddress;
    .param p2, "router"    # Lorg/teleal/cling/transport/Router;
    .param p3, "datagramProcessor"    # Lorg/teleal/cling/transport/spi/DatagramProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->router:Lorg/teleal/cling/transport/Router;

    .line 78
    iput-object p3, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->datagramProcessor:Lorg/teleal/cling/transport/spi/DatagramProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    sget-object v1, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating bound socket (for datagram input/output) on: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 86
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 87
    new-instance v1, Ljava/net/MulticastSocket;

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    .line 88
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->configuration:Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;

    invoke-virtual {v2}, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->getTimeToLive()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 89
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    const v2, 0x8000

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setReceiveBufferSize(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
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

    .line 77
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 6

    .prologue
    .line 103
    sget-object v3, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Entering blocking receiving loop, listening for UDP datagrams on: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v5}, Ljava/net/MulticastSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 108
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->getConfiguration()Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/transport/impl/DatagramIOConfigurationImpl;->getMaxDatagramBytes()I

    move-result v3

    new-array v0, v3, [B

    .line 109
    .local v0, "buf":[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v3, v0

    invoke-direct {v1, v0, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 111
    .local v1, "datagram":Ljava/net/DatagramPacket;
    iget-object v3, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v3, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 113
    sget-object v3, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UDP datagram received from: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 117
    const-string v5, " on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->router:Lorg/teleal/cling/transport/Router;

    iget-object v4, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->datagramProcessor:Lorg/teleal/cling/transport/spi/DatagramProcessor;

    iget-object v5, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/teleal/cling/transport/spi/DatagramProcessor;->read(Ljava/net/InetAddress;Ljava/net/DatagramPacket;)Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/teleal/cling/transport/Router;->received(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/teleal/cling/transport/spi/UnsupportedDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 123
    .end local v0    # "buf":[B
    .end local v1    # "datagram":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v2

    .line 124
    .local v2, "ex":Ljava/net/SocketException;
    sget-object v3, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    const-string v4, "Socket closed"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 133
    :try_start_1
    iget-object v3, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v3}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    sget-object v3, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    const-string v4, "Closing unicast socket"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v3}, Ljava/net/MulticastSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 140
    :cond_0
    return-void

    .line 126
    .end local v2    # "ex":Ljava/net/SocketException;
    :catch_1
    move-exception v2

    .line 127
    .local v2, "ex":Lorg/teleal/cling/transport/spi/UnsupportedDataException;
    sget-object v3, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not read datagram: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/teleal/cling/transport/spi/UnsupportedDataException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    .end local v2    # "ex":Lorg/teleal/cling/transport/spi/UnsupportedDataException;
    :catch_2
    move-exception v2

    .line 129
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 137
    .local v2, "ex":Ljava/net/SocketException;
    :catch_3
    move-exception v2

    .line 138
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public declared-synchronized send(Ljava/net/DatagramPacket;)V
    .locals 4
    .param p1, "datagram"    # Ljava/net/DatagramPacket;

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending message from address: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :try_start_1
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v1, p1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "ex":Ljava/net/SocketException;
    :try_start_2
    sget-object v1, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Socket closed, aborting datagram send to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 150
    .end local v0    # "ex":Ljava/net/SocketException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 156
    :catch_1
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    throw v0

    .line 158
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 159
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V
    .locals 4
    .param p1, "message"    # Lorg/teleal/cling/model/message/OutgoingDatagramMessage;

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending message from address: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->datagramProcessor:Lorg/teleal/cling/transport/spi/DatagramProcessor;

    invoke-interface {v1, p1}, Lorg/teleal/cling/transport/spi/DatagramProcessor;->write(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)Ljava/net/DatagramPacket;

    move-result-object v0

    .line 145
    .local v0, "packet":Ljava/net/DatagramPacket;
    sget-object v1, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending UDP datagram packet to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->getDestinationAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;->getDestinationPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, v0}, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 143
    .end local v0    # "packet":Ljava/net/DatagramPacket;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/teleal/cling/transport/impl/DatagramIOImpl;->socket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
