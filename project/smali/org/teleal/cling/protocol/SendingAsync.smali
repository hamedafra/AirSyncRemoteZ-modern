.class public abstract Lorg/teleal/cling/protocol/SendingAsync;
.super Ljava/lang/Object;
.source "SendingAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final upnpService:Lorg/teleal/cling/UpnpService;


# direct methods
.method protected constructor <init>(Lorg/teleal/cling/UpnpService;)V
    .locals 0
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/teleal/cling/protocol/SendingAsync;->upnpService:Lorg/teleal/cling/UpnpService;

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract execute()V
.end method

.method public getUpnpService()Lorg/teleal/cling/UpnpService;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/teleal/cling/protocol/SendingAsync;->upnpService:Lorg/teleal/cling/UpnpService;

    return-object v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/SendingAsync;->execute()V

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
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
