.class public Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
.super Landroid/app/Activity;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$CreatImageItemsThread;,
        Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$PicOnScrollListener;,
        Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemLongClickListener;,
        Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemClickListener;,
        Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

.field private context:Landroid/content/Context;

.field private folderName:Ljava/lang/String;

.field private imageItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/model/item/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private isLongClick:Z

.field private item:Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

.field private mGridView:Landroid/widget/GridView;

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;",
            ">;"
        }
    .end annotation
.end field

.field private rc_slide_area:Landroid/widget/ImageView;

.field private slidePushView:Lcom/hisilicon/multiscreen/widget/SlidePushView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->imageItems:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->paths:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->isLongClick:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->adapter:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->setAllItem(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->addToPlaylistAndPlay(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->imageItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
    .param p1, "x1"    # Lorg/teleal/cling/support/model/DIDLObject;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->isLongClick:Z

    return v0
.end method

.method static synthetic access$502(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->isLongClick:Z

    return p1
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->slidePushView:Lcom/hisilicon/multiscreen/widget/SlidePushView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->item:Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    return-object v0
.end method

.method static synthetic access$802(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;)Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->item:Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    return-object p1
.end method

.method static synthetic access$900(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .param p2, "x2"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->updatePlaylistAndPlay(Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V

    return-void
.end method

.method private addToPlaylistAndPlay(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "added":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    instance-of v2, p1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 285
    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 288
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v1

    .line 289
    .local v1, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v1, :cond_1

    .line 290
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;

    .end local v1    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-direct {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;-><init>()V

    .line 291
    .restart local v1    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V

    .line 294
    :cond_1
    if-nez v0, :cond_2

    instance-of v2, p1, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v2, :cond_2

    .line 295
    check-cast p1, Lorg/teleal/cling/support/model/DIDLObject;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->addDIDLObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    .line 298
    :cond_2
    if-eqz v0, :cond_3

    .line 299
    invoke-interface {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setCurrentItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)I

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_3
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->context:Landroid/content/Context;

    const v3, 0x7f080019

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 4
    .param p1, "object"    # Lorg/teleal/cling/support/model/DIDLObject;

    .prologue
    .line 321
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-direct {v1, p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;-><init>(Ljava/lang/Object;)V

    .line 323
    .local v1, "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setId(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setTitle(Ljava/lang/String;)V

    .line 326
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setUrl(Ljava/lang/String;)V

    .line 329
    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->mediaFromLocal(Ljava/lang/String;)Z

    move-result v0

    .line 330
    .local v0, "isLocal":Z
    if-eqz v0, :cond_0

    .line 331
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    .line 335
    :goto_0
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->createMetaData(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setMetaData(Ljava/lang/String;)V

    .line 337
    return-object v1

    .line 333
    :cond_0
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    goto :goto_0
.end method

.method private getImageItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;>;"
    if-nez p1, :cond_1

    .line 92
    :cond_0
    return-void

    .line 88
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;

    .line 89
    .local v0, "node":Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->imageItems:Ljava/util/List;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;->getImageItem()Lorg/teleal/cling/support/model/item/ImageItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->paths:Ljava/util/List;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;->getPictureNode()Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    const v2, 0x7f0b0045

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x7f0b000a

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->rc_slide_area:Landroid/widget/ImageView;

    .line 70
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->rc_slide_area:Landroid/widget/ImageView;

    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;

    invoke-direct {v3, p0, v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0b0052

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/hisilicon/multiscreen/widget/SlidePushView;

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->slidePushView:Lcom/hisilicon/multiscreen/widget/SlidePushView;

    .line 72
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->folderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v2, 0x7f0b0046

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->mGridView:Landroid/widget/GridView;

    .line 74
    new-instance v2, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->mGridView:Landroid/widget/GridView;

    invoke-direct {v2, p0, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;-><init>(Landroid/content/Context;Landroid/widget/GridView;)V

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->adapter:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    .line 75
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->adapter:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->paths:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->setList(Ljava/util/List;)V

    .line 76
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->adapter:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->mGridView:Landroid/widget/GridView;

    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemClickListener;

    invoke-direct {v3, p0, v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemClickListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->mGridView:Landroid/widget/GridView;

    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemLongClickListener;

    invoke-direct {v3, p0, v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemLongClickListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 79
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->mGridView:Landroid/widget/GridView;

    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$PicOnScrollListener;

    invoke-direct {v3, p0, v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$PicOnScrollListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 80
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$CreatImageItemsThread;

    invoke-direct {v0, p0, v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$CreatImageItemsThread;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;)V

    .line 81
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method private setAllItem(Ljava/util/List;)V
    .locals 2
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 264
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v0

    .line 265
    .local v0, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;

    .end local v0    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-direct {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;-><init>()V

    .line 267
    .restart local v0    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V

    .line 269
    :cond_0
    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setItems(Ljava/util/List;)V

    .line 271
    return-void
.end method

.method private updatePlaylistAndPlay(Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V
    .locals 4
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .param p2, "isLongClick"    # Z

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 275
    .local v1, "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->adapter:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->setAllItem(Ljava/util/List;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->addToPlaylistAndPlay(Ljava/lang/Object;)V

    .line 277
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->context:Landroid/content/Context;

    const-class v3, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "LONGCLICK"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 280
    return-void
.end method


# virtual methods
.method public onBackClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->finish()V

    .line 342
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->setContentView(I)V

    .line 58
    iput-object p0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->context:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FolderTitle"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->folderName:Ljava/lang/String;

    .line 60
    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mGruopMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mGruopMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->folderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 62
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;>;"
    invoke-direct {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->getImageItems(Ljava/util/List;)V

    .line 64
    .end local v0    # "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;>;"
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->initView()V

    .line 65
    return-void
.end method
