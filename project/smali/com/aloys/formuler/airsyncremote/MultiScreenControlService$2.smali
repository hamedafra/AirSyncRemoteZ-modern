.class Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;
.super Ljava/lang/Object;
.source "MultiScreenControlService.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/upnputils/IUpnpControlPointListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setControlPointListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .prologue
    .line 943
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public originalListAdd(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$200(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$200(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;->deviceAdd(Lorg/cybergarage/upnp/Device;)V

    .line 986
    :goto_0
    return-void

    .line 984
    :cond_0
    const-string v0, "mIOriginalDeviceListListener is null."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public originalListRemoved(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 992
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$200(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$200(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;->deviceRemoved(Lorg/cybergarage/upnp/Device;)V

    .line 1001
    :goto_0
    return-void

    .line 999
    :cond_0
    const-string v0, "mIOriginalDeviceListListener is null."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reavedNotify()V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->REAVED:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 948
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$100(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Lcom/hisilicon/multiscreen/controller/IAccessListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 950
    const-string v0, "Access listener is null."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 957
    :goto_0
    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$100(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Lcom/hisilicon/multiscreen/controller/IAccessListener;

    move-result-object v0

    sget-object v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-interface {v0, v1}, Lcom/hisilicon/multiscreen/controller/IAccessListener;->dealReaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    .line 955
    const-string v0, "Reaved Notify callback."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stbLeaveNotify()V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_LEAVE:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 963
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$100(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Lcom/hisilicon/multiscreen/controller/IAccessListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 965
    const-string v0, "Access listener is null."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 972
    :goto_0
    return-void

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$100(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Lcom/hisilicon/multiscreen/controller/IAccessListener;

    move-result-object v0

    sget-object v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-interface {v0, v1}, Lcom/hisilicon/multiscreen/controller/IAccessListener;->dealSTBLeaveEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    .line 970
    const-string v0, "STB Leave Notify callback."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stbSuspendNotify()V
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_SUSPEND:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 1007
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$100(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Lcom/hisilicon/multiscreen/controller/IAccessListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1009
    const-string v0, "Access listener is null."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1016
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$2;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$100(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Lcom/hisilicon/multiscreen/controller/IAccessListener;

    move-result-object v0

    sget-object v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-interface {v0, v1}, Lcom/hisilicon/multiscreen/controller/IAccessListener;->dealSTBSuspendEvent(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    .line 1014
    const-string v0, "Suspend Notify callback."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
