.class Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;
.super Landroid/os/Handler;
.source "RemoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/RemoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncListHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;


# direct methods
.method public constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .line 1088
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1089
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1094
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1111
    :goto_0
    return-void

    .line 1098
    :sswitch_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$900(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    goto :goto_0

    .line 1104
    :sswitch_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$SyncListHandler;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    iget-object v0, v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->msearch()V

    goto :goto_0

    .line 1094
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch
.end method
