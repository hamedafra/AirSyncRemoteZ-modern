.class public Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;
.super Ljava/lang/Object;
.source "SlideDetector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DOWN_TIME:I = 0x2bc

.field private static final MIN_DISTANCE:I = 0x64


# instance fields
.field private callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;

.field private downY:F

.field private enabled:Z

.field private moveY:F

.field private upY:F


# direct methods
.method public constructor <init>(Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->enabled:Z

    .line 16
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;

    .line 17
    return-void
.end method

.method private onDeltaY(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->enabled:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;

    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;->deltaY(I)V

    .line 83
    :cond_0
    return-void
.end method

.method private onDownToUpSlide()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->enabled:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;->slideDownToUp()V

    .line 88
    :cond_0
    return-void
.end method

.method private onSlideTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->enabled:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;

    invoke-interface {v0, p1, p2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onTap()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->enabled:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;->onTap()V

    .line 98
    :cond_0
    return-void
.end method

.method private onUpToDownSlide()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->enabled:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/SlideCallback;->slideUpToDown()V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->enabled:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->onSlideTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 30
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->downY:F

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->moveY:F

    goto :goto_0

    .line 35
    :pswitch_1
    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->moveY:F

    .line 36
    .local v2, "preY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 37
    .local v1, "nowY":F
    iput v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->moveY:F

    .line 39
    cmpl-float v3, v2, v8

    if-eqz v3, :cond_0

    .line 42
    sub-float v0, v1, v2

    .line 43
    .local v0, "deltaY":F
    float-to-int v3, v0

    invoke-direct {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->onDeltaY(I)V

    goto :goto_0

    .line 47
    .end local v0    # "deltaY":F
    .end local v1    # "nowY":F
    .end local v2    # "preY":F
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->upY:F

    .line 49
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->downY:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->upY:F

    sub-float v0, v3, v4

    .line 50
    .restart local v0    # "deltaY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2bc

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 52
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 54
    cmpg-float v3, v0, v8

    if-gez v3, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->onUpToDownSlide()V

    goto :goto_0

    .line 58
    :cond_1
    cmpl-float v3, v0, v8

    if-lez v3, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->onDownToUpSlide()V

    goto :goto_0

    .line 65
    :cond_2
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->onTap()V

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/SlideDetector;->enabled:Z

    .line 21
    return-void
.end method
