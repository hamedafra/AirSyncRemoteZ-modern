.class Lcom/aloys/formuler/airsyncremote/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/controller/IAccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/BaseActivity;->resetAccessListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/BaseActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/BaseActivity;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dealNetWorkLostEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 586
    const-string v0, "Keep alive fail."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/BaseActivity;

    const/16 v1, 0x14

    invoke-static {v0, p1, v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->access$000(Lcom/aloys/formuler/airsyncremote/BaseActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 588
    return-void
.end method

.method public dealNetWorkNotWellEvent()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/BaseActivity;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;

    const/16 v1, 0xa

    .line 579
    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;->sendEmptyMessage(I)Z

    .line 580
    return-void
.end method

.method public dealReaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 594
    const-string v0, "Be reaved."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/BaseActivity;

    const/16 v1, 0x1e

    invoke-static {v0, p1, v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->access$000(Lcom/aloys/formuler/airsyncremote/BaseActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 596
    return-void
.end method

.method public dealSTBLeaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 602
    const-string v0, "STB leave."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/BaseActivity;

    const/16 v1, 0x28

    invoke-static {v0, p1, v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->access$000(Lcom/aloys/formuler/airsyncremote/BaseActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 604
    return-void
.end method

.method public dealSTBSuspendEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 610
    const-string v0, "STB suspend."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/BaseActivity;

    const/16 v1, 0x50

    invoke-static {v0, p1, v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->access$000(Lcom/aloys/formuler/airsyncremote/BaseActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 612
    return-void
.end method
