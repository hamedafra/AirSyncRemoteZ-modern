.class Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$2;
.super Ljava/lang/Object;
.source "MultiScreenActivity.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/controller/IAccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->resetAccessListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dealNetWorkLostEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 593
    const-string v0, "keep alive fail."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    const/16 v1, 0x14

    invoke-static {v0, p1, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$500(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 595
    return-void
.end method

.method public dealNetWorkNotWellEvent()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$400(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;->sendEmptyMessage(I)Z

    .line 587
    return-void
.end method

.method public dealReaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 601
    const-string v0, "be reaved."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    const/16 v1, 0x1e

    invoke-static {v0, p1, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$500(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 603
    return-void
.end method

.method public dealSTBLeaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 609
    const-string v0, "STB leave."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    const/16 v1, 0x28

    invoke-static {v0, p1, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$500(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 611
    return-void
.end method

.method public dealSTBSuspendEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 617
    const-string v0, "STB suspend."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    const/16 v1, 0x50

    invoke-static {v0, p1, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$500(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 619
    return-void
.end method
