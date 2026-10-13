.class public interface abstract Lorg/teleal/cling/transport/spi/SOAPActionProcessor;
.super Ljava/lang/Object;
.source "SOAPActionProcessor.java"


# virtual methods
.method public abstract readBody(Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation
.end method

.method public abstract readBody(Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation
.end method

.method public abstract writeBody(Lorg/teleal/cling/model/message/control/ActionRequestMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation
.end method

.method public abstract writeBody(Lorg/teleal/cling/model/message/control/ActionResponseMessage;Lorg/teleal/cling/model/action/ActionInvocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/UnsupportedDataException;
        }
    .end annotation
.end method
