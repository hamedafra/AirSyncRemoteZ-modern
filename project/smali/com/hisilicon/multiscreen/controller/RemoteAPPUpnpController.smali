.class public Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;
.super Ljava/lang/Object;
.source "RemoteAPPUpnpController.java"


# instance fields
.field private mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 23
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 24
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 32
    return-void
.end method

.method public startRemoteApp()Z
    .locals 5

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "result":Z
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v3, "urn:schemas-upnp-org:service:RemoteAppControlServer:1"

    const-string v4, "StartRemoteApp"

    .line 42
    invoke-virtual {v2, v3, v4}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v1

    .line 45
    .local v1, "startRemoteAppAct":Lorg/cybergarage/upnp/Action;
    if-nez v1, :cond_0

    .line 47
    const-string v2, "startRemoteAppAct is null"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x0

    .line 52
    :goto_0
    return v2

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v2, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->postAction(Lorg/cybergarage/upnp/Action;)Z

    move-result v0

    move v2, v0

    .line 52
    goto :goto_0
.end method

.method public stopRemoteApp()Z
    .locals 5

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "result":Z
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v3, "urn:schemas-upnp-org:service:VIMEControlServer:1"

    const-string v4, "StopRemoteApp"

    .line 63
    invoke-virtual {v2, v3, v4}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v1

    .line 66
    .local v1, "stopRemoteAppAct":Lorg/cybergarage/upnp/Action;
    if-nez v1, :cond_0

    .line 68
    const-string v2, "stopRemoteAppAct is null"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 69
    const/4 v2, 0x0

    .line 73
    :goto_0
    return v2

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/RemoteAPPUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v2, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->postAction(Lorg/cybergarage/upnp/Action;)Z

    move-result v0

    move v2, v0

    .line 73
    goto :goto_0
.end method
