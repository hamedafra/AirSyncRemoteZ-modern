.class Lcom/aloys/formuler/airsyncremote/SettingActivity$2$1;
.super Ljava/util/TimerTask;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/SettingActivity$2;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aloys/formuler/airsyncremote/SettingActivity$2;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/SettingActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/aloys/formuler/airsyncremote/SettingActivity$2;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2$1;->this$1:Lcom/aloys/formuler/airsyncremote/SettingActivity$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2$1;->this$1:Lcom/aloys/formuler/airsyncremote/SettingActivity$2;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$200(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;->sendEmptyMessage(I)Z

    .line 308
    return-void
.end method
