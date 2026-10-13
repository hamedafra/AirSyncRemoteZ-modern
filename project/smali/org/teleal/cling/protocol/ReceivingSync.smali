.class public abstract Lorg/teleal/cling/protocol/ReceivingSync;
.super Lorg/teleal/cling/protocol/ReceivingAsync;
.source "ReceivingSync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Lorg/teleal/cling/model/message/StreamRequestMessage;",
        "OUT:",
        "Lorg/teleal/cling/model/message/StreamResponseMessage;",
        ">",
        "Lorg/teleal/cling/protocol/ReceivingAsync",
        "<TIN;>;"
    }
.end annotation


# instance fields
.field protected outputMessage:Lorg/teleal/cling/model/message/StreamResponseMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOUT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/StreamRequestMessage;)V
    .locals 0
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/UpnpService;",
            "TIN;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/teleal/cling/protocol/ReceivingSync;, "Lorg/teleal/cling/protocol/ReceivingSync<TIN;TOUT;>;"
    .local p2, "inputMessage":Lorg/teleal/cling/model/message/StreamRequestMessage;, "TIN;"
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/protocol/ReceivingAsync;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/UpnpMessage;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected final execute()V
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lorg/teleal/cling/protocol/ReceivingSync;, "Lorg/teleal/cling/protocol/ReceivingSync<TIN;TOUT;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingSync;->executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/protocol/ReceivingSync;->outputMessage:Lorg/teleal/cling/model/message/StreamResponseMessage;

    .line 58
    return-void
.end method

.method protected abstract executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation
.end method

.method public getOutputMessage()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/teleal/cling/protocol/ReceivingSync;, "Lorg/teleal/cling/protocol/ReceivingSync<TIN;TOUT;>;"
    iget-object v0, p0, Lorg/teleal/cling/protocol/ReceivingSync;->outputMessage:Lorg/teleal/cling/model/message/StreamResponseMessage;

    return-object v0
.end method

.method public responseException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    .local p0, "this":Lorg/teleal/cling/protocol/ReceivingSync;, "Lorg/teleal/cling/protocol/ReceivingSync<TIN;TOUT;>;"
    return-void
.end method

.method public responseSent(Lorg/teleal/cling/model/message/StreamResponseMessage;)V
    .locals 0
    .param p1, "responseMessage"    # Lorg/teleal/cling/model/message/StreamResponseMessage;

    .prologue
    .line 69
    .local p0, "this":Lorg/teleal/cling/protocol/ReceivingSync;, "Lorg/teleal/cling/protocol/ReceivingSync<TIN;TOUT;>;"
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    .local p0, "this":Lorg/teleal/cling/protocol/ReceivingSync;, "Lorg/teleal/cling/protocol/ReceivingSync<TIN;TOUT;>;"
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
