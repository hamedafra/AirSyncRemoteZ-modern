.class public Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;
.super Ljava/lang/Object;
.source "ThumbnailGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$OnImageLoadListener;,
        Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$getImagThread;
    }
.end annotation


# static fields
.field private static instance:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;


# instance fields
.field private volatile firstLoad:Z

.field final handler:Landroid/os/Handler;

.field private lock:Ljava/lang/Object;

.field private volatile mAllowLoad:Z

.field private volatile mStartLoadLimit:I

.field private volatile mStopLoadLimit:I

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 274
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->lock:Ljava/lang/Object;

    .line 276
    iput-boolean v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->mAllowLoad:Z

    .line 278
    iput-boolean v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->firstLoad:Z

    .line 280
    iput v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->mStartLoadLimit:I

    .line 282
    iput v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->mStopLoadLimit:I

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handler:Landroid/os/Handler;

    .line 37
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x4

    const/16 v3, 0xa

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->mAllowLoad:Z

    return v0
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->firstLoad:Z

    return v0
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->loadImage(ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)I
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    .prologue
    .line 32
    iget v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->mStartLoadLimit:I

    return v0
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)I
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    .prologue
    .line 32
    iget v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->mStopLoadLimit:I

    return v0
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;ILjava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->loadImage(ILjava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->loadLocalImageThumb(IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->loadLocalVideoThumb(IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->loadVideoThumbFromURL(ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    return-void
.end method

.method private decodeFileBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private decodeFileBitmap1([B)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/utility/MyException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v7, Lcom/hisilicon/dlna/dmc/utility/MyException;

    const-string v8, "bytes is null"

    invoke-direct {v7, v8}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 185
    :cond_0
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 186
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 187
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 188
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 189
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 192
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 193
    const/4 v7, 0x0

    array-length v8, p1

    invoke-static {p1, v7, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 194
    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 196
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 197
    .local v3, "pictureW":I
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 199
    .local v2, "pictureH":I
    const/4 v4, 0x1

    .line 201
    .local v4, "sampleSize":I
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getImageDimension()I

    move-result v7

    div-int v7, v3, v7

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 202
    .local v6, "sampleSizeW":I
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getImageDimension()I

    move-result v7

    div-int v7, v2, v7

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 204
    .local v5, "sampleSizeH":I
    if-gt v6, v10, :cond_1

    if-le v5, v10, :cond_2

    .line 205
    :cond_1
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 208
    :cond_2
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 209
    const/4 v7, 0x0

    array-length v8, p1

    invoke-static {p1, v7, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    return-object v7

    .line 210
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "pictureH":I
    .end local v3    # "pictureW":I
    .end local v4    # "sampleSize":I
    .end local v5    # "sampleSizeH":I
    .end local v6    # "sampleSizeW":I
    :catch_0
    move-exception v0

    .line 211
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    new-instance v7, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v7, v0}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 213
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 215
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 216
    new-instance v7, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v7, v0}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->instance:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-direct {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;-><init>()V

    sput-object v0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->instance:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    .line 43
    :cond_0
    sget-object v0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->instance:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    return-object v0
.end method

.method public static getPhotoDegree(Ljava/lang/String;)I
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "degree":I
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, "exifInterface":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 132
    .local v3, "orientation":I
    packed-switch v3, :pswitch_data_0

    .line 146
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :goto_0
    :pswitch_0
    return v0

    .line 134
    .restart local v2    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v3    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 135
    goto :goto_0

    .line 137
    :pswitch_2
    const/16 v0, 0xb4

    .line 138
    goto :goto_0

    .line 140
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 143
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleBitmap(Ljava/lang/Integer;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 7
    .param p1, "mt"    # Ljava/lang/Integer;
    .param p2, "strImagLink"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "imageCallback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 828
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;-><init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;Ljava/lang/Integer;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 837
    return-void
.end method

.method private loadImage(ILjava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "imageCallback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 431
    invoke-static {p2}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 432
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 433
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, p2, v0, p5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handleBitmap(Ljava/lang/Integer;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 446
    :goto_0
    return-void

    .line 438
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getBitmapFromURL(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 439
    .local v1, "bitmapFromUrl":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 440
    invoke-static {p2, v0}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->putToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 442
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, p2, v1, p5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handleBitmap(Ljava/lang/Integer;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    .end local v1    # "bitmapFromUrl":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 444
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private loadImage(ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "imageCallback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 354
    invoke-static {p2}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 356
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, p2, v0, p3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handleBitmap(Ljava/lang/Integer;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 367
    :goto_0
    return-void

    .line 362
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 363
    .local v1, "bitmapFromUrl":Landroid/graphics/Bitmap;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, p2, v1, p3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handleBitmap(Ljava/lang/Integer;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    .end local v1    # "bitmapFromUrl":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private loadLocalImageThumb(IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "videoId"    # J
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "imageCallback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 628
    invoke-static {p4}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 629
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 630
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, p4, v0, p5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handleBitmap(Ljava/lang/Integer;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 640
    :goto_0
    return-void

    .line 635
    :cond_0
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p0, p4, p2, p3, v3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getLocalImageThumb(Ljava/lang/String;JI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 636
    .local v1, "bitmapFromUrl":Landroid/graphics/Bitmap;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, p4, v1, p5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handleBitmap(Ljava/lang/Integer;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    .end local v1    # "bitmapFromUrl":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 638
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private loadLocalVideoThumb(IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "videoId"    # J
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "imageCallback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 728
    if-eqz p4, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    invoke-static {p4}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 732
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 733
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, p4, v0, p5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handleBitmap(Ljava/lang/Integer;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    goto :goto_0

    .line 738
    :cond_2
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p0, p4, p2, p3, v3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getLocalVideoThumb(Ljava/lang/String;JI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 739
    .local v1, "bitmapFromLocal":Landroid/graphics/Bitmap;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, p4, v1, p5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handleBitmap(Ljava/lang/Integer;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 740
    .end local v1    # "bitmapFromLocal":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 741
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private loadVideoThumbFromURL(ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "imageCallback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 795
    invoke-static {p2}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 796
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 797
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, p2, v0, p3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handleBitmap(Ljava/lang/Integer;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 807
    :goto_0
    return-void

    .line 802
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getVideoThumbnailBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 803
    .local v1, "d":Landroid/graphics/Bitmap;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, p2, v1, p3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handleBitmap(Ljava/lang/Integer;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 804
    .end local v1    # "d":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 805
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degress"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/utility/MyException;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 157
    .local v3, "bmpW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 159
    .local v4, "bmpH":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 160
    .local v5, "mt":Landroid/graphics/Matrix;
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 162
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 163
    .end local v3    # "bmpW":I
    .end local v4    # "bmpH":I
    .end local v5    # "mt":Landroid/graphics/Matrix;
    :catch_0
    move-exception v7

    .line 164
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v0, v7}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 165
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 166
    .local v7, "e":Ljava/lang/Error;
    new-instance v0, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v0, v7}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addThread(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public decodeFileBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/utility/MyException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 73
    :goto_0
    return-object v2

    .line 61
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getImageDimension()I

    move-result v2

    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getImageDimension()I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->decodeFileBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->putToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 65
    goto :goto_0

    .line 67
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v2, v1}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 69
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 70
    .local v1, "ex":Ljava/lang/Error;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 71
    new-instance v2, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v2, v1}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 73
    .end local v1    # "ex":Ljava/lang/Error;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public decodeFileBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/utility/MyException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 82
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 83
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 84
    const/4 v8, 0x1

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 85
    const/4 v8, 0x1

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 86
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 89
    const/4 v8, 0x1

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 91
    const/4 v8, 0x0

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 93
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 94
    .local v4, "pictureW":I
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 96
    .local v3, "pictureH":I
    const/4 v5, 0x1

    .line 98
    .local v5, "sampleSize":I
    div-int v8, v4, p2

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    .line 99
    .local v7, "sampleSizeW":I
    div-int v8, v3, p3

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 101
    .local v6, "sampleSizeH":I
    if-gt v7, v10, :cond_0

    if-le v6, v10, :cond_1

    .line 102
    :cond_0
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 105
    :cond_1
    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-nez v8, :cond_2

    .line 118
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 112
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "pictureH":I
    .end local v4    # "pictureW":I
    .end local v5    # "sampleSize":I
    .end local v6    # "sampleSizeH":I
    .end local v7    # "sampleSizeW":I
    :catch_0
    move-exception v1

    .line 113
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v8, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v8, v1}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 114
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 115
    .local v1, "ex":Ljava/lang/Error;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 116
    new-instance v8, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v8, v1}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 118
    .end local v1    # "ex":Ljava/lang/Error;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v3    # "pictureH":I
    .restart local v4    # "pictureW":I
    .restart local v5    # "sampleSize":I
    .restart local v6    # "sampleSizeH":I
    .restart local v7    # "sampleSizeW":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/utility/MyException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 370
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v3

    .line 393
    :goto_0
    return-object v0

    .line 373
    :cond_1
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 375
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->decodeFileBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 377
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 379
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 381
    invoke-static {p1, v0}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->putToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 384
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v3, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v3, v1}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 386
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 387
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v3, v1}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 388
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v3, v1}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 390
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/Error;
    new-instance v3, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v3, v1}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .end local v1    # "e":Ljava/lang/Error;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_2
    move-object v0, v3

    .line 393
    goto :goto_0
.end method

.method public getBitmapFromURL(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/utility/MyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 454
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v0, v4

    .line 493
    :cond_1
    :goto_0
    return-object v0

    .line 459
    :cond_2
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 461
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hisilicon/dlna/dmc/utility/Utility;->CACHE_ROOT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .local v3, "tmp":Ljava/io/File;
    invoke-virtual {p0, v2, v3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->writeToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 467
    if-eqz v2, :cond_3

    .line 468
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 474
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {p0, v3, p2, p3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->decodeFileBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 476
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 478
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-eqz v5, :cond_1

    :cond_4
    move-object v0, v4

    .line 493
    goto :goto_0

    .line 483
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "tmp":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v4, v1}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 487
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 489
    .local v1, "e":Ljava/lang/Error;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 490
    new-instance v4, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v4, v1}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 470
    .end local v1    # "e":Ljava/lang/Error;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "tmp":Ljava/io/File;
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public declared-synchronized getLocalImageThumb(Ljava/lang/String;JI)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "kind"    # I

    .prologue
    const/4 v2, 0x0

    .line 644
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p2, p3, p4, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 645
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 646
    invoke-static {p1, v0}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->putToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 649
    :catch_0
    move-exception v1

    .line 650
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_1
    move-object v0, v2

    .line 654
    goto :goto_0

    .line 651
    :catch_1
    move-exception v1

    .line 652
    .local v1, "ex":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 644
    .end local v1    # "ex":Ljava/lang/Error;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getLocalVideoThumb(Ljava/lang/String;JI)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "strImagLink"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "kind"    # I

    .prologue
    const/4 v2, 0x0

    .line 747
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p2, p3, p4, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 748
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 749
    invoke-static {p1, v0}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->putToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 752
    :catch_0
    move-exception v1

    .line 753
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_1
    move-object v0, v2

    .line 757
    goto :goto_0

    .line 754
    :catch_1
    move-exception v1

    .line 755
    .local v1, "ex":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 747
    .end local v1    # "ex":Ljava/lang/Error;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getVideoThumbnailBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 810
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 824
    :goto_0
    return-object v0

    .line 815
    :cond_1
    const/4 v3, 0x3

    :try_start_0
    invoke-static {p1, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 817
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 818
    invoke-static {p1, v0}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->putToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 821
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 822
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v0, v2

    .line 824
    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->mAllowLoad:Z

    .line 309
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->firstLoad:Z

    .line 310
    return-void
.end method

.method public queryAudioThumbIdAndData([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 862
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 863
    .local v3, "uri":Landroid/net/Uri;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "album_art"

    aput-object v5, v0, v4

    .line 867
    .local v0, "projection":[Ljava/lang/String;
    const-string v1, "_id=?"

    .line 868
    .local v1, "selection":Ljava/lang/String;
    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->queryThumbnail(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, "str":[Ljava/lang/String;
    return-object v2
.end method

.method public queryImageThumbIdAndData([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 840
    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 841
    .local v3, "uri":Landroid/net/Uri;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "_data"

    aput-object v5, v0, v4

    .line 845
    .local v0, "projection":[Ljava/lang/String;
    const-string v1, "image_id=?"

    .line 846
    .local v1, "selection":Ljava/lang/String;
    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->queryThumbnail(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 847
    .local v2, "str":[Ljava/lang/String;
    return-object v2
.end method

.method public queryThumbnail(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 873
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 874
    .local v9, "thumbCursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    .line 875
    .local v8, "str":[Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 878
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 879
    .local v7, "columnId":I
    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 880
    .local v6, "columnData":I
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 881
    const/4 v0, 0x1

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 883
    .end local v6    # "columnData":I
    .end local v7    # "columnId":I
    :cond_0
    if-eqz v9, :cond_1

    .line 884
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 885
    :cond_1
    return-object v8
.end method

.method public queryVideoThumbIdAndData([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 851
    sget-object v3, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 852
    .local v3, "uri":Landroid/net/Uri;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "_data"

    aput-object v5, v0, v4

    .line 856
    .local v0, "projection":[Ljava/lang/String;
    const-string v1, "video_id=?"

    .line 857
    .local v1, "selection":Ljava/lang/String;
    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->queryThumbnail(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 858
    .local v2, "str":[Ljava/lang/String;
    return-object v2
.end method

.method public restore()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 300
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->mAllowLoad:Z

    .line 301
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->firstLoad:Z

    .line 302
    iput v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->mStartLoadLimit:I

    .line 303
    iput v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->mStopLoadLimit:I

    .line 304
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->unlock()V

    .line 305
    return-void
.end method

.method public returnBitMap(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "strImagLink"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    const/4 v2, 0x0

    .line 221
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 242
    :cond_1
    :goto_0
    return-object v0

    .line 225
    :cond_2
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    :cond_3
    new-instance v1, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$1;-><init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;Ljava/lang/String;)V

    .line 240
    .local v1, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$getImagThread;

    invoke-direct {v4, p0, p1, v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$getImagThread;-><init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    move-object v0, v2

    .line 242
    goto :goto_0
.end method

.method public returnImage(ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "imageCallback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 324
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;-><init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public returnImage(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "imageCallback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 563
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;-><init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public returnLocalImageThumb(IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "videoId"    # J
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "imageCallback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;-><init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method public returnLocalVideoThumb(IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "videoId"    # J
    .param p4, "imageUrl"    # Ljava/lang/String;
    .param p5, "imageCallback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;-><init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 725
    return-void
.end method

.method public returnLocalVideoThumb(JLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 7
    .param p1, "videoId"    # J
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "imageCallback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 662
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$6;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$6;-><init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;J)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public returnThumbImage(ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "imageCallback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 401
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$3;-><init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public returnVideoThumbFromURL(ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "imageCallback"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    .prologue
    .line 765
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$8;-><init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setLoadLimit(II)V
    .locals 0
    .param p1, "startLoadLimit"    # I
    .param p2, "stopLoadLimit"    # I

    .prologue
    .line 292
    if-le p1, p2, :cond_0

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iput p1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->mStartLoadLimit:I

    .line 296
    iput p2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->mStopLoadLimit:I

    goto :goto_0
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->mAllowLoad:Z

    .line 314
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 10
    .param p1, "inputstream"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/utility/MyException;
        }
    .end annotation

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 503
    new-instance v8, Lcom/hisilicon/dlna/dmc/utility/MyException;

    const-string v9, "stream is null"

    invoke-direct {v8, v9}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 505
    :cond_0
    const/4 v3, 0x0

    .line 506
    .local v3, "inputBuffer":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 509
    .local v6, "outputBuffer":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .local v4, "inputBuffer":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 513
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 514
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 521
    :goto_0
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 523
    .end local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .local v7, "outputBuffer":Ljava/io/BufferedOutputStream;
    const/high16 v8, 0x80000

    :try_start_2
    new-array v0, v8, [B

    .line 525
    .local v0, "arrayOfByte":[B
    const/4 v5, -0x1

    .line 527
    .local v5, "len":I
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_4

    .line 528
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 533
    .end local v0    # "arrayOfByte":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 535
    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    :goto_2
    :try_start_3
    new-instance v8, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v8, v2}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 544
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 545
    :goto_3
    if-eqz v6, :cond_1

    .line 546
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 551
    :cond_1
    :goto_4
    if-eqz v3, :cond_2

    .line 552
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 554
    :cond_2
    :goto_5
    throw v8

    .line 518
    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    :cond_3
    :try_start_6
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 533
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 531
    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .end local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v0    # "arrayOfByte":[B
    .restart local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    :cond_4
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 545
    if-eqz v7, :cond_5

    .line 546
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 551
    :cond_5
    :goto_6
    if-eqz v4, :cond_6

    .line 552
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 556
    :cond_6
    :goto_7
    return-void

    .line 537
    .end local v0    # "arrayOfByte":[B
    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .end local v5    # "len":I
    .end local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v1

    .line 539
    .local v1, "err":Ljava/lang/Error;
    :goto_8
    :try_start_a
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 540
    new-instance v8, Lcom/hisilicon/dlna/dmc/utility/MyException;

    invoke-direct {v8, v1}, Lcom/hisilicon/dlna/dmc/utility/MyException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 547
    .end local v1    # "err":Ljava/lang/Error;
    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .end local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v0    # "arrayOfByte":[B
    .restart local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v8

    goto :goto_6

    .line 553
    :catch_4
    move-exception v8

    goto :goto_7

    .line 547
    .end local v0    # "arrayOfByte":[B
    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .end local v5    # "len":I
    .end local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v9

    goto :goto_4

    .line 553
    :catch_6
    move-exception v9

    goto :goto_5

    .line 544
    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .end local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 537
    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    goto :goto_8

    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .end local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v1

    move-object v6, v7

    .end local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    goto :goto_8

    .line 533
    :catch_9
    move-exception v2

    goto :goto_2
.end method
