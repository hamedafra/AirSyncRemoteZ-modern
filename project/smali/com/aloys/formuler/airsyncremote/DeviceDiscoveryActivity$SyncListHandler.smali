.class Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$SyncListHandler;
.super Landroid/os/Handler;
.source "DeviceDiscoveryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;


# direct methods
.method public constructor <init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 869
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$SyncListHandler;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .line 870
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 871
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 876
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 880
    :sswitch_0
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$SyncListHandler;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$1700(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    goto :goto_0

    .line 885
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MSEARCH_RETRY_TIMES"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 886
    .local v2, "retryTimes":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MSEARCH_DELAY_TIME"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 887
    .local v0, "delayTime":J
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$SyncListHandler;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$200(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->msearch()V

    .line 888
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do msearch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rsub-int/lit8 v4, v2, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 890
    add-int/lit8 v2, v2, -0x1

    .line 891
    if-lez v2, :cond_0

    .line 893
    const-wide/16 v4, 0x7d0

    add-long/2addr v0, v4

    .line 894
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$SyncListHandler;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v3, v2, v0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$1600(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;IJ)V

    goto :goto_0

    .line 900
    .end local v0    # "delayTime":J
    .end local v2    # "retryTimes":I
    :sswitch_2
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$SyncListHandler;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$200(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->msearch()V

    goto :goto_0

    .line 876
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method
