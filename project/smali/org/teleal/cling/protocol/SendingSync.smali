.class public abstract Lorg/teleal/cling/protocol/SendingSync;
.super Lorg/teleal/cling/protocol/SendingAsync;
.source "SendingSync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Lorg/teleal/cling/model/message/StreamRequestMessage;",
        "OUT:",
        "Lorg/teleal/cling/model/message/StreamResponseMessage;",
        ">",
        "Lorg/teleal/cling/protocol/SendingAsync;"
    }
.end annotation


# instance fields
.field private final inputMessage:Lorg/teleal/cling/model/message/StreamRequestMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TIN;"
        }
    .end annotation
.end field

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
    .line 42
    .local p0, "this":Lorg/teleal/cling/protocol/SendingSync;, "Lorg/teleal/cling/protocol/SendingSync<TIN;TOUT;>;"
    .local p2, "inputMessage":Lorg/teleal/cling/model/message/StreamRequestMessage;, "TIN;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/protocol/SendingAsync;-><init>(Lorg/teleal/cling/UpnpService;)V

    .line 43
    iput-object p2, p0, Lorg/teleal/cling/protocol/SendingSync;->inputMessage:Lorg/teleal/cling/model/message/StreamRequestMessage;

    .line 44
    return-void
.end method


# virtual methods
.method protected final execute()V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lorg/teleal/cling/protocol/SendingSync;, "Lorg/teleal/cling/protocol/SendingSync<TIN;TOUT;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/SendingSync;->executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/protocol/SendingSync;->outputMessage:Lorg/teleal/cling/model/message/StreamResponseMessage;

    .line 56
    return-void
.end method

.method protected abstract executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation
.end method

.method public getInputMessage()Lorg/teleal/cling/model/message/StreamRequestMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIN;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/teleal/cling/protocol/SendingSync;, "Lorg/teleal/cling/protocol/SendingSync<TIN;TOUT;>;"
    iget-object v0, p0, Lorg/teleal/cling/protocol/SendingSync;->inputMessage:Lorg/teleal/cling/model/message/StreamRequestMessage;

    return-object v0
.end method

.method public getOutputMessage()Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOUT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/teleal/cling/protocol/SendingSync;, "Lorg/teleal/cling/protocol/SendingSync<TIN;TOUT;>;"
    iget-object v0, p0, Lorg/teleal/cling/protocol/SendingSync;->outputMessage:Lorg/teleal/cling/model/message/StreamResponseMessage;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    .local p0, "this":Lorg/teleal/cling/protocol/SendingSync;, "Lorg/teleal/cling/protocol/SendingSync<TIN;TOUT;>;"
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
