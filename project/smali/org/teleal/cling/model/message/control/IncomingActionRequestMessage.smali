.class public Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;
.super Lorg/teleal/cling/model/message/StreamRequestMessage;
.source "IncomingActionRequestMessage.java"

# interfaces
.implements Lorg/teleal/cling/model/message/control/ActionRequestMessage;


# instance fields
.field private final action:Lorg/teleal/cling/model/meta/Action;

.field private final actionNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/StreamRequestMessage;Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 6
    .param p1, "source"    # Lorg/teleal/cling/model/message/StreamRequestMessage;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/StreamRequestMessage;)V

    .line 42
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v2

    sget-object v3, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v4, Lorg/teleal/cling/model/message/header/SoapActionHeader;

    invoke-virtual {v2, v3, v4}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/header/SoapActionHeader;

    .line 43
    .local v1, "soapActionHeader":Lorg/teleal/cling/model/message/header/SoapActionHeader;
    if-nez v1, :cond_0

    .line 44
    new-instance v2, Lorg/teleal/cling/model/action/ActionException;

    sget-object v3, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

    const-string v4, "Missing SOAP action header"

    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_0
    invoke-virtual {v1}, Lorg/teleal/cling/model/message/header/SoapActionHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/types/SoapActionType;

    .line 49
    .local v0, "actionType":Lorg/teleal/cling/model/types/SoapActionType;
    invoke-virtual {v0}, Lorg/teleal/cling/model/types/SoapActionType;->getActionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/teleal/cling/model/meta/LocalService;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;->action:Lorg/teleal/cling/model/meta/Action;

    .line 50
    iget-object v2, p0, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;->action:Lorg/teleal/cling/model/meta/Action;

    if-nez v2, :cond_1

    .line 51
    new-instance v2, Lorg/teleal/cling/model/action/ActionException;

    sget-object v3, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Service doesn\'t implement action: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/SoapActionType;->getActionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_1
    const-string v2, "QueryStateVariable"

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/SoapActionType;->getActionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 55
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/LocalService;->getServiceType()Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v2

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/SoapActionType;->getServiceType()Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/teleal/cling/model/types/ServiceType;->implementsVersion(Lorg/teleal/cling/model/types/ServiceType;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 56
    new-instance v2, Lorg/teleal/cling/model/action/ActionException;

    sget-object v3, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

    const-string v4, "Service doesn\'t support the requested service version"

    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_2
    invoke-virtual {v0}, Lorg/teleal/cling/model/types/SoapActionType;->getTypeString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;->actionNamespace:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getAction()Lorg/teleal/cling/model/meta/Action;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;->action:Lorg/teleal/cling/model/meta/Action;

    return-object v0
.end method

.method public getActionNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/teleal/cling/model/message/control/IncomingActionRequestMessage;->actionNamespace:Ljava/lang/String;

    return-object v0
.end method
