.class public interface abstract Lorg/teleal/cling/transport/spi/GENAEventProcessor;
.super Ljava/lang/Object;
.source "GENAEventProcessor.java"


# virtual methods
.method public abstract readBody(Lorg/teleal/cling/model/message/gena/IncomingEventRequestMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation
.end method

.method public abstract writeBody(Lorg/teleal/cling/model/message/gena/OutgoingEventRequestMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation
.end method
