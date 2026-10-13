.class public interface abstract Lorg/teleal/cling/transport/Router;
.super Ljava/lang/Object;
.source "Router.java"


# virtual methods
.method public abstract broadcast([B)V
.end method

.method public abstract getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;
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
.end method

.method public abstract getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;
.end method

.method public abstract getNetworkAddressFactory()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
.end method

.method public abstract getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;
.end method

.method public abstract received(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
.end method

.method public abstract received(Lorg/teleal/cling/transport/spi/UpnpStream;)V
.end method

.method public abstract send(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
.end method

.method public abstract send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V
.end method

.method public abstract shutdown()V
.end method
