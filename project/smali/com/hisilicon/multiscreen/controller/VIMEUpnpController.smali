.class public Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;
.super Ljava/lang/Object;
.source "VIMEUpnpController.java"


# instance fields
.field private mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 29
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 30
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 38
    return-void
.end method

.method public setVIMEParameter(I)Z
    .locals 9
    .param p1, "port"    # I

    .prologue
    const/4 v5, 0x0

    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, "result":Z
    iget-object v6, p0, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v7, "urn:schemas-upnp-org:service:VIMEControlServer:1"

    const-string v8, "SetVIMEParameter"

    .line 66
    invoke-virtual {v6, v7, v8}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v4

    .line 68
    .local v4, "setVIMEParameterAct":Lorg/cybergarage/upnp/Action;
    if-nez v4, :cond_0

    .line 70
    const-string v6, "setVIMEParameterAct is null"

    invoke-static {v6}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 87
    :goto_0
    return v5

    .line 74
    :cond_0
    iget-object v6, p0, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v6}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 75
    .local v1, "device":Lorg/cybergarage/upnp/Device;
    if-nez v1, :cond_1

    .line 77
    const-string v6, "Current device is null, fail to set VIME parameter."

    invoke-static {v6}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->uri2Ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->getSameSegmentIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "clientIP":Ljava/lang/String;
    const-string v5, "VIME"

    .line 83
    invoke-static {v5, v0, p1}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->ipAndPort2Uri(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "parameter":Ljava/lang/String;
    const-string v5, "VIMEParameter"

    invoke-virtual {v4, v5, v2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v5, p0, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v5, v4}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->postAction(Lorg/cybergarage/upnp/Action;)Z

    move-result v3

    move v5, v3

    .line 87
    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x7e0

    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->setVIMEParameter(I)Z

    .line 46
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->startVIMEControlServer()Z

    .line 47
    return-void
.end method

.method public startVIMEControlServer()Z
    .locals 5

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "result":Z
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v3, "urn:schemas-upnp-org:service:VIMEControlServer:1"

    const-string v4, "StartVIMEControlServer"

    .line 98
    invoke-virtual {v2, v3, v4}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v1

    .line 100
    .local v1, "startVIMEControlServerAct":Lorg/cybergarage/upnp/Action;
    if-nez v1, :cond_0

    .line 102
    const-string v2, "startVIMEControlServerAct is null"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x0

    .line 106
    :goto_0
    return v2

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v2, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->postAction(Lorg/cybergarage/upnp/Action;)Z

    move-result v0

    move v2, v0

    .line 106
    goto :goto_0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->stopVIMEControlServer()Z

    .line 55
    return-void
.end method

.method public stopVIMEControlServer()Z
    .locals 6

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "result":Z
    iget-object v3, p0, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v4, "urn:schemas-upnp-org:service:VIMEControlServer:1"

    const-string v5, "StopVIMEControlServer"

    .line 117
    invoke-virtual {v3, v4, v5}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v2

    .line 120
    .local v2, "stopVIMEControlServerAct":Lorg/cybergarage/upnp/Action;
    if-nez v2, :cond_0

    .line 122
    const-string v3, "stopVIMEControlServerAct is null"

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    move v1, v0

    .line 127
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_0
    return v1

    .line 126
    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_0
    iget-object v3, p0, Lcom/hisilicon/multiscreen/controller/VIMEUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v3, v2}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->postAction(Lorg/cybergarage/upnp/Action;)Z

    move-result v0

    move v1, v0

    .line 127
    .restart local v1    # "result":I
    goto :goto_0
.end method
