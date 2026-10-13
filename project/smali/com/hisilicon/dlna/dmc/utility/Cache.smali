.class public Lcom/hisilicon/dlna/dmc/utility/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field private CACHE_CAPACITY_OF_FOCUS:I

.field private mImageCache:Ljava/util/Map;
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

.field private mImageUrlList:Ljava/util/LinkedList;
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
.method public constructor <init>(I)V
    .locals 2
    .param p1, "CACHE_CAPACITY"    # I

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x14

    iput v0, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->CACHE_CAPACITY_OF_FOCUS:I

    .line 15
    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageUrlList:Ljava/util/LinkedList;

    .line 17
    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageCache:Ljava/util/Map;

    .line 21
    iput p1, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->CACHE_CAPACITY_OF_FOCUS:I

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageUrlList:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageCache:Ljava/util/Map;

    .line 26
    return-void
.end method

.method private get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 47
    .local v1, "softReference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 51
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private putToImageCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageCache:Ljava/util/Map;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private recycleBitamps()V
    .locals 3

    .prologue
    .line 93
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 95
    .local v1, "size":I
    iget v2, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->CACHE_CAPACITY_OF_FOCUS:I

    if-le v1, v2, :cond_1

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->CACHE_CAPACITY_OF_FOCUS:I

    sub-int v2, v1, v2

    if-ge v0, v2, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/utility/Cache;->recycleFirst()V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 104
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private recycleFirst()V
    .locals 4

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/utility/Cache;->getFirstUrl()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "imageUrl":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/hisilicon/dlna/dmc/utility/Cache;->removeFromImageCache(Ljava/lang/String;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    .line 112
    .local v2, "softRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/utility/Cache;->removeFirstUrl()Ljava/lang/String;

    .line 114
    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private removeFirstUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageUrlList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeFromImageCache(Ljava/lang/String;)Ljava/lang/ref/SoftReference;
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;
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
    .line 140
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageCache:Ljava/util/Map;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    monitor-exit v1

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateUrlList(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageUrlList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 149
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/Cache;->mImageUrlList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 150
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 40
    :cond_1
    :goto_0
    return-object v0

    .line 33
    :cond_2
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/utility/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/utility/Cache;->updateUrlList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/utility/Cache;->updateUrlList(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/utility/Cache;->putToImageCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 80
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/utility/Cache;->recycleBitamps()V

    goto :goto_0
.end method
