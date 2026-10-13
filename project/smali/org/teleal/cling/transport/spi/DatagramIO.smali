.class public interface abstract Lorg/teleal/cling/transport/spi/DatagramIO;
.super Ljava/lang/Object;
.source "DatagramIO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lorg/teleal/cling/transport/spi/DatagramIOConfiguration;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# virtual methods
.method public abstract getConfiguration()Lorg/teleal/cling/transport/spi/DatagramIOConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract init(Ljava/net/InetAddress;Lorg/teleal/cling/transport/Router;Lorg/teleal/cling/transport/spi/DatagramProcessor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation
.end method

.method public abstract send(Ljava/net/DatagramPacket;)V
.end method

.method public abstract send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V
.end method

.method public abstract stop()V
.end method
