.class public Lcom/hisilicon/multiscreen/controller/VinputUpnpController;
.super Ljava/lang/Object;
.source "VinputUpnpController.java"


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

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/VinputUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 23
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/VinputUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

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

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/VinputUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 32
    return-void
.end method

.method public startVinput()Z
    .locals 4

    .prologue
    .line 40
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/VinputUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v2, "urn:schemas-upnp-org:service:VinputControlServer:1"

    const-string v3, "StartVinput"

    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 43
    .local v0, "startVinputAct":Lorg/cybergarage/upnp/Action;
    if-nez v0, :cond_0

    .line 45
    const-string v1, "StartVinputAct is null"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x0

    .line 48
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/VinputUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v1, v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->postAction(Lorg/cybergarage/upnp/Action;)Z

    move-result v1

    goto :goto_0
.end method

.method public stopVinput()Z
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/VinputUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v2, "urn:schemas-upnp-org:service:VinputControlServer:1"

    const-string v3, "StopVinput"

    .line 58
    invoke-virtual {v1, v2, v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getAction(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 60
    .local v0, "stopVinputAct":Lorg/cybergarage/upnp/Action;
    if-nez v0, :cond_0

    .line 62
    const-string v1, "stopVinputAct is null"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x0

    .line 65
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/VinputUpnpController;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v1, v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->postAction(Lorg/cybergarage/upnp/Action;)Z

    move-result v1

    goto :goto_0
.end method
