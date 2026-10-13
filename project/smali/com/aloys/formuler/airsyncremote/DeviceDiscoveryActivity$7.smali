.class Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$7;
.super Ljava/lang/Object;
.source "DeviceDiscoveryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
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
    .line 800
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$7;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 804
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 825
    :goto_0
    return-void

    .line 808
    :sswitch_0
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$7;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$1500(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    move-result-object v1

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$7;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$700(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->showAtLocation(Landroid/view/View;III)V

    .line 809
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$7;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    const/4 v2, 0x3

    const-wide/16 v4, 0x7d0

    invoke-static {v1, v2, v4, v5}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$1600(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;IJ)V

    goto :goto_0

    .line 815
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$7;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    const-class v2, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 817
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 818
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$7;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-virtual {v1, v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 804
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0021 -> :sswitch_0
        0x7f0b0027 -> :sswitch_1
    .end sparse-switch
.end method
