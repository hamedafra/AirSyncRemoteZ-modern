.class Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$1;
.super Landroid/os/Handler;
.source "ThumbnailGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnBitMap(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

.field final synthetic val$callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

.field final synthetic val$strImagLink:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$1;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$1;->val$callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$1;->val$strImagLink:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$1;->val$callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$1;->val$strImagLink:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$1;->val$callback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    invoke-interface {v0, v1, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0
.end method
