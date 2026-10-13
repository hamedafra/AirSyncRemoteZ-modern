.class Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;
.super Landroid/os/Handler;
.source "MultiScreenControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;


# direct methods
.method private constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V
    .locals 0

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
    .param p2, "x1"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$1;

    .prologue
    .line 1159
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V

    return-void
.end method

.method private checkState()V
    .locals 1

    .prologue
    .line 1216
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->renewState()Z

    .line 1220
    :cond_0
    return-void
.end method

.method private showNoConnect()V
    .locals 2

    .prologue
    .line 1211
    const v0, 0x7f080079

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$1100()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/DialogUtils;->showToastLong(ILandroid/content/Context;)V

    .line 1212
    return-void
.end method

.method private startUpnpStack()V
    .locals 3

    .prologue
    .line 1189
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$800(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, "curConIP":Ljava/lang/String;
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$900()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1193
    if-eqz v0, :cond_0

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network available: NowIP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PreIP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$1000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1196
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->initSearch()V

    .line 1197
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$902(Z)Z

    .line 1200
    :cond_0
    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 1201
    return-void
.end method

.method private stopUpnpStack()V
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->finalizeSearch()V

    .line 1206
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$902(Z)Z

    .line 1207
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1164
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1185
    :goto_0
    return-void

    .line 1168
    :sswitch_0
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->startUpnpStack()V

    .line 1169
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->checkState()V

    goto :goto_0

    .line 1175
    :sswitch_1
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->stopUpnpStack()V

    goto :goto_0

    .line 1181
    :sswitch_2
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$MyHandler;->showNoConnect()V

    goto :goto_0

    .line 1164
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method
