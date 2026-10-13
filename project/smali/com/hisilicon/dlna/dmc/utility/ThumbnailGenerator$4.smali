.class Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;
.super Ljava/lang/Object;
.source "ThumbnailGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnImage(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

.field final synthetic val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;->val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 570
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;->val$imageUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/GlobalCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 571
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 572
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iget-object v3, v3, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4$1;

    invoke-direct {v4, p0, v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4$1;-><init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 592
    :goto_0
    return-void

    .line 582
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 583
    .local v1, "bitmapFromUrl":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iget-object v3, v3, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4$2;

    invoke-direct {v4, p0, v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4$2;-><init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    .end local v1    # "bitmapFromUrl":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 590
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
