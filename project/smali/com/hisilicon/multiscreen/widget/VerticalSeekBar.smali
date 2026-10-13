.class public Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;
.super Landroid/widget/AbsSeekBar;
.source "VerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    .line 66
    .local v0, "available":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 67
    .local v5, "thumbWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 68
    .local v3, "thumbHeight":I
    sub-int/2addr v0, v5

    .line 70
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getThumbOffset()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 71
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 73
    .local v4, "thumbPos":I
    const/high16 v7, -0x80000000

    if-ne p4, v7, :cond_0

    .line 74
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 75
    .local v2, "oldBounds":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 76
    .local v6, "topBound":I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 81
    .end local v2    # "oldBounds":Landroid/graphics/Rect;
    .local v1, "bottomBound":I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    return-void

    .line 78
    .end local v1    # "bottomBound":I
    .end local v6    # "topBound":I
    :cond_0
    move v6, p4

    .line 79
    .restart local v6    # "topBound":I
    add-int v1, p4, v3

    .restart local v1    # "bottomBound":I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getHeight()I

    move-result v0

    .line 147
    .local v0, "Height":I
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v7

    sub-int v2, v6, v7

    .line 148
    .local v2, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v1, v6

    .line 150
    .local v1, "Y":I
    const/4 v4, 0x0

    .line 151
    .local v4, "progress":F
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int v6, v0, v6

    if-le v1, v6, :cond_0

    .line 152
    const/4 v5, 0x0

    .line 159
    .local v5, "scale":F
    :goto_0
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getMax()I

    move-result v3

    .line 160
    .local v3, "max":I
    int-to-float v6, v3

    mul-float v4, v5, v6

    .line 162
    float-to-int v6, v4

    invoke-virtual {p0, v6}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setProgress(I)V

    .line 163
    return-void

    .line 153
    .end local v3    # "max":I
    .end local v5    # "scale":F
    :cond_0
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getPaddingTop()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 154
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_0

    .line 156
    .end local v5    # "scale":F
    :cond_1
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getPaddingBottom()I

    move-result v6

    sub-int v6, v0, v6

    sub-int/2addr v6, v1

    int-to-float v6, v6

    int-to-float v7, v2

    div-float v5, v6, v7

    .restart local v5    # "scale":F
    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 86
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 87
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 88
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/AbsSeekBar;->onMeasure(II)V

    .line 94
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 55
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getHeight()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 57
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->invalidate()V

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v1, p0, v2, p2}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;->onProgressChanged(Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;IZ)V

    .line 62
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 105
    invoke-super {p0, p2, p1, p3, p4}, Landroid/widget/AbsSeekBar;->onSizeChanged(IIII)V

    .line 106
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;->onStartTrackingTouch(Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;)V

    .line 45
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;->onStopTrackingTouch(Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    :goto_0
    return v0

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 142
    goto :goto_0

    .line 115
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setPressed(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->onStartTrackingTouch()V

    .line 117
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 118
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_1

    .line 122
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 123
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->attemptClaimDrag()V

    .line 124
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    goto :goto_1

    .line 128
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 129
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->onStopTrackingTouch()V

    .line 130
    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setPressed(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 132
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->invalidate()V

    goto :goto_1

    .line 136
    :pswitch_3
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->onStopTrackingTouch()V

    .line 137
    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setPressed(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 139
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->invalidate()V

    goto :goto_1

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    .line 39
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 100
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method
