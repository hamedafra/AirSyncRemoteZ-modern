.class Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 13
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 155
    .local v0, "mScaleFactor":F
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v1, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    .line 156
    .local v1, "origScale":F
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v5, v0

    iput v5, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    .line 157
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->maxScale:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 158
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->maxScale:F

    iput v5, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    .line 159
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->maxScale:F

    div-float v0, v4, v1

    .line 164
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->width:F

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v6, v6, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v6, v6, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->width:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v6, v6, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantXSpace:F

    mul-float/2addr v6, v9

    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->right:F

    .line 165
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->height:F

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v6, v6, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v6, v6, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->height:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v6, v6, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantYSpace:F

    mul-float/2addr v6, v9

    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bottom:F

    .line 166
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->origWidth:F

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->width:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->origHeight:F

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->height:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_7

    .line 167
    :cond_1
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->width:F

    div-float/2addr v5, v9

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v6, v6, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->height:F

    div-float/2addr v6, v9

    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 168
    cmpg-float v4, v0, v10

    if-gez v4, :cond_2

    .line 169
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->m:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 170
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->m:[F

    aget v2, v4, v11

    .line 171
    .local v2, "x":F
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->m:[F

    aget v3, v4, v12

    .line 172
    .local v3, "y":F
    cmpg-float v4, v0, v10

    if-gez v4, :cond_2

    .line 173
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->origWidth:F

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->width:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 174
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bottom:F

    neg-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    .line 175
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bottom:F

    add-float/2addr v5, v3

    neg-float v5, v5

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 202
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 160
    :cond_3
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->minScale:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->minScale:F

    iput v5, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    .line 162
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->minScale:F

    div-float v0, v4, v1

    goto/16 :goto_0

    .line 176
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_4
    cmpl-float v4, v3, v8

    if-lez v4, :cond_2

    .line 177
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v5, v3

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 179
    :cond_5
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->right:F

    neg-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_6

    .line 180
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->right:F

    add-float/2addr v5, v2

    neg-float v5, v5

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 181
    :cond_6
    cmpl-float v4, v2, v8

    if-lez v4, :cond_2

    .line 182
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v5, v2

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 187
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_7
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 188
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->m:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 189
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->m:[F

    aget v2, v4, v11

    .line 190
    .restart local v2    # "x":F
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->m:[F

    aget v3, v4, v12

    .line 191
    .restart local v3    # "y":F
    cmpg-float v4, v0, v10

    if-gez v4, :cond_2

    .line 192
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->right:F

    neg-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_9

    .line 193
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->right:F

    add-float/2addr v5, v2

    neg-float v5, v5

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 196
    :cond_8
    :goto_2
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bottom:F

    neg-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_a

    .line 197
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget v5, v5, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bottom:F

    add-float/2addr v5, v3

    neg-float v5, v5

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 194
    :cond_9
    cmpl-float v4, v2, v8

    if-lez v4, :cond_8

    .line 195
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v5, v2

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 198
    :cond_a
    cmpl-float v4, v3, v8

    if-lez v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v5, v3

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    const/4 v1, 0x2

    iput v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->mode:I

    .line 149
    const/4 v0, 0x1

    return v0
.end method
