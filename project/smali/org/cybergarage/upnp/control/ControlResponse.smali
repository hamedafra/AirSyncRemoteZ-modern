.class public Lorg/cybergarage/upnp/control/ControlResponse;
.super Lorg/cybergarage/soap/SOAPResponse;
.source "ControlResponse.java"


# static fields
.field public static final FAULT_CODE:Ljava/lang/String; = "Client"

.field public static final FAULT_STRING:Ljava/lang/String; = "UPnPError"


# instance fields
.field private upnpErr:Lorg/cybergarage/upnp/UPnPStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/cybergarage/soap/SOAPResponse;-><init>()V

    .line 114
    new-instance v0, Lorg/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lorg/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/control/ControlResponse;->upnpErr:Lorg/cybergarage/upnp/UPnPStatus;

    .line 35
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/control/ControlResponse;->setServer(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/soap/SOAPResponse;)V
    .locals 1
    .param p1, "soapRes"    # Lorg/cybergarage/soap/SOAPResponse;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/cybergarage/soap/SOAPResponse;-><init>(Lorg/cybergarage/soap/SOAPResponse;)V

    .line 114
    new-instance v0, Lorg/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lorg/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/control/ControlResponse;->upnpErr:Lorg/cybergarage/upnp/UPnPStatus;

    .line 41
    return-void
.end method

.method private createFaultResponseNode(I)Lorg/cybergarage/xml/Node;
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 107
    invoke-static {p1}, Lorg/cybergarage/upnp/UPnPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/cybergarage/upnp/control/ControlResponse;->createFaultResponseNode(ILjava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method private createFaultResponseNode(ILjava/lang/String;)Lorg/cybergarage/xml/Node;
    .locals 9
    .param p1, "errCode"    # I
    .param p2, "errDescr"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v4, Lorg/cybergarage/xml/Node;

    const-string v7, "s:Fault"

    invoke-direct {v4, v7}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 74
    .local v4, "faultNode":Lorg/cybergarage/xml/Node;
    new-instance v3, Lorg/cybergarage/xml/Node;

    const-string v7, "faultcode"

    invoke-direct {v3, v7}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, "faultCodeNode":Lorg/cybergarage/xml/Node;
    const-string v7, "s:Client"

    invoke-virtual {v3, v7}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4, v3}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 79
    new-instance v5, Lorg/cybergarage/xml/Node;

    const-string v7, "faultstring"

    invoke-direct {v5, v7}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 80
    .local v5, "faultStringNode":Lorg/cybergarage/xml/Node;
    const-string v7, "UPnPError"

    invoke-virtual {v5, v7}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v4, v5}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 84
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v7, "detail"

    invoke-direct {v0, v7}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "detailNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v4, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 88
    new-instance v6, Lorg/cybergarage/xml/Node;

    const-string v7, "UPnPError"

    invoke-direct {v6, v7}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 89
    .local v6, "upnpErrorNode":Lorg/cybergarage/xml/Node;
    const-string v7, "xmlns"

    const-string v8, "urn:schemas-upnp-org:control-1-0"

    invoke-virtual {v6, v7, v8}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v6}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 93
    new-instance v1, Lorg/cybergarage/xml/Node;

    const-string v7, "errorCode"

    invoke-direct {v1, v7}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "errorCodeNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Node;->setValue(I)V

    .line 95
    invoke-virtual {v6, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 98
    new-instance v2, Lorg/cybergarage/xml/Node;

    const-string v7, "errorDescription"

    invoke-direct {v2, v7}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "errorDesctiprionNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v2, p2}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v6, v2}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 102
    return-object v4
.end method

.method private getUPnPErrorCodeNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/cybergarage/upnp/control/ControlResponse;->getUPnPErrorNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 127
    .local v0, "errorNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 129
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method private getUPnPErrorDescriptionNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/cybergarage/upnp/control/ControlResponse;->getUPnPErrorNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 135
    .local v0, "errorNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 136
    const/4 v1, 0x0

    .line 137
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "errorDescription"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method private getUPnPErrorNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ControlResponse;->getFaultDetailNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 119
    .local v0, "detailNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 120
    const/4 v1, 0x0

    .line 121
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "UPnPError"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getUPnPError()Lorg/cybergarage/upnp/UPnPStatus;
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "code":I
    const-string v1, ""

    .line 166
    .local v1, "desc":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ControlResponse;->getUPnPErrorCode()I

    move-result v0

    .line 167
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ControlResponse;->getUPnPErrorDescription()Ljava/lang/String;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lorg/cybergarage/upnp/control/ControlResponse;->upnpErr:Lorg/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/UPnPStatus;->setCode(I)V

    .line 169
    iget-object v2, p0, Lorg/cybergarage/upnp/control/ControlResponse;->upnpErr:Lorg/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lorg/cybergarage/upnp/control/ControlResponse;->upnpErr:Lorg/cybergarage/upnp/UPnPStatus;

    return-object v2
.end method

.method public getUPnPErrorCode()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 142
    invoke-direct {p0}, Lorg/cybergarage/upnp/control/ControlResponse;->getUPnPErrorCodeNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 143
    .local v1, "errorCodeNode":Lorg/cybergarage/xml/Node;
    if-nez v1, :cond_0

    .line 150
    :goto_0
    return v3

    .line 145
    :cond_0
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "errorCodeStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getUPnPErrorDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Lorg/cybergarage/upnp/control/ControlResponse;->getUPnPErrorDescriptionNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 157
    .local v0, "errorDescNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 158
    const-string v1, ""

    .line 159
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setFaultResponse(I)V
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 61
    invoke-static {p1}, Lorg/cybergarage/upnp/UPnPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/control/ControlResponse;->setFaultResponse(ILjava/lang/String;)V

    .line 62
    return-void
.end method

.method public setFaultResponse(ILjava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "errDescr"    # Ljava/lang/String;

    .prologue
    .line 49
    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/control/ControlResponse;->setStatusCode(I)V

    .line 51
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ControlResponse;->getBodyNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 52
    .local v0, "bodyNode":Lorg/cybergarage/xml/Node;
    invoke-direct {p0, p1, p2}, Lorg/cybergarage/upnp/control/ControlResponse;->createFaultResponseNode(ILjava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 53
    .local v2, "faultNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v0, v2}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 55
    invoke-virtual {p0}, Lorg/cybergarage/upnp/control/ControlResponse;->getEnvelopeNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 56
    .local v1, "envNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/control/ControlResponse;->setContent(Lorg/cybergarage/xml/Node;)V

    .line 57
    return-void
.end method
