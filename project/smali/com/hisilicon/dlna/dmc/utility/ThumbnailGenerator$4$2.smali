.class Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4$2;
.super Ljava/lang/Object;
.source "ThumbnailGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;

.field final synthetic val$bitmapFromUrl:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4$2;->this$1:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4$2;->val$bitmapFromUrl:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4$2;->this$1:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;->val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4$2;->val$bitmapFromUrl:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4$2;->this$1:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;

    iget-object v2, v2, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$4;->val$imageUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 587
    return-void
.end method
