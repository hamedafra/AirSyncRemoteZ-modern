.class public Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;
.super Ljava/lang/Object;
.source "NativeImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;


# instance fields
.field private mImageThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    invoke-direct {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;-><init>()V

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->mInstance:Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->mImageThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 42
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0x8

    .line 43
    .local v0, "cacheSize":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The cacheSize is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    new-instance v2, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$1;

    invoke-direct {v2, p0, v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;I)V

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    .line 52
    return-void
.end method

.method private computeScale(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I

    .prologue
    .line 201
    const/4 v3, 0x4

    .line 202
    .local v3, "inSampleSize":I
    if-eqz p2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v3

    .line 216
    .end local v3    # "inSampleSize":I
    .local v4, "inSampleSize":I
    :goto_0
    return v4

    .line 205
    .end local v4    # "inSampleSize":I
    .restart local v3    # "inSampleSize":I
    :cond_1
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 206
    .local v1, "bitmapWidth":I
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 209
    .local v0, "bitmapHeight":I
    if-gt v1, p2, :cond_2

    if-le v0, p2, :cond_3

    .line 210
    :cond_2
    int-to-float v6, v1

    int-to-float v7, p2

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 211
    .local v5, "widthScale":I
    int-to-float v6, v0

    int-to-float v7, p2

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 214
    .local v2, "heightScale":I
    if-ge v5, v2, :cond_4

    move v3, v5

    .end local v2    # "heightScale":I
    .end local v5    # "widthScale":I
    :cond_3
    :goto_1
    move v4, v3

    .line 216
    .end local v3    # "inSampleSize":I
    .restart local v4    # "inSampleSize":I
    goto :goto_0

    .end local v4    # "inSampleSize":I
    .restart local v2    # "heightScale":I
    .restart local v3    # "inSampleSize":I
    .restart local v5    # "widthScale":I
    :cond_4
    move v3, v2

    .line 214
    goto :goto_1
.end method

.method public static getInstance()Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->mInstance:Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    return-object v0
.end method


# virtual methods
.method public addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    return-void
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    .line 223
    :cond_0
    return-void
.end method

.method public decodeThumbBitmapForFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I

    .prologue
    .line 185
    :try_start_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p2, p3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->decodeFileBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/hisilicon/dlna/dmc/utility/MyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 190
    :goto_0
    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lcom/hisilicon/dlna/dmc/utility/MyException;
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/utility/MyException;->printStackTrace()V

    .line 190
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadNativeImage(Ljava/lang/String;Landroid/graphics/Point;Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mPoint"    # Landroid/graphics/Point;
    .param p3, "mCallBack"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;Ljava/lang/String;)V

    .line 97
    .local v1, "mHander":Landroid/os/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->mImageThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;Ljava/lang/String;Landroid/graphics/Point;Landroid/os/Handler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 119
    :cond_1
    return-object v0
.end method

.method public loadNativeImage(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mCallBack"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->loadNativeImage(Ljava/lang/String;Landroid/graphics/Point;Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
