.class Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$5;
.super Ljava/lang/Object;
.source "DeviceDiscoveryActivity.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/controller/IAccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$5;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    .param p2, "what"    # I

    .prologue
    .line 527
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$5;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$900(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 528
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 529
    iput p2, v0, Landroid/os/Message;->what:I

    .line 530
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 531
    return-void
.end method


# virtual methods
.method public dealNetWorkLostEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 497
    const-string v0, "Keep alive fail."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 498
    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$5;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 499
    return-void
.end method

.method public dealNetWorkNotWellEvent()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$5;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$900(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;->sendEmptyMessage(I)Z

    .line 491
    return-void
.end method

.method public dealReaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 505
    const-string v0, "Be reaved."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 506
    const/16 v0, 0x1e

    invoke-direct {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$5;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 507
    return-void
.end method

.method public dealSTBLeaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 513
    const-string v0, "STB leave."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 514
    const/16 v0, 0x28

    invoke-direct {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$5;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 515
    return-void
.end method

.method public dealSTBSuspendEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 521
    const-string v0, "STB suspend."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 522
    const/16 v0, 0x50

    invoke-direct {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$5;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 523
    return-void
.end method
