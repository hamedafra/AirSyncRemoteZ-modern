.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$2;
.super Ljava/lang/Object;
.source "PlayingVideoActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->showWarnLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$000(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 137
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$000(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 132
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 128
    return-void
.end method
