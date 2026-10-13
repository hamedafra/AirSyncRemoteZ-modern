.class Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$8;
.super Landroid/os/Handler;
.source "DeviceDiscoveryActivity.java"


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
    .line 1115
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1119
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1143
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1144
    return-void

    .line 1123
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1124
    .local v0, "friendlyname":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1126
    const-string v0, ""

    .line 1128
    :cond_0
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$700(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$800(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1132
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$700(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 1137
    .end local v0    # "friendlyname":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$2002(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Z)Z

    goto :goto_0

    .line 1119
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
