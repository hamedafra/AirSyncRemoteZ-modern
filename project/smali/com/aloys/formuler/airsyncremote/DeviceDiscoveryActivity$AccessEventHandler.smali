.class Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;
.super Landroid/os/Handler;
.source "DeviceDiscoveryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessEventHandler"
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
    .line 622
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    .line 623
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    .line 624
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 628
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$AccessEventHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .line 629
    .local v0, "activity":Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 631
    if-nez v0, :cond_0

    .line 680
    :goto_0
    return-void

    .line 636
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 641
    :sswitch_0
    const-string v2, "keep alive packet loss!"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 642
    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$1000(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    goto :goto_0

    .line 649
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 650
    .local v1, "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$1100(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 657
    .end local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 658
    .restart local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$1200(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 666
    .end local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 667
    .restart local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$1300(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 673
    .end local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 674
    .restart local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$1400(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 636
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x50 -> :sswitch_4
    .end sparse-switch
.end method
