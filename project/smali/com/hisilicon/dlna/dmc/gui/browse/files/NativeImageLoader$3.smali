.class Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;
.super Ljava/lang/Thread;
.source "NativeImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->loadNativeImage(Ljava/lang/String;Landroid/graphics/Point;Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

.field final synthetic val$mHander:Landroid/os/Handler;

.field final synthetic val$mPoint:Landroid/graphics/Point;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;Ljava/lang/String;Landroid/graphics/Point;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->val$mPoint:Landroid/graphics/Point;

    iput-object p4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->val$mHander:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 104
    :try_start_0
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->val$path:Ljava/lang/String;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->val$mPoint:Landroid/graphics/Point;

    if-nez v4, :cond_0

    move v4, v3

    :goto_0
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->val$mPoint:Landroid/graphics/Point;

    if-nez v7, :cond_1

    :goto_1
    invoke-virtual {v5, v6, v4, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->decodeThumbBitmapForFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    .local v1, "mBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->val$mHander:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 106
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->val$mHander:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->val$path:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 116
    .end local v1    # "mBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_2
    return-void

    .line 104
    :cond_0
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->val$mPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$3;->val$mPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
