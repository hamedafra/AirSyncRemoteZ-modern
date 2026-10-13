.class Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;
.super Ljava/lang/Object;
.source "RemoteTouchView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->initSwipeDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dX1:F

.field private dY1:F

.field private isDownReset:Z

.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->isDownReset:Z

    return-void
.end method

.method private matchDown()V
    .locals 4

    .prologue
    const/high16 v2, 0x40a00000    # 5.0f

    .line 352
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->isDownReset:Z

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 357
    :cond_0
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->x2:F

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$600(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dX1:F

    .line 358
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->y2:F

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$700(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dY1:F

    .line 359
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dX1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dY1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$900(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)V

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$1000(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$1000(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private matchGesture()V
    .locals 4

    .prologue
    .line 376
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->x2:F

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$600(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dX1:F

    .line 377
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->y2:F

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$700(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dY1:F

    .line 378
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dX1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dY1:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dY1:F

    const/high16 v1, -0x3d100000    # -120.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$900(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)V

    .line 382
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->resetDownXY()V

    .line 404
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$1000(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$1000(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    return-void

    .line 384
    :cond_1
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dX1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dY1:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dY1:F

    const/high16 v1, 0x42f00000    # 120.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$900(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)V

    .line 388
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->resetDownXY()V

    goto :goto_0

    .line 390
    :cond_2
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dX1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dY1:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dX1:F

    const/high16 v1, -0x3cea0000    # -150.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$900(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)V

    .line 394
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->resetDownXY()V

    goto :goto_0

    .line 396
    :cond_3
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dX1:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dY1:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->dX1:F

    const/high16 v1, 0x43160000    # 150.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$900(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)V

    .line 400
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->resetDownXY()V

    goto/16 :goto_0
.end method

.method private resetDownXY()V
    .locals 2

    .prologue
    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->isDownReset:Z

    .line 411
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->x2:F

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$602(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)I

    .line 412
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->y2:F

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$702(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)I

    .line 413
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 315
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 347
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 319
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->x1:F

    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->y1:F

    .line 321
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->x1:F

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$602(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)I

    .line 322
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->y1:F

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$702(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)I

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->isDownReset:Z

    .line 324
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$800(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)V

    .line 325
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->access$300(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)V

    goto :goto_0

    .line 332
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->x2:F

    .line 333
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->y2:F

    .line 335
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->matchDown()V

    goto :goto_0

    .line 340
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->x2:F

    .line 341
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->y2:F

    .line 343
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;->matchGesture()V

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
