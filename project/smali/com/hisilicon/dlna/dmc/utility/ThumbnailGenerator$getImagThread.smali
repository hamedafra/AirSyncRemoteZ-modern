.class Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$getImagThread;
.super Ljava/lang/Object;
.source "ThumbnailGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getImagThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private strImagLink:Ljava/lang/String;

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;


# direct methods
.method public constructor <init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "hd"    # Landroid/os/Handler;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$getImagThread;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$getImagThread;->strImagLink:Ljava/lang/String;

    .line 251
    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$getImagThread;->handler:Landroid/os/Handler;

    .line 252
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$getImagThread;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$getImagThread;->strImagLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 259
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$getImagThread;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$getImagThread;->handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 265
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 270
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 262
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$getImagThread;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$getImagThread;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method
