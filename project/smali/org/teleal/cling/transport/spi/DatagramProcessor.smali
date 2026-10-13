.class public interface abstract Lorg/teleal/cling/transport/spi/DatagramProcessor;
.super Ljava/lang/Object;
.source "DatagramProcessor.java"


# virtual methods
.method public abstract read(Ljava/net/InetAddress;Ljava/net/DatagramPacket;)Lorg/teleal/cling/model/message/IncomingDatagramMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation
.end method

.method public abstract write(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation
.end method
