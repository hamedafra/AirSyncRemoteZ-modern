.class public Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;
.super Lorg/teleal/cling/model/message/StreamResponseMessage;
.source "OutgoingActionResponseMessage.java"

# interfaces
.implements Lorg/teleal/cling/model/message/control/ActionResponseMessage;


# instance fields
.field private actionNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V
    .locals 1
    .param p1, "status"    # Lorg/teleal/cling/model/message/UpnpResponse$Status;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;Lorg/teleal/cling/model/meta/Action;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;Lorg/teleal/cling/model/meta/Action;)V
    .locals 1
    .param p1, "status"    # Lorg/teleal/cling/model/message/UpnpResponse$Status;
    .param p2, "action"    # Lorg/teleal/cling/model/meta/Action;

    .prologue
    .line 46
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-direct {v0, p1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 48
    if-eqz p2, :cond_0

    .line 49
    instance-of v0, p2, Lorg/teleal/cling/model/meta/QueryStateVariableAction;

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "urn:schemas-upnp-org:control-1-0"

    iput-object v0, p0, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->actionNamespace:Ljava/lang/String;

    .line 56
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->addHeaders()V

    .line 57
    return-void

    .line 52
    :cond_1
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Service;->getServiceType()Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/ServiceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->actionNamespace:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Action;)V
    .locals 1
    .param p1, "action"    # Lorg/teleal/cling/model/meta/Action;

    .prologue
    .line 38
    sget-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {p0, v0, p1}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;Lorg/teleal/cling/model/meta/Action;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected addHeaders()V
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 61
    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 62
    new-instance v2, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    sget-object v3, Lorg/teleal/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE_UTF8:Lorg/teleal/common/util/MimeType;

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/ContentTypeHeader;-><init>(Lorg/teleal/common/util/MimeType;)V

    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 64
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 65
    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 66
    new-instance v2, Lorg/teleal/cling/model/message/header/ServerHeader;

    invoke-direct {v2}, Lorg/teleal/cling/model/message/header/ServerHeader;-><init>()V

    .line 64
    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 68
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 69
    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 70
    new-instance v2, Lorg/teleal/cling/model/message/header/EXTHeader;

    invoke-direct {v2}, Lorg/teleal/cling/model/message/header/EXTHeader;-><init>()V

    .line 68
    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 72
    return-void
.end method

.method public getActionNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/teleal/cling/model/message/control/OutgoingActionResponseMessage;->actionNamespace:Ljava/lang/String;

    return-object v0
.end method
