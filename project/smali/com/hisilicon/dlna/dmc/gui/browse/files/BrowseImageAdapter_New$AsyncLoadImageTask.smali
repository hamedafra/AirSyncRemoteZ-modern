.class Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;
.super Landroid/os/AsyncTask;
.source "BrowseImageAdapter_New.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;Landroid/widget/ImageView;)V
    .locals 1
    .param p2, "imageview"    # Landroid/widget/ImageView;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    .line 184
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->url:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 187
    return-void
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->access$200(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->url:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->access$300(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->getInstance()Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 197
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "resultBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    const/4 p1, 0x0

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 208
    .local v0, "imageview":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    invoke-static {v2, v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->access$400(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;Landroid/widget/ImageView;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;

    move-result-object v1

    .line 209
    .local v1, "loadImageTask":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;
    if-ne p0, v1, :cond_1

    .line 210
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 214
    .end local v0    # "imageview":Landroid/widget/ImageView;
    .end local v1    # "loadImageTask":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;
    :cond_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 179
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
