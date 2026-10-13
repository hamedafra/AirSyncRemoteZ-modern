.class public interface abstract Lorg/teleal/cling/transport/spi/StreamServer;
.super Ljava/lang/Object;
.source "StreamServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lorg/teleal/cling/transport/spi/StreamServerConfiguration;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# virtual methods
.method public abstract getConfiguration()Lorg/teleal/cling/transport/spi/StreamServerConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract getPort()I
.end method

.method public abstract init(Ljava/net/InetAddress;Lorg/teleal/cling/transport/Router;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
