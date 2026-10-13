.class public Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;
.super Landroid/widget/ImageView;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;
    }
.end annotation


# static fields
.field static final CLICK:I = 0x3

.field static final DRAG:I = 0x1

.field static final NONE:I = 0x0

.field static final ZOOM:I = 0x2


# instance fields
.field bmHeight:F

.field bmWidth:F

.field bottom:F

.field context:Landroid/content/Context;

.field height:F

.field last:Landroid/graphics/PointF;

.field m:[F

.field mScaleDetector:Landroid/view/ScaleGestureDetector;

.field mTouchListener:Landroid/view/View$OnTouchListener;

.field matrix:Landroid/graphics/Matrix;

.field maxScale:F

.field minScale:F

.field mode:I

.field origHeight:F

.field origWidth:F

.field redundantXSpace:F

.field redundantYSpace:F

.field right:F

.field saveScale:F

.field start:Landroid/graphics/PointF;

.field width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->mode:I

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->last:Landroid/graphics/PointF;

    .line 25
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->start:Landroid/graphics/PointF;

    .line 26
    iput v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->minScale:F

    .line 27
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->maxScale:F

    .line 34
    iput v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    .line 62
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 43
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->mode:I

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->last:Landroid/graphics/PointF;

    .line 25
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->start:Landroid/graphics/PointF;

    .line 26
    iput v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->minScale:F

    .line 27
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->maxScale:F

    .line 34
    iput v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    .line 62
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 48
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private sharedConstructing(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 52
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 53
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->context:Landroid/content/Context;

    .line 54
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$ScaleListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 55
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->m:[F

    .line 57
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 58
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 209
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 210
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->width:F

    .line 211
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->height:F

    .line 214
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->width:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bmWidth:F

    div-float v1, v3, v4

    .line 215
    .local v1, "scaleX":F
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->height:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bmHeight:F

    div-float v2, v3, v4

    .line 216
    .local v2, "scaleY":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 217
    .local v0, "scale":F
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 218
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 219
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    .line 222
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->height:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bmHeight:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantYSpace:F

    .line 223
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->width:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bmWidth:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantXSpace:F

    .line 224
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantYSpace:F

    div-float/2addr v3, v6

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantYSpace:F

    .line 225
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantXSpace:F

    div-float/2addr v3, v6

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantXSpace:F

    .line 227
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantXSpace:F

    iget v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantYSpace:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 229
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->width:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantXSpace:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->origWidth:F

    .line 230
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->height:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantYSpace:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->origHeight:F

    .line 231
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->width:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->width:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantXSpace:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->right:F

    .line 232
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->height:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->height:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->redundantYSpace:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bottom:F

    .line 233
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 234
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bmWidth:F

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->bmHeight:F

    .line 139
    :cond_0
    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 142
    iput p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->maxScale:F

    .line 143
    return-void
.end method
