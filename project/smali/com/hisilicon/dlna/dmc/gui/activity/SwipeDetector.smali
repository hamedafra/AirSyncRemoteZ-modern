.class public Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;
.super Ljava/lang/Object;
.source "SwipeDetector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DOWN_TIME:I = 0x2bc

.field private static final MIN_DISTANCE:I = 0x64


# instance fields
.field private callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/SwipeCallback;

.field private downX:F

.field private enabled:Z

.field private upX:F


# direct methods
.method public constructor <init>(Lcom/hisilicon/dlna/dmc/processor/interfaces/SwipeCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/SwipeCallback;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->enabled:Z

    .line 16
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/SwipeCallback;

    .line 17
    return-void
.end method

.method private onLeftToRightSwipe()V
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->enabled:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/SwipeCallback;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/SwipeCallback;->swipeToPrevious()V

    .line 62
    :cond_0
    return-void
.end method

.method private onRightToLeftSwipe()V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->enabled:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/SwipeCallback;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/SwipeCallback;->swipeToNext()V

    .line 57
    :cond_0
    return-void
.end method

.method private onTap()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->enabled:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/SwipeCallback;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/SwipeCallback;->onTap()V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->enabled:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 51
    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    .line 30
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->downX:F

    goto :goto_0

    .line 34
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->upX:F

    .line 36
    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->downX:F

    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->upX:F

    sub-float v0, v2, v3

    .line 37
    .local v0, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2bc

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 39
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 40
    cmpg-float v2, v0, v6

    if-gez v2, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->onLeftToRightSwipe()V

    goto :goto_0

    .line 42
    :cond_1
    cmpl-float v2, v0, v6

    if-lez v2, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->onRightToLeftSwipe()V

    goto :goto_0

    .line 46
    :cond_2
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->onTap()V

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->enabled:Z

    .line 21
    return-void
.end method
