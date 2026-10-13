.class public interface abstract Lorg/teleal/cling/transport/spi/MulticastReceiver;
.super Ljava/lang/Object;
.source "MulticastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lorg/teleal/cling/transport/spi/MulticastReceiverConfiguration;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# virtual methods
.method public abstract getConfiguration()Lorg/teleal/cling/transport/spi/MulticastReceiverConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract init(Ljava/net/NetworkInterface;Lorg/teleal/cling/transport/Router;Lorg/teleal/cling/transport/spi/DatagramProcessor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
