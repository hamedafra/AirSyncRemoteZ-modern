.class Lcom/aloys/formuler/airsyncremote/SettingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/SettingActivity;
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
    .line 231
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 235
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "action":Ljava/lang/String;
    const-string v1, "hiandroid.vimestatus.switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "receive the vime switch read"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$002(Lcom/aloys/formuler/airsyncremote/SettingActivity;J)J

    .line 240
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$000(Lcom/aloys/formuler/airsyncremote/SettingActivity;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$100(Lcom/aloys/formuler/airsyncremote/SettingActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$200(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;->sendEmptyMessage(I)Z

    .line 245
    :cond_0
    return-void
.end method
