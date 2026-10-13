.class Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$6;
.super Ljava/lang/Thread;
.source "DeviceDiscoveryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->sendByeToSTB(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V
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
    .line 781
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$6;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 784
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->accessByebye()Z

    move-result v0

    .line 785
    .local v0, "isByebye":Z
    if-nez v0, :cond_0

    .line 787
    const-string v1, "AccessByebye failed and try again!"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 788
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->accessByebye()Z

    .line 790
    :cond_0
    return-void
.end method
