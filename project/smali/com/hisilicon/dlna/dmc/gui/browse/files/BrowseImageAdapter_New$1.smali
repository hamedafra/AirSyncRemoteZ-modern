.class Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$1;
.super Ljava/lang/Object;
.source "BrowseImageAdapter_New.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->loadPic(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoader(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 130
    .local v0, "mImageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    :cond_0
    return-void
.end method
