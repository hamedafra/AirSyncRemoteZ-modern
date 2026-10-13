.class Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;
.super Landroid/os/Handler;
.source "DeviceDiscoveryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceListHandler"
.end annotation


# instance fields
.field mActivityReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 1049
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1046
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    .line 1050
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    .line 1051
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1056
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .line 1057
    .local v0, "thisActivity":Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
    if-nez v0, :cond_0

    .line 1059
    const-string v2, "get activity fail."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1102
    :goto_0
    return-void

    .line 1063
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1068
    :pswitch_0
    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$1800(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    goto :goto_0

    .line 1075
    :pswitch_1
    const-string v2, "device info is null!"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1076
    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1078
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1084
    :pswitch_2
    const-string v2, "Ip address is invalid!"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1085
    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1087
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1094
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1095
    .local v1, "uuid":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$1900(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1063
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
