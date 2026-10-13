.class public abstract Lorg/teleal/cling/protocol/ReceivingAsync;
.super Ljava/lang/Object;
.source "ReceivingAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lorg/teleal/cling/model/message/UpnpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private inputMessage:Lorg/teleal/cling/model/message/UpnpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final upnpService:Lorg/teleal/cling/UpnpService;


# direct methods
.method protected constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/UpnpMessage;)V
    .locals 0
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/UpnpService;",
            "TM;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/teleal/cling/protocol/ReceivingAsync;, "Lorg/teleal/cling/protocol/ReceivingAsync<TM;>;"
    .local p2, "inputMessage":Lorg/teleal/cling/model/message/UpnpMessage;, "TM;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/teleal/cling/protocol/ReceivingAsync;->upnpService:Lorg/teleal/cling/UpnpService;

    .line 44
    iput-object p2, p0, Lorg/teleal/cling/protocol/ReceivingAsync;->inputMessage:Lorg/teleal/cling/model/message/UpnpMessage;

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract execute()V
.end method

.method protected getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Lorg/teleal/cling/model/message/header/UpnpHeader;",
            ">(",
            "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;",
            "Ljava/lang/Class",
            "<TH;>;)TH;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/teleal/cling/protocol/ReceivingAsync;, "Lorg/teleal/cling/protocol/ReceivingAsync<TM;>;"
    .local p1, "headerType":Lorg/teleal/cling/model/message/header/UpnpHeader$Type;, "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;"
    .local p2, "subtype":Ljava/lang/Class;, "Ljava/lang/Class<TH;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    return-object v0
.end method

.method public getInputMessage()Lorg/teleal/cling/model/message/UpnpMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/teleal/cling/protocol/ReceivingAsync;, "Lorg/teleal/cling/protocol/ReceivingAsync<TM;>;"
    iget-object v0, p0, Lorg/teleal/cling/protocol/ReceivingAsync;->inputMessage:Lorg/teleal/cling/model/message/UpnpMessage;

    return-object v0
.end method

.method public getUpnpService()Lorg/teleal/cling/UpnpService;
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lorg/teleal/cling/protocol/ReceivingAsync;, "Lorg/teleal/cling/protocol/ReceivingAsync<TM;>;"
    iget-object v0, p0, Lorg/teleal/cling/protocol/ReceivingAsync;->upnpService:Lorg/teleal/cling/UpnpService;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 58
    .local p0, "this":Lorg/teleal/cling/protocol/ReceivingAsync;, "Lorg/teleal/cling/protocol/ReceivingAsync<TM;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->waitBeforeExecution()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    .local v1, "proceed":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/ReceivingAsync;->execute()V

    .line 66
    :cond_0
    return-void

    .line 59
    .end local v1    # "proceed":Z
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    .restart local v1    # "proceed":Z
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    .local p0, "this":Lorg/teleal/cling/protocol/ReceivingAsync;, "Lorg/teleal/cling/protocol/ReceivingAsync<TM;>;"
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

.method protected waitBeforeExecution()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/teleal/cling/protocol/ReceivingAsync;, "Lorg/teleal/cling/protocol/ReceivingAsync<TM;>;"
    const/4 v0, 0x1

    return v0
.end method
