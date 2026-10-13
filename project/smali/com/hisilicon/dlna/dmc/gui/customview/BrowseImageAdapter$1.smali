.class Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$1;
.super Ljava/lang/Object;
.source "BrowseImageAdapter.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->loadPic(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

.field final synthetic val$mImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$1;->val$mImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoader(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 255
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$1;->val$mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$1;->val$mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    :cond_0
    return-void
.end method
