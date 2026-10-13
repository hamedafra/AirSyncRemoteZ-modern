.class public Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private BM_IMAGE:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Landroid/widget/GridView;

.field private mPoint:Landroid/graphics/Point;

.field private m_inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/GridView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mGridView"    # Landroid/widget/GridView;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->mPoint:Landroid/graphics/Point;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->folders:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->mGridView:Landroid/widget/GridView;

    .line 34
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 35
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    .line 37
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->mPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 39
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method private initItem(Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;)V
    .locals 5
    .param p1, "holder"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;

    .prologue
    const/4 v4, -0x1

    .line 122
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p1, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p1, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->item:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v2, p1, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->item_box:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    return-void
.end method


# virtual methods
.method public addFolderBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;>;"
    if-nez p1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->folders:Ljava/util/List;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 69
    if-nez p2, :cond_0

    .line 70
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03000b

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 71
    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;

    invoke-direct {v3, p0, v5}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$1;)V

    .line 72
    .local v3, "viewHolder":Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;
    const v4, 0x7f0b002d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->item:Landroid/widget/ImageView;

    .line 73
    const v4, 0x7f0b002e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->item_box:Landroid/widget/ImageView;

    .line 74
    const v4, 0x7f0b002c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    .line 75
    const v4, 0x7f0b0030

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->folderName:Landroid/widget/TextView;

    .line 76
    const v4, 0x7f0b0031

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->count:Landroid/widget/TextView;

    .line 77
    invoke-direct {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->initItem(Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;)V

    .line 78
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    :goto_0
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_1

    .line 84
    const v4, 0x7f020001

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    :goto_1
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->folders:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;

    .line 89
    .local v1, "folderBean":Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;
    if-nez v1, :cond_2

    move-object p2, v5

    .line 110
    .end local p2    # "convertView":Landroid/view/View;
    :goto_2
    return-object p2

    .line 80
    .end local v1    # "folderBean":Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;
    .end local v3    # "viewHolder":Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;

    .line 81
    .restart local v3    # "viewHolder":Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;
    iget-object v4, v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->item:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 86
    :cond_1
    const v4, 0x7f020002

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 91
    .restart local v1    # "folderBean":Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;
    :cond_2
    iget-object v4, v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->folderName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;->getFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v4, v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->count:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;->getFileCounts()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;->getTopImagePath()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "picUrl":Ljava/lang/String;
    iget-object v4, v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->item:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->getInstance()Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->mPoint:Landroid/graphics/Point;

    new-instance v6, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$1;

    invoke-direct {v6, p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;)V

    invoke-virtual {v4, v2, v5, v6}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->loadNativeImage(Ljava/lang/String;Landroid/graphics/Point;Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 106
    iget-object v4, v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->item:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 108
    :cond_3
    iget-object v4, v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->item:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
