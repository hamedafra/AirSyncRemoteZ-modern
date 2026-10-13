.class public Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
.super Lorg/teleal/cling/model/message/StreamResponseMessage;
.source "IncomingActionResponseMessage.java"

# interfaces
.implements Lorg/teleal/cling/model/message/control/ActionResponseMessage;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/StreamResponseMessage;)V
    .locals 0
    .param p1, "source"    # Lorg/teleal/cling/model/message/StreamResponseMessage;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/StreamResponseMessage;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 0
    .param p1, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getActionNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFailedNonRecoverable()Z
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v0

    .line 43
    .local v0, "statusCode":I
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->METHOD_NOT_SUPPORTED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpResponse$Status;->getStatusCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 45
    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpResponse$Status;->getStatusCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;->hasBody()Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFailedRecoverable()Z
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v0

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpResponse$Status;->getStatusCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
