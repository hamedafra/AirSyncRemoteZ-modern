.class public Lcom/hisilicon/multiscreen/widget/BottomLineImageView;
.super Landroid/widget/ImageView;
.source "BottomLineImageView.java"


# instance fields
.field private bottom_line_width:F

.field private offset:F

.field private position:I

.field private tabCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->tabCount:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->tabCount:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->tabCount:I

    .line 31
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->position:I

    return v0
.end method

.method public initTabCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->tabCount:I

    .line 49
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 35
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->bottom_line_width:F

    .line 40
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getScreenWidth()I

    move-result v3

    iget v4, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->tabCount:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->bottom_line_width:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    iput v2, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->offset:F

    .line 42
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 43
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget v2, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->offset:F

    mul-float/2addr v2, v5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 44
    invoke-virtual {p0, v1}, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 45
    return-void
.end method

.method public translateToPosition(I)V
    .locals 5
    .param p1, "arg0"    # I

    .prologue
    const/4 v4, 0x0

    .line 56
    iget v2, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->offset:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->bottom_line_width:F

    add-float v1, v2, v3

    .line 58
    .local v1, "one":F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->position:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float v3, p1

    mul-float/2addr v3, v1

    invoke-direct {v0, v2, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 60
    .local v0, "animation":Landroid/view/animation/Animation;
    iput p1, p0, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->position:I

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 63
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 65
    return-void
.end method
