.class public Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;
.super Lorg/teleal/cling/model/message/StreamRequestMessage;
.source "OutgoingActionRequestMessage.java"

# interfaces
.implements Lorg/teleal/cling/model/message/control/ActionRequestMessage;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private final actionNamespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)V
    .locals 3
    .param p1, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "controlURL"    # Ljava/net/URL;

    .prologue
    .line 43
    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v0

    new-instance v1, Lorg/teleal/cling/model/message/UpnpRequest;

    sget-object v2, Lorg/teleal/cling/model/message/UpnpRequest$Method;->POST:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-direct {v1, v2, p2}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;Ljava/net/URL;)V

    invoke-direct {p0, v0, v1}, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;-><init>(Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpRequest;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpRequest;)V
    .locals 6
    .param p1, "action"    # Lorg/teleal/cling/model/meta/Action;
    .param p2, "operation"    # Lorg/teleal/cling/model/message/UpnpRequest;

    .prologue
    .line 47
    invoke-direct {p0, p2}, Lorg/teleal/cling/model/message/StreamRequestMessage;-><init>(Lorg/teleal/cling/model/message/UpnpRequest;)V

    .line 49
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    .line 50
    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 51
    new-instance v3, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    sget-object v4, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE_UTF8:Lorg/teleal/common/util/MimeType;

    invoke-direct {v3, v4}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/teleal/common/util/MimeType;)V

    .line 49
    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 55
    instance-of v1, p1, Lorg/teleal/cling/model/meta/QueryStateVariableAction;

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->log:Ljava/util/logging/Logger;

    const-string v2, "Adding magic control SOAP action header for state variable query action"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lorg/teleal/cling/model/message/header/SoapActionHeader;

    .line 58
    new-instance v1, Lorg/teleal/cling/model/types/SoapActionType;

    .line 59
    const-string v2, "schemas-upnp-org"

    const-string v3, "control-1-0"

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-direct {v1, v2, v3, v4, v5}, Lorg/teleal/cling/model/types/SoapActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 57
    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/header/SoapActionHeader;-><init>(Lorg/teleal/cling/model/types/SoapActionType;)V

    .line 72
    .local v0, "soapActionHeader":Lorg/teleal/cling/model/message/header/SoapActionHeader;
    :goto_0
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/SoapActionHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/types/SoapActionType;

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/SoapActionType;->getTypeString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->actionNamespace:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest;->getMethod()Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/UpnpRequest$Method;->POST:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-virtual {v1, v2}, Lorg/teleal/cling/model/message/UpnpRequest$Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v1, v2, v0}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 77
    sget-object v1, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Added SOAP action header: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 92
    return-void

    .line 63
    .end local v0    # "soapActionHeader":Lorg/teleal/cling/model/message/header/SoapActionHeader;
    :cond_0
    new-instance v0, Lorg/teleal/cling/model/message/header/SoapActionHeader;

    .line 64
    new-instance v1, Lorg/teleal/cling/model/types/SoapActionType;

    .line 65
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Service;->getServiceType()Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v2

    .line 66
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Action;->getName()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/types/SoapActionType;-><init>(Lorg/teleal/cling/model/types/ServiceType;Ljava/lang/String;)V

    .line 63
    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/header/SoapActionHeader;-><init>(Lorg/teleal/cling/model/types/SoapActionType;)V

    .restart local v0    # "soapActionHeader":Lorg/teleal/cling/model/message/header/SoapActionHeader;
    goto :goto_0

    .line 90
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t send action with request method: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/message/UpnpRequest;

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/UpnpRequest;->getMethod()Lorg/teleal/cling/model/message/UpnpRequest$Method;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getActionNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/teleal/cling/model/message/control/OutgoingActionRequestMessage;->actionNamespace:Ljava/lang/String;

    return-object v0
.end method
