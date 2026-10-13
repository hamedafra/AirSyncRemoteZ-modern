.class Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$11;
.super Ljava/lang/Object;
.source "MultiScreenActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->hideController()V
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
    .line 1355
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$11;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$11;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1100(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1364
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1369
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1359
    return-void
.end method
