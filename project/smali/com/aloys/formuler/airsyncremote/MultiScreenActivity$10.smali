.class Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$10;
.super Ljava/lang/Object;
.source "MultiScreenActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->showController()V
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
    .line 1332
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$10;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x1

    .line 1340
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$10;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1900(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1341
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$10;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1900(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1342
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1347
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$10;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1100(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1336
    return-void
.end method
