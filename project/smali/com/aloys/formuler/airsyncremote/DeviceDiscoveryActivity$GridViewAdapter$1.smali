.class Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;
.super Ljava/lang/Object;
.source "DeviceDiscoveryActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

.field final synthetic val$position:I

.field final synthetic val$viewHolder:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->this$1:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    iput-object p2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->val$viewHolder:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;

    iput p3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 1717
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 1719
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->val$viewHolder:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->mDevice_layer:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1770
    :cond_0
    :goto_0
    return v5

    .line 1721
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1723
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->val$viewHolder:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->mDevice_layer:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1725
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1727
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->val$viewHolder:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->mDevice_layer:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1728
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->this$1:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->access$2100(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;)[Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->val$position:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 1742
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->this$1:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    const-class v4, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1745
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->this$1:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .line 1746
    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$200(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 1747
    .local v1, "device":Lorg/cybergarage/upnp/Device;
    const-string v4, "STBIP"

    if-eqz v1, :cond_4

    .line 1748
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->uri2Ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1747
    :goto_1
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1750
    const-string v3, "ConnectStatue"

    .line 1751
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v4

    .line 1750
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1752
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->this$1:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-virtual {v3, v2}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1731
    .end local v1    # "device":Lorg/cybergarage/upnp/Device;
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->this$1:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    const-class v4, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1733
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->this$1:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .line 1734
    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$200(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1735
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    const-string v4, "STBIP"

    if-eqz v0, :cond_3

    .line 1736
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->uri2Ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1735
    :goto_2
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1738
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->this$1:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-virtual {v3, v2}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1736
    :cond_3
    const-string v3, "STBIP"

    goto :goto_2

    .line 1748
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .restart local v1    # "device":Lorg/cybergarage/upnp/Device;
    :cond_4
    const-string v3, "STBIP"

    goto :goto_1

    .line 1757
    .end local v1    # "device":Lorg/cybergarage/upnp/Device;
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_2
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->this$1:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$2200(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    goto/16 :goto_0

    .line 1763
    :sswitch_3
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$1;->this$1:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$2300(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    goto/16 :goto_0

    .line 1728
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020011 -> :sswitch_0
        0x7f02001f -> :sswitch_3
        0x7f020023 -> :sswitch_1
        0x7f02002a -> :sswitch_2
    .end sparse-switch
.end method
