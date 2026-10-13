.class Lcom/aloys/formuler/airsyncremote/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/controller/IAccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/SettingActivity;->resetAccessListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$3;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dealNetWorkLostEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 796
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$3;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$200(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;->sendEmptyMessage(I)Z

    .line 797
    return-void
.end method

.method public dealNetWorkNotWellEvent()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$3;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$200(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;->sendEmptyMessage(I)Z

    .line 790
    return-void
.end method

.method public dealReaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$3;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$200(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;->sendEmptyMessage(I)Z

    .line 804
    return-void
.end method

.method public dealSTBLeaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$3;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$200(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;->sendEmptyMessage(I)Z

    .line 811
    return-void
.end method

.method public dealSTBSuspendEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$3;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$200(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;->sendEmptyMessage(I)Z

    .line 818
    return-void
.end method
