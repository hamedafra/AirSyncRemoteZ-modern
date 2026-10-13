.class Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;
.super Landroid/os/Handler;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingActivityHandler"
.end annotation


# instance fields
.field mActivityReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/aloys/formuler/airsyncremote/SettingActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 701
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    .line 702
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    .line 703
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 707
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 708
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .line 710
    .local v0, "activity":Lcom/aloys/formuler/airsyncremote/SettingActivity;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 771
    :goto_0
    return-void

    .line 714
    :sswitch_0
    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$1300(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    goto :goto_0

    .line 720
    :sswitch_1
    sget-object v1, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->VIME_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$1400(Lcom/aloys/formuler/airsyncremote/SettingActivity;Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;)V

    goto :goto_0

    .line 726
    :sswitch_2
    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$1300(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    goto :goto_0

    .line 732
    :sswitch_3
    sget-object v1, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->VIDEO_SWITCH:Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$1400(Lcom/aloys/formuler/airsyncremote/SettingActivity;Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;)V

    goto :goto_0

    .line 738
    :sswitch_4
    const-string v1, "keep alive packet loss!"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 739
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 741
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 747
    :sswitch_5
    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$1500(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    goto :goto_0

    .line 753
    :sswitch_6
    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$1500(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    goto :goto_0

    .line 759
    :sswitch_7
    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$1500(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    goto :goto_0

    .line 765
    :sswitch_8
    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->access$1500(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    goto :goto_0

    .line 710
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0x14 -> :sswitch_5
        0x1e -> :sswitch_6
        0x28 -> :sswitch_7
        0x32 -> :sswitch_0
        0x33 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3d -> :sswitch_3
        0x50 -> :sswitch_8
    .end sparse-switch
.end method
