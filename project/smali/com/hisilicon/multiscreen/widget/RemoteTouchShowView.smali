.class public Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;
.super Landroid/widget/ImageView;
.source "RemoteTouchShowView.java"


# instance fields
.field private originalBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private touch_x:I

.field private touch_y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 135
    iget-object v2, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->originalBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->originalBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->recycle(Landroid/graphics/Bitmap;)V

    .line 138
    :cond_0
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->originalBitmap:Ljava/lang/ref/SoftReference;

    .line 140
    iget-object v2, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->originalBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_1

    .line 142
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 144
    .local v1, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->originalBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 146
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget v2, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    int-to-float v3, v3

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->recycle(Landroid/graphics/Bitmap;)V

    .line 150
    iget-object v2, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->originalBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "paint":Landroid/graphics/Paint;
    :cond_1
    return-void
.end method

.method private drawDown(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 107
    iget v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    .line 109
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->drawBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    return-void
.end method

.method private drawLeft(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    iget v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    .line 50
    iget v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    .line 52
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->drawBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    return-void
.end method

.method private drawOk(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 127
    iget v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    .line 128
    iget v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    .line 130
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->drawBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    return-void
.end method

.method private drawRight(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    iget v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    .line 71
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->drawBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    return-void
.end method

.method private drawUp(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    iget v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    .line 88
    iget v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    .line 90
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->drawBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    return-void
.end method

.method private recycle(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 164
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 167
    const/4 p1, 0x0

    .line 169
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 170
    return-void
.end method


# virtual methods
.method public touchClearShow()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    iget-object v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->originalBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->originalBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->recycle(Landroid/graphics/Bitmap;)V

    .line 160
    :cond_0
    return-void
.end method

.method public touchShowDown(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    .line 96
    iput p2, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    .line 98
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 99
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 101
    .local v0, "bitmap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->drawDown(Landroid/graphics/Bitmap;)V

    .line 103
    :cond_0
    return-void
.end method

.method public touchShowLeft(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    .line 38
    iput p2, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    .line 40
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 41
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 43
    .local v0, "bitmap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->drawLeft(Landroid/graphics/Bitmap;)V

    .line 45
    :cond_0
    return-void
.end method

.method public touchShowOk(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    .line 115
    iput p2, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    .line 117
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 118
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 121
    .local v0, "bitmap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->drawOk(Landroid/graphics/Bitmap;)V

    .line 123
    :cond_0
    return-void
.end method

.method public touchShowRight(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    .line 58
    iput p2, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    .line 60
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 61
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 63
    .local v0, "bitmap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->drawRight(Landroid/graphics/Bitmap;)V

    .line 65
    :cond_0
    return-void
.end method

.method public touchShowUp(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_x:I

    .line 77
    iput p2, p0, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touch_y:I

    .line 78
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 79
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 81
    .local v0, "bitmap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->drawUp(Landroid/graphics/Bitmap;)V

    .line 83
    :cond_0
    return-void
.end method
