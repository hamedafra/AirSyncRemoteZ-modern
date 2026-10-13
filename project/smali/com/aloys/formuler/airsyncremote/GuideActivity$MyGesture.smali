.class public Lcom/aloys/formuler/airsyncremote/GuideActivity$MyGesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/GuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;


# direct methods
.method public constructor <init>(Lcom/aloys/formuler/airsyncremote/GuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/GuideActivity;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$MyGesture;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$MyGesture;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$500(Lcom/aloys/formuler/airsyncremote/GuideActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 164
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 166
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity$MyGesture;->this$0:Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->access$500(Lcom/aloys/formuler/airsyncremote/GuideActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 183
    return v4
.end method
