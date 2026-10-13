.class Lcom/aloys/formuler/airsyncremote/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 254
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 272
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$300()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$400(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    .line 278
    const-string v2, "Gsensor start."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 323
    :cond_0
    :goto_0
    return v3

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$500(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    .line 283
    const-string v2, "Gsensor stop."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$600()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 288
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$200(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

    move-result-object v2

    const/16 v4, 0x33

    invoke-virtual {v2, v4}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;->sendEmptyMessage(I)Z

    .line 290
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$700(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Z

    move-result v0

    .line 293
    .local v0, "result":Z
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$800(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setVideoPlay(Z)V

    .line 301
    :goto_1
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 302
    .local v1, "showTimer":Ljava/util/Timer;
    new-instance v2, Lcom/aloys/formuler/airsyncremote/SettingActivity$2$1;

    invoke-direct {v2, p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity$2$1;-><init>(Lcom/aloys/formuler/airsyncremote/SettingActivity$2;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 297
    .end local v0    # "result":Z
    .end local v1    # "showTimer":Ljava/util/Timer;
    :cond_3
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$900(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Z

    move-result v0

    .line 298
    .restart local v0    # "result":Z
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$800(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v4

    if-nez v0, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setVideoPlay(Z)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 312
    .end local v0    # "result":Z
    :cond_5
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$1000()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 316
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$1100(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    goto :goto_0

    .line 320
    :cond_6
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/SettingActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$1200(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    goto/16 :goto_0
.end method
