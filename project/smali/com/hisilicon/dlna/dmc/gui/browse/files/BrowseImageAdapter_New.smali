.class public Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;
.super Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;
.source "BrowseImageAdapter_New.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;,
        Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;,
        Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter",
        "<",
        "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;",
        ">;"
    }
.end annotation


# instance fields
.field private BM_IMAGE:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;",
            ">;"
        }
    .end annotation
.end field

.field private mBusy:Z

.field private mGridView:Landroid/widget/GridView;

.field private mPoint:Landroid/graphics/Point;

.field private m_inflater:Landroid/view/LayoutInflater;

.field private taskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/GridView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mGridView"    # Landroid/widget/GridView;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->mPoint:Landroid/graphics/Point;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->files:Ljava/util/List;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->m_inflater:Landroid/view/LayoutInflater;

    .line 36
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->mBusy:Z

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->taskList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->context:Landroid/content/Context;

    .line 40
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->m_inflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->mGridView:Landroid/widget/GridView;

    .line 42
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->BM_IMAGE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->BM_IMAGE:Landroid/graphics/Bitmap;

    .line 44
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->mPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 46
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->files:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->getBitmapFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;Landroid/widget/ImageView;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->getAsyncLoadImageTask(Landroid/widget/ImageView;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;

    move-result-object v0

    return-object v0
.end method

.method private cancelPotentialLoad(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageview"    # Landroid/widget/ImageView;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 220
    invoke-direct {p0, p2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->getAsyncLoadImageTask(Landroid/widget/ImageView;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;

    move-result-object v2

    .line 222
    .local v2, "loadImageTask":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->taskList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0x5a

    if-lt v3, v6, :cond_0

    .line 223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x14

    if-gt v1, v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->taskList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;

    invoke-virtual {v3, v5}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->cancel(Z)Z

    .line 225
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->taskList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "i":I
    :cond_0
    if-eqz v2, :cond_2

    .line 230
    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->access$500(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "bitmapUrl":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 232
    :cond_1
    invoke-virtual {v2, v5}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->cancel(Z)Z

    .end local v0    # "bitmapUrl":Ljava/lang/String;
    :cond_2
    move v3, v5

    .line 238
    :goto_1
    return v3

    .restart local v0    # "bitmapUrl":Ljava/lang/String;
    :cond_3
    move v3, v4

    .line 235
    goto :goto_1
.end method

.method private getAsyncLoadImageTask(Landroid/widget/ImageView;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;
    .locals 3
    .param p1, "imageview"    # Landroid/widget/ImageView;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 249
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 250
    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;

    .line 251
    .local v1, "loadedDrawable":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;
    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;->getLoadImageTask()Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;

    move-result-object v2

    .line 254
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "loadedDrawable":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBitmapFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->getInstance()Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    .local v0, "bt":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 277
    .end local v0    # "bt":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0    # "bt":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->getInstance()Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->decodeThumbBitmapForFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private initItem(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;)V
    .locals 5
    .param p1, "holder"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;

    .prologue
    const/4 v4, -0x1

    .line 148
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;->item:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v2, p1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;->item_box:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    return-void
.end method

.method private loadPic(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "picUrl"    # Ljava/lang/String;
    .param p2, "item"    # Landroid/widget/ImageView;

    .prologue
    .line 124
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->getInstance()Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->mPoint:Landroid/graphics/Point;

    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$1;

    invoke-direct {v3, p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->loadNativeImage(Ljava/lang/String;Landroid/graphics/Point;Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private loadPicture(ILjava/lang/String;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "picUrl"    # Ljava/lang/String;
    .param p3, "item"    # Landroid/widget/ImageView;

    .prologue
    .line 166
    invoke-direct {p0, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->cancelPotentialLoad(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;

    invoke-direct {v1, p0, p3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;Landroid/widget/ImageView;)V

    .line 168
    .local v1, "task":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;)V

    .line 169
    .local v0, "loadedDrawable":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->taskList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "loadedDrawable":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;
    .end local v1    # "task":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;
    :cond_0
    :goto_0
    return-void

    .line 173
    .restart local v0    # "loadedDrawable":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;
    .restart local v1    # "task":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 65
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 72
    if-nez p2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->m_inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030019

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 74
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;

    invoke-direct {v1, p0, v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$1;)V

    .line 75
    .local v1, "viewHolder":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;
    const v2, 0x7f0b0050

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;->item:Landroid/widget/ImageView;

    .line 76
    const v2, 0x7f0b0051

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;->item_box:Landroid/widget/ImageView;

    .line 77
    const v2, 0x7f0b004f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    .line 78
    iget-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;->item:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    invoke-direct {p0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->initItem(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;)V

    .line 80
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->files:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "picUrl":Ljava/lang/String;
    iget-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;->item:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-boolean v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->mBusy:Z

    if-nez v2, :cond_0

    .line 89
    iget-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;->item:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->loadPic(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 120
    :cond_0
    return-object p2

    .line 82
    .end local v0    # "picUrl":Ljava/lang/String;
    .end local v1    # "viewHolder":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;

    .line 83
    .restart local v1    # "viewHolder":Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;
    iget-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;->item:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public notifyVisibleItemChanged(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 158
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;>;"
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->files:Ljava/util/List;

    .line 50
    return-void
.end method

.method public setState(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/Boolean;

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->mBusy:Z

    .line 54
    return-void
.end method
