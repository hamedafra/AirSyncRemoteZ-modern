.class public abstract Lorg/teleal/cling/transport/spi/UpnpStream;
.super Ljava/lang/Object;
.source "UpnpStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected final protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

.field protected syncProtocol:Lorg/teleal/cling/protocol/ReceivingSync;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/teleal/cling/transport/spi/UpnpStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/transport/spi/UpnpStream;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/protocol/ProtocolFactory;)V
    .locals 0
    .param p1, "protocolFactory"    # Lorg/teleal/cling/protocol/ProtocolFactory;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/teleal/cling/transport/spi/UpnpStream;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    .line 54
    return-void
.end method


# virtual methods
.method public getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/teleal/cling/transport/spi/UpnpStream;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    return-object v0
.end method

.method public process(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 5
    .param p1, "requestMsg"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    .line 72
    sget-object v2, Lorg/teleal/cling/transport/spi/UpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Processing stream request message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/transport/spi/UpnpStream;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/teleal/cling/protocol/ProtocolFactory;->createReceivingSync(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/protocol/ReceivingSync;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/teleal/cling/protocol/ReceivingSync;
    :try_end_0
    .catch Lorg/teleal/cling/protocol/ProtocolCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    sget-object v2, Lorg/teleal/cling/transport/spi/UpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Running protocol for synchronous message processing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/teleal/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/teleal/cling/protocol/ReceivingSync;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lorg/teleal/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/teleal/cling/protocol/ReceivingSync;

    invoke-virtual {v2}, Lorg/teleal/cling/protocol/ReceivingSync;->run()V

    .line 87
    iget-object v2, p0, Lorg/teleal/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/teleal/cling/protocol/ReceivingSync;

    invoke-virtual {v2}, Lorg/teleal/cling/protocol/ReceivingSync;->getOutputMessage()Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v1

    .line 89
    .local v1, "responseMsg":Lorg/teleal/cling/model/message/StreamResponseMessage;
    if-nez v1, :cond_0

    .line 91
    sget-object v2, Lorg/teleal/cling/transport/spi/UpnpStream;->log:Ljava/util/logging/Logger;

    const-string v3, "Protocol did not return any response message"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    .line 95
    .end local v1    # "responseMsg":Lorg/teleal/cling/model/message/StreamResponseMessage;
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ex":Lorg/teleal/cling/protocol/ProtocolCreationException;
    sget-object v2, Lorg/teleal/cling/transport/spi/UpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Processing stream request failed - "

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

    .line 79
    new-instance v1, Lorg/teleal/cling/model/message/StreamResponseMessage;

    sget-object v2, Lorg/teleal/cling/model/message/UpnpResponse$Status;->NOT_IMPLEMENTED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    goto :goto_0

    .line 94
    .end local v0    # "ex":Lorg/teleal/cling/protocol/ProtocolCreationException;
    .restart local v1    # "responseMsg":Lorg/teleal/cling/model/message/StreamResponseMessage;
    :cond_0
    sget-object v2, Lorg/teleal/cling/transport/spi/UpnpStream;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Protocol returned response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected responseException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/teleal/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/teleal/cling/protocol/ReceivingSync;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/teleal/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/teleal/cling/protocol/ReceivingSync;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/protocol/ReceivingSync;->responseException(Ljava/lang/Throwable;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected responseSent(Lorg/teleal/cling/model/message/StreamResponseMessage;)V
    .locals 1
    .param p1, "responseMessage"    # Lorg/teleal/cling/model/message/StreamResponseMessage;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/teleal/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/teleal/cling/protocol/ReceivingSync;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/teleal/cling/transport/spi/UpnpStream;->syncProtocol:Lorg/teleal/cling/protocol/ReceivingSync;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/protocol/ReceivingSync;->responseSent(Lorg/teleal/cling/model/message/StreamResponseMessage;)V

    .line 106
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
