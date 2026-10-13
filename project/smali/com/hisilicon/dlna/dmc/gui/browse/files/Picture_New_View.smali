.class public Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;
.super Ljava/lang/Object;
.source "Picture_New_View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileLongClickCallBack;,
        Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FoldersClickListener;,
        Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;,
        Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemLongClickListener;,
        Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;,
        Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileDataLoad;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private fileData:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

.field private imageAdapter_new:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

.field private mFileLongClickCallBack:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileLongClickCallBack;

.field private mGridView:Landroid/widget/GridView;

.field private progressHandler:Landroid/os/Handler;

.field private rc_dms_picture_bottom_layout:Landroid/widget/FrameLayout;

.field private slidePushView:Lcom/hisilicon/multiscreen/widget/SlidePushView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisilicon/multiscreen/widget/SlidePushView;Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileLongClickCallBack;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slidePushView"    # Lcom/hisilicon/multiscreen/widget/SlidePushView;
    .param p3, "mFileLongClickCallBack"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileLongClickCallBack;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-------------Picture_New_View-------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->slidePushView:Lcom/hisilicon/multiscreen/widget/SlidePushView;

    .line 52
    const v0, 0x7f030018

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->view:Landroid/view/View;

    .line 53
    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->mFileLongClickCallBack:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileLongClickCallBack;

    .line 54
    iput-object p4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->progressHandler:Landroid/os/Handler;

    .line 55
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->initView()V

    .line 56
    return-void
.end method

.method static synthetic access$1000(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/multiscreen/widget/SlidePushView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->slidePushView:Lcom/hisilicon/multiscreen/widget/SlidePushView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->rc_dms_picture_bottom_layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->progressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->fileData:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->imageAdapter_new:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    return-object v0
.end method

.method static synthetic access$800(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileLongClickCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->mFileLongClickCallBack:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileLongClickCallBack;

    return-object v0
.end method

.method private fileDataDo()V
    .locals 5

    .prologue
    .line 88
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->fileData:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->imageAdapter_new:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileDataLoad;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileDataLoad;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;-><init>(Landroid/content/Context;Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$LoadComplete;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->fileData:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->fileData:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->getData()V

    .line 91
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->view:Landroid/view/View;

    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->mGridView:Landroid/widget/GridView;

    .line 76
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->mGridView:Landroid/widget/GridView;

    invoke-direct {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;-><init>(Landroid/content/Context;Landroid/widget/GridView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->imageAdapter_new:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    .line 77
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->imageAdapter_new:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;

    invoke-direct {v1, p0, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemLongClickListener;

    invoke-direct {v1, p0, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemLongClickListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 80
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->fileDataDo()V

    .line 81
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;

    invoke-direct {v1, p0, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 82
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->view:Landroid/view/View;

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->rc_dms_picture_bottom_layout:Landroid/widget/FrameLayout;

    .line 83
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->rc_dms_picture_bottom_layout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FoldersClickListener;

    invoke-direct {v1, p0, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FoldersClickListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->rc_dms_picture_bottom_layout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 85
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->imageAdapter_new:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->view:Landroid/view/View;

    return-object v0
.end method

.method public setFileLongClickCallBack(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileLongClickCallBack;)V
    .locals 0
    .param p1, "mFileLongClickCallBack"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileLongClickCallBack;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->mFileLongClickCallBack:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileLongClickCallBack;

    .line 60
    return-void
.end method

.method public setSlidePushView(Lcom/hisilicon/multiscreen/widget/SlidePushView;)V
    .locals 0
    .param p1, "slidePushView"    # Lcom/hisilicon/multiscreen/widget/SlidePushView;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->slidePushView:Lcom/hisilicon/multiscreen/widget/SlidePushView;

    .line 64
    return-void
.end method
