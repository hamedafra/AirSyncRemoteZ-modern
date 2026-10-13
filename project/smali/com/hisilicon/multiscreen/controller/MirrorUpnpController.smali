.class public Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;
.super Ljava/lang/Object;
.source "MirrorUpnpController.java"


# instance fields
.field private mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 26
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 27
    return-void
.end method

.method private setMirrorParameter(Ljava/lang/String;)Z
    .locals 5
    .param p1, "MirrorParameter"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v3, "urn:schemas-upnp-org:service:MirrorControlServer:1"

    const-string v4, "SetMirrorParameter"

    .line 109
    invoke-virtual {v2, v3, v4}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 111
    .local v0, "setMirrorParameterAct":Lorg/cybergarage/upnp/Action;
    if-nez v0, :cond_1

    .line 113
    const-string v2, "setMirrorParameterAct not found"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    const-string v2, "RemoteID"

    iget-object v3, p0, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 117
    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getRemoteId()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "MirrorParameter"

    invoke-virtual {v0, v2, p1}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startMirror()Z
    .locals 4

    .prologue
    .line 127
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v2, "urn:schemas-upnp-org:service:MirrorControlServer:1"

    const-string v3, "StartMirror"

    .line 128
    invoke-virtual {v1, v2, v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 130
    .local v0, "startMirrorAct":Lorg/cybergarage/upnp/Action;
    if-nez v0, :cond_0

    .line 132
    const-string v1, "StartMirrorAct not found"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x0

    .line 135
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v1, v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->postAction(Lorg/cybergarage/upnp/Action;)Z

    move-result v1

    goto :goto_0
.end method

.method private stopMirror()Z
    .locals 4

    .prologue
    .line 140
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v2, "urn:schemas-upnp-org:service:MirrorControlServer:1"

    const-string v3, "StopMirror"

    .line 141
    invoke-virtual {v1, v2, v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 143
    .local v0, "stopMirrorAct":Lorg/cybergarage/upnp/Action;
    if-nez v0, :cond_0

    .line 145
    const-string v1, "StopMirrorAct not found"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x0

    .line 148
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v1, v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->postAction(Lorg/cybergarage/upnp/Action;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 35
    return-void
.end method

.method public setMirrorParameter(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "MirrorParameter"    # Ljava/lang/String;
    .param p2, "times"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "isOK":Z
    if-gtz p2, :cond_0

    .line 47
    const/4 p2, 0x1

    .line 52
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 53
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->setMirrorParameter(Ljava/lang/String;)Z

    move-result v0

    .line 55
    if-nez v0, :cond_1

    if-gtz p2, :cond_0

    .line 57
    :cond_1
    return v0
.end method

.method public startMirror(I)Z
    .locals 1
    .param p1, "times"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "isOK":Z
    if-gtz p1, :cond_0

    .line 70
    const/4 p1, 0x1

    .line 75
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 76
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->startMirror()Z

    move-result v0

    .line 78
    if-nez v0, :cond_1

    if-gtz p1, :cond_0

    .line 80
    :cond_1
    return v0
.end method

.method public stopMirror(I)Z
    .locals 1
    .param p1, "times"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "isOK":Z
    if-gtz p1, :cond_0

    .line 93
    const/4 p1, 0x1

    .line 98
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 99
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/MirrorUpnpController;->stopMirror()Z

    move-result v0

    .line 101
    if-nez v0, :cond_1

    if-gtz p1, :cond_0

    .line 103
    :cond_1
    return v0
.end method
