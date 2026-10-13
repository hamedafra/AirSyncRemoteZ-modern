.class Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$1;
.super Ljava/lang/Object;
.source "DeviceDiscoveryActivity.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/upnputils/UpnpDeviceListHandler;


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
    .line 249
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDeviceList()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$000(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$200(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->getDeviceList()Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$102(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;)Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    .line 256
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$300(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$DeviceListHandler;->sendEmptyMessage(I)Z

    .line 258
    return-void

    .line 256
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
