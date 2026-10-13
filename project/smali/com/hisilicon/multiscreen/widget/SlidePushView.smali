.class public Lcom/hisilicon/multiscreen/widget/SlidePushView;
.super Landroid/widget/ImageView;
.source "SlidePushView.java"


# instance fields
.field private originalBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method private recycle(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 235
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    :cond_0
    return-void
.end method

.method private setWidthAndHeight(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bt"    # Landroid/graphics/Bitmap;
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 95
    if-nez p1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 98
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 104
    .local v4, "height":I
    int-to-float v0, p2

    int-to-float v2, v3

    div-float v8, v0, v2

    .line 105
    .local v8, "scaleWidth":F
    int-to-float v0, p3

    int-to-float v2, v4

    div-float v7, v0, v2

    .line 108
    .local v7, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 109
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 112
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public drawImageSlideView(Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;)V
    .locals 24
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "location"    # [I
    .param p3, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 40
    :try_start_0
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "The slidePushView-->01"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getWidth()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getHeight()I

    move-result v22

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hisilicon/multiscreen/widget/SlidePushView;->originalBitmap:Landroid/graphics/Bitmap;

    .line 42
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "The slidePushView-->02"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 44
    .local v13, "paint":Landroid/graphics/Paint;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "The slidePushView-->03"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hisilicon/multiscreen/widget/SlidePushView;->originalBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    .local v7, "canvas":Landroid/graphics/Canvas;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "The slidePushView-->04"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    const/4 v12, 0x0

    .line 48
    .local v12, "mask":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 49
    :cond_0
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02005f

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 50
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "The slidePushView-->05"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    :cond_1
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v22, "The slidePushView-->1"

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v12, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 55
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 56
    const/16 v21, 0x0

    aget v5, p2, v21

    .line 57
    .local v5, "bitmapX":I
    const/16 v21, 0x1

    aget v21, p2, v21

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v6, v21, v22

    .line 58
    .local v6, "bitmapY":I
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v21

    if-nez v21, :cond_2

    .line 59
    int-to-float v0, v5

    move/from16 v21, v0

    int-to-float v0, v6

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v7, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 60
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 61
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0200a0

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 62
    .local v16, "rc_tv_small":Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sub-int v19, v21, v22

    .line 63
    .local v19, "tv_smallX":I
    const/16 v20, 0x14

    .line 64
    .local v20, "tv_smallY":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v7, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 65
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 67
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02002b

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 68
    .local v8, "dlna_slide_big_uparrow":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    add-int v3, v5, v21

    .line 69
    .local v3, "big_uparrowX":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    sub-int v4, v6, v21

    .line 70
    .local v4, "big_uparrowY":I
    int-to-float v0, v3

    move/from16 v21, v0

    int-to-float v0, v4

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v8, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 71
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 73
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02002c

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 75
    .local v9, "dlna_slide_pushguide":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    add-int v21, v21, v5

    add-int/lit8 v14, v21, 0x5

    .line 76
    .local v14, "pushguideX":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    add-int v15, v6, v21

    .line 77
    .local v15, "pushguideY":I
    int-to-float v0, v14

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v9, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 80
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02002e

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 82
    .local v10, "dlna_slide_small_uparrow":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    add-int v17, v5, v21

    .line 83
    .local v17, "small_uparrowX":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    sub-int v18, v15, v21

    .line 84
    .local v18, "small_uparrowY":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v10, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hisilicon/multiscreen/widget/SlidePushView;->originalBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v3    # "big_uparrowX":I
    .end local v4    # "big_uparrowY":I
    .end local v5    # "bitmapX":I
    .end local v6    # "bitmapY":I
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "dlna_slide_big_uparrow":Landroid/graphics/Bitmap;
    .end local v9    # "dlna_slide_pushguide":Landroid/graphics/Bitmap;
    .end local v10    # "dlna_slide_small_uparrow":Landroid/graphics/Bitmap;
    .end local v12    # "mask":Landroid/graphics/Bitmap;
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "pushguideX":I
    .end local v15    # "pushguideY":I
    .end local v16    # "rc_tv_small":Landroid/graphics/Bitmap;
    .end local v17    # "small_uparrowX":I
    .end local v18    # "small_uparrowY":I
    .end local v19    # "tv_smallX":I
    .end local v20    # "tv_smallY":I
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v11

    .line 90
    .local v11, "er":Ljava/lang/Error;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 88
    .end local v11    # "er":Ljava/lang/Error;
    :catch_1
    move-exception v21

    goto :goto_0
.end method

.method public drawMusicSlideView(Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;)V
    .locals 24
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "location"    # [I
    .param p3, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 174
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getWidth()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getHeight()I

    move-result v22

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hisilicon/multiscreen/widget/SlidePushView;->originalBitmap:Landroid/graphics/Bitmap;

    .line 176
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 178
    .local v13, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hisilicon/multiscreen/widget/SlidePushView;->originalBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 179
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/4 v12, 0x0

    .line 180
    .local v12, "mask":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 181
    :cond_0
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02005f

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 184
    :cond_1
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v12, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 185
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 186
    const/16 v21, 0x0

    aget v5, p2, v21

    .line 187
    .local v5, "bitmapX":I
    const/16 v21, 0x1

    aget v21, p2, v21

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v6, v21, v22

    .line 188
    .local v6, "bitmapY":I
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v21

    if-nez v21, :cond_2

    .line 189
    int-to-float v0, v5

    move/from16 v21, v0

    int-to-float v0, v6

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v7, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 190
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 192
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0200a0

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 194
    .local v16, "rc_tv_small":Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sub-int v19, v21, v22

    .line 195
    .local v19, "tv_smallX":I
    const/16 v20, 0x14

    .line 196
    .local v20, "tv_smallY":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v7, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 199
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02002b

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 201
    .local v8, "dlna_slide_big_uparrow":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    sub-int v3, v21, v22

    .line 202
    .local v3, "big_uparrowX":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    sub-int v4, v6, v21

    .line 203
    .local v4, "big_uparrowY":I
    int-to-float v0, v3

    move/from16 v21, v0

    int-to-float v0, v4

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v8, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 204
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 206
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02002d

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 208
    .local v10, "dlna_slide_small_downarrow":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    add-int v17, v3, v21

    .line 209
    .local v17, "small_uparrowX":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    sub-int v18, v6, v21

    .line 210
    .local v18, "small_uparrowY":I
    add-int/lit8 v21, v17, 0xa

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-int/lit8 v22, v18, -0xa

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v10, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 211
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 213
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02002c

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 215
    .local v9, "dlna_slide_pushguide":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v17

    add-int/lit8 v14, v21, -0x14

    .line 216
    .local v14, "pushguideX":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    sub-int v15, v18, v21

    .line 217
    .local v15, "pushguideY":I
    int-to-float v0, v14

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v9, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 218
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hisilicon/multiscreen/widget/SlidePushView;->originalBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v3    # "big_uparrowX":I
    .end local v4    # "big_uparrowY":I
    .end local v5    # "bitmapX":I
    .end local v6    # "bitmapY":I
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "dlna_slide_big_uparrow":Landroid/graphics/Bitmap;
    .end local v9    # "dlna_slide_pushguide":Landroid/graphics/Bitmap;
    .end local v10    # "dlna_slide_small_downarrow":Landroid/graphics/Bitmap;
    .end local v12    # "mask":Landroid/graphics/Bitmap;
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "pushguideX":I
    .end local v15    # "pushguideY":I
    .end local v16    # "rc_tv_small":Landroid/graphics/Bitmap;
    .end local v17    # "small_uparrowX":I
    .end local v18    # "small_uparrowY":I
    .end local v19    # "tv_smallX":I
    .end local v20    # "tv_smallY":I
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v11

    .line 225
    .local v11, "er":Ljava/lang/Error;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 223
    .end local v11    # "er":Ljava/lang/Error;
    :catch_1
    move-exception v21

    goto :goto_0
.end method

.method public drawVideoSlideView(Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;)V
    .locals 24
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "location"    # [I
    .param p3, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 117
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getWidth()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getHeight()I

    move-result v22

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/hisilicon/multiscreen/widget/SlidePushView;->originalBitmap:Landroid/graphics/Bitmap;

    .line 119
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 121
    .local v13, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hisilicon/multiscreen/widget/SlidePushView;->originalBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 122
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/4 v12, 0x0

    .line 123
    .local v12, "mask":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 124
    :cond_0
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02005f

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 127
    :cond_1
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v12, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 129
    const/16 v21, 0x0

    aget v5, p2, v21

    .line 130
    .local v5, "bitmapX":I
    const/16 v21, 0x1

    aget v21, p2, v21

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v6, v21, v22

    .line 131
    .local v6, "bitmapY":I
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v21

    if-nez v21, :cond_2

    .line 132
    int-to-float v0, v5

    move/from16 v21, v0

    int-to-float v0, v6

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v7, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 133
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 135
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0200a0

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 137
    .local v16, "rc_tv_small":Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sub-int v19, v21, v22

    .line 138
    .local v19, "tv_smallX":I
    const/16 v20, 0x14

    .line 139
    .local v20, "tv_smallY":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v7, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 142
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02002b

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 144
    .local v8, "dlna_slide_big_uparrow":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    sub-int v3, v21, v22

    .line 145
    .local v3, "big_uparrowX":I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    sub-int v4, v6, v21

    .line 146
    .local v4, "big_uparrowY":I
    int-to-float v0, v3

    move/from16 v21, v0

    int-to-float v0, v4

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v8, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 149
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02002d

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 151
    .local v10, "dlna_slide_small_downarrow":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    add-int v17, v3, v21

    .line 152
    .local v17, "small_uparrowX":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    sub-int v18, v6, v21

    .line 153
    .local v18, "small_uparrowY":I
    add-int/lit8 v21, v17, 0xa

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-int/lit8 v22, v18, -0xa

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v10, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 156
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02002c

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 158
    .local v9, "dlna_slide_pushguide":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v17

    add-int/lit8 v14, v21, -0x14

    .line 159
    .local v14, "pushguideX":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    sub-int v15, v18, v21

    .line 160
    .local v15, "pushguideY":I
    int-to-float v0, v14

    move/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v9, v0, v1, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 161
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hisilicon/multiscreen/widget/SlidePushView;->originalBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v3    # "big_uparrowX":I
    .end local v4    # "big_uparrowY":I
    .end local v5    # "bitmapX":I
    .end local v6    # "bitmapY":I
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "dlna_slide_big_uparrow":Landroid/graphics/Bitmap;
    .end local v9    # "dlna_slide_pushguide":Landroid/graphics/Bitmap;
    .end local v10    # "dlna_slide_small_downarrow":Landroid/graphics/Bitmap;
    .end local v12    # "mask":Landroid/graphics/Bitmap;
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "pushguideX":I
    .end local v15    # "pushguideY":I
    .end local v16    # "rc_tv_small":Landroid/graphics/Bitmap;
    .end local v17    # "small_uparrowX":I
    .end local v18    # "small_uparrowY":I
    .end local v19    # "tv_smallX":I
    .end local v20    # "tv_smallY":I
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v11

    .line 168
    .local v11, "er":Ljava/lang/Error;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 166
    .end local v11    # "er":Ljava/lang/Error;
    :catch_1
    move-exception v21

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    return-void
.end method

.method public touchClearShow()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    iget-object v0, p0, Lcom/hisilicon/multiscreen/widget/SlidePushView;->originalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->recycle(Landroid/graphics/Bitmap;)V

    .line 232
    return-void
.end method
