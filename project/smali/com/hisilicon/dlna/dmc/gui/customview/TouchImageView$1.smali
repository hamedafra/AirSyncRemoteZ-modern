.class Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 68
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->m:[F

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->getValues([F)V

    .line 69
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->m:[F

    const/4 v10, 0x2

    aget v5, v9, v10

    .line 70
    .local v5, "x":F
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->m:[F

    const/4 v10, 0x5

    aget v7, v9, v10

    .line 71
    .local v7, "y":F
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-direct {v0, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 73
    .local v0, "curr":Landroid/graphics/PointF;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 126
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    invoke-virtual {v9}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->invalidate()V

    .line 127
    const/4 v9, 0x1

    return v9

    .line 75
    :pswitch_1
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->last:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 76
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->start:Landroid/graphics/PointF;

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->last:Landroid/graphics/PointF;

    invoke-virtual {v9, v10}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 77
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    const/4 v10, 0x1

    iput v10, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->mode:I

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->mode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 81
    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->last:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float v1, v9, v10

    .line 82
    .local v1, "deltaX":F
    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->last:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float v2, v9, v10

    .line 83
    .local v2, "deltaY":F
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->origWidth:F

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v4, v9

    .line 84
    .local v4, "scaleWidth":F
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->origHeight:F

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v3, v9

    .line 85
    .local v3, "scaleHeight":F
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->width:F

    cmpg-float v9, v4, v9

    if-gez v9, :cond_3

    .line 86
    const/4 v1, 0x0

    .line 87
    add-float v9, v7, v2

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 88
    neg-float v2, v7

    .line 108
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 109
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->last:Landroid/graphics/PointF;

    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    .line 89
    :cond_2
    add-float v9, v7, v2

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bottom:F

    neg-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 90
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bottom:F

    add-float/2addr v9, v7

    neg-float v2, v9

    goto :goto_1

    .line 91
    :cond_3
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->height:F

    cmpg-float v9, v3, v9

    if-gez v9, :cond_5

    .line 92
    const/4 v2, 0x0

    .line 93
    add-float v9, v5, v1

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 94
    neg-float v1, v5

    goto :goto_1

    .line 95
    :cond_4
    add-float v9, v5, v1

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->right:F

    neg-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 96
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->right:F

    add-float/2addr v9, v5

    neg-float v1, v9

    goto :goto_1

    .line 98
    :cond_5
    add-float v9, v5, v1

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    .line 99
    neg-float v1, v5

    .line 103
    :cond_6
    :goto_2
    add-float v9, v7, v2

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 104
    neg-float v2, v7

    goto :goto_1

    .line 100
    :cond_7
    add-float v9, v5, v1

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->right:F

    neg-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6

    .line 101
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->right:F

    add-float/2addr v9, v5

    neg-float v1, v9

    goto :goto_2

    .line 105
    :cond_8
    add-float v9, v7, v2

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bottom:F

    neg-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 106
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bottom:F

    add-float/2addr v9, v7

    neg-float v2, v9

    goto :goto_1

    .line 114
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v3    # "scaleHeight":F
    .end local v4    # "scaleWidth":F
    :pswitch_3
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    const/4 v10, 0x0

    iput v10, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->mode:I

    .line 115
    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->start:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v6, v9

    .line 116
    .local v6, "xDiff":I
    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->start:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v8, v9

    .line 117
    .local v8, "yDiff":I
    const/4 v9, 0x3

    if-ge v6, v9, :cond_0

    const/4 v9, 0x3

    if-ge v8, v9, :cond_0

    .line 118
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    invoke-virtual {v9}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->performClick()Z

    goto/16 :goto_0

    .line 122
    .end local v6    # "xDiff":I
    .end local v8    # "yDiff":I
    :pswitch_4
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    const/4 v10, 0x0

    iput v10, v9, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->mode:I

    goto/16 :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
