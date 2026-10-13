.class Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$12;
.super Ljava/lang/Object;
.source "MultiScreenActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$12;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 1378
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1388
    :goto_0
    return v2

    .line 1380
    :pswitch_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$12;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1900(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1381
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$12;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$700(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    goto :goto_0

    .line 1384
    :pswitch_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$12;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1900(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1385
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$12;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$2000(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    goto :goto_0

    .line 1378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
