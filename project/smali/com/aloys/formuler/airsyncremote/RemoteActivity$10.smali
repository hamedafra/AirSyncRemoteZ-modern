.class Lcom/aloys/formuler/airsyncremote/RemoteActivity$10;
.super Ljava/lang/Object;
.source "RemoteActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/RemoteActivity;->hideWarnLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$10;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$10;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$1500(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1358
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$10;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$1500(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1352
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1347
    return-void
.end method
