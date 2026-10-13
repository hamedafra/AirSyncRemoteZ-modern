.class public Lcom/hisilicon/dlna/dmc/utility/GlobalCache;
.super Ljava/lang/Object;
.source "GlobalCache.java"


# static fields
.field private static final CACHE_CAPACITY_OF_FOCUS:I = 0x32

.field private static volatile mImageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile mImageUrlList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageCache:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageUrlList:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    .prologue
    .line 138
    const-class v1, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 139
    sget-object v0, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 140
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit v1

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v2, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 37
    .local v1, "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 41
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 20
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 30
    :cond_1
    :goto_0
    return-object v0

    .line 23
    :cond_2
    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 25
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 27
    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->updateUrlList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getFirstUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static putToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 63
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->updateUrlList(Ljava/lang/String;)V

    .line 68
    invoke-static {p0, p1}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->putToImageCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 70
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->recycleBitamps()V

    goto :goto_0
.end method

.method private static putToImageCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 75
    sget-object v1, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageCache:Ljava/util/Map;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static recycleBitamps()V
    .locals 3

    .prologue
    .line 83
    sget-object v2, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 85
    .local v1, "size":I
    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x32

    if-ge v0, v2, :cond_0

    .line 89
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->recycleBitmap()V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 94
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static recycleBitmap()V
    .locals 4

    .prologue
    .line 98
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->getFirstUrl()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "imageUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->removeFromImageCache(Ljava/lang/String;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    .line 102
    .local v2, "softRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->removeFirstUrl()Ljava/lang/String;

    .line 104
    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 108
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 113
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private static removeFirstUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    sget-object v1, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageUrlList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 124
    :try_start_0
    sget-object v0, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static removeFromImageCache(Ljava/lang/String;)Ljava/lang/ref/SoftReference;
    .locals 2
    .param p0, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    sget-object v1, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageCache:Ljava/util/Map;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static updateUrlList(Ljava/lang/String;)V
    .locals 2
    .param p0, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v1, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageUrlList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    sget-object v0, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
