.class Lcom/aloys/formuler/airsyncremote/GuideActivity$1;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/GuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/GuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/GuideActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 216
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_4

    .line 217
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$600(Lcom/aloys/formuler/airsyncremote/GuideActivity;)Lcom/aloys/formuler/airsyncremote/GuideGallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/GuideGallery;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$700(Lcom/aloys/formuler/airsyncremote/GuideActivity;I)V

    .line 218
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 219
    .local v1, "scrollDistance":I
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$600(Lcom/aloys/formuler/airsyncremote/GuideActivity;)Lcom/aloys/formuler/airsyncremote/GuideGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/GuideGallery;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$600(Lcom/aloys/formuler/airsyncremote/GuideActivity;)Lcom/aloys/formuler/airsyncremote/GuideGallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aloys/formuler/airsyncremote/GuideGallery;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_3

    .line 220
    if-lez v1, :cond_2

    .line 221
    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$800(Lcom/aloys/formuler/airsyncremote/GuideActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$500(Lcom/aloys/formuler/airsyncremote/GuideActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$500(Lcom/aloys/formuler/airsyncremote/GuideActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v2, v4}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$802(Lcom/aloys/formuler/airsyncremote/GuideActivity;Z)Z

    .line 236
    .end local v1    # "scrollDistance":I
    :cond_1
    :goto_0
    return v4

    .line 227
    .restart local v1    # "scrollDistance":I
    :cond_2
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v2, v5}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$802(Lcom/aloys/formuler/airsyncremote/GuideActivity;Z)Z

    goto :goto_0

    .line 229
    :cond_3
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v2, v5}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$802(Lcom/aloys/formuler/airsyncremote/GuideActivity;Z)Z

    goto :goto_0

    .line 231
    .end local v1    # "scrollDistance":I
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_1

    .line 232
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    const-class v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-virtual {v2, v0}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 234
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->finish()V

    goto :goto_0
.end method
