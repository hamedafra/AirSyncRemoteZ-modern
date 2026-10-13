.class public Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;
.super Landroid/app/Activity;
.source "DMSOtherBrowseActivity.java"


# static fields
.field public static final LONGCLICK:Ljava/lang/String; = "LONGCLICK"


# instance fields
.field private activity:Landroid/app/Activity;

.field private browseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

.field private browseScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private id:Ljava/lang/String;

.field private volatile isLongClick:Z

.field private volatile isStop:Z

.field private item:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

.field private itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_gridView:Landroid/widget/GridView;

.field private m_itemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private m_loadMore:Z

.field protected m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

.field private m_traceID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

.field private rc_dms_header_title:Landroid/widget/TextView;

.field private rc_slide_area:Landroid/widget/ImageView;

.field private slidePushView:Lcom/hisilicon/multiscreen/widget/SlidePushView;

.field private titleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->id:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_loadMore:Z

    .line 71
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->isStop:Z

    .line 72
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->isLongClick:Z

    .line 133
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->browseScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 333
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->browseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .line 406
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$6;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$6;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_itemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 432
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 543
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$8;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$8;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->hasMoreItems(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->lastImageItemIsMark(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_loadMore:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->setNewAdapter()V

    return-void
.end method

.method static synthetic access$1300(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->titleMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->rc_dms_header_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->progressShow()V

    return-void
.end method

.method static synthetic access$1800(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->mediaBrowse(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->doLoadMoreItems()V

    return-void
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->isLongClick:Z

    return v0
.end method

.method static synthetic access$302(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->isLongClick:Z

    return p1
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->slidePushView:Lcom/hisilicon/multiscreen/widget/SlidePushView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->item:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    return-object v0
.end method

.method static synthetic access$602(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->item:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    return-object p1
.end method

.method static synthetic access$700(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .param p2, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->updatePlaylistAndPlay(Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_traceID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->progressDismiss()V

    return-void
.end method

.method private addToPlaylistAndPlay(Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;)V
    .locals 5
    .param p1, "object"    # Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "added":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    instance-of v2, p1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 504
    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 507
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v1

    .line 508
    .local v1, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v1, :cond_1

    .line 509
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;

    .end local v1    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-direct {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;-><init>()V

    .line 510
    .restart local v1    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V

    .line 513
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/teleal/cling/support/model/DIDLObject;

    if-eqz v2, :cond_2

    .line 514
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/DIDLObject;

    invoke-interface {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->addDIDLObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    .line 517
    :cond_2
    if-eqz v0, :cond_4

    .line 518
    invoke-interface {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setCurrentItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)I

    .line 520
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/teleal/cling/support/model/item/AudioItem;

    if-eqz v2, :cond_3

    .line 521
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_gridView:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    .line 525
    :cond_3
    :goto_0
    return-void

    .line 523
    :cond_4
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->activity:Landroid/app/Activity;

    const v3, 0x7f080019

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "maxResult"    # I
    .param p4, "m_browseListener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .prologue
    .line 184
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    .line 185
    .local v0, "dmsProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;
    if-eqz v0, :cond_0

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_loadMore:Z

    .line 187
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 189
    :cond_0
    return-void
.end method

.method private browseMore(Ljava/lang/String;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "m_browseListener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .prologue
    .line 192
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    .line 193
    .local v0, "dmsProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;
    if-eqz v0, :cond_0

    .line 194
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_loadMore:Z

    .line 195
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 197
    :cond_0
    return-void
.end method

.method private dmsBrowseBack()V
    .locals 1

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->upOneLevel()Z

    move-result v0

    .line 588
    .local v0, "isConsume":Z
    if-nez v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->finish()V

    .line 590
    :cond_0
    return-void
.end method

.method private doLoadMoreItems()V
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->progressShow()V

    .line 175
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_traceID:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_traceID:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->browseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-direct {p0, v0, v1, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->browseMore(Ljava/lang/String;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 176
    return-void
.end method

.method private hasMoreItems(III)Z
    .locals 1
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 200
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->progressIsShow()Z

    move-result v0

    if-nez v0, :cond_0

    add-int v0, p1, p2

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 211
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->rc_slide_area:Landroid/widget/ImageView;

    .line 212
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->rc_slide_area:Landroid/widget/ImageView;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    return-void
.end method

.method private lastImageItemIsMark(II)Z
    .locals 3
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I

    .prologue
    .line 206
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/teleal/cling/support/model/DIDLObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private mediaBrowse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_traceID:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->browseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 181
    return-void
.end method

.method private newAdapter(Landroid/app/Activity;Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mediaType"    # Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;",
            ")",
            "Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->IMAGE:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    if-ne v0, p2, :cond_0

    .line 300
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    invoke-direct {v0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;-><init>(Landroid/content/Context;)V

    .line 304
    :goto_0
    return-object v0

    .line 301
    :cond_0
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->MUSIC:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    if-ne v0, p2, :cond_1

    .line 302
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    invoke-direct {v0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 304
    :cond_1
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    invoke-direct {v0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private progressDismiss()V
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$3;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method

.method private progressIsShow()Z
    .locals 1

    .prologue
    .line 330
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method private progressShow()V
    .locals 1

    .prologue
    .line 320
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$4;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method private setAllItem(Ljava/util/List;)V
    .locals 2
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 493
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v0

    .line 494
    .local v0, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v0, :cond_0

    .line 495
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;

    .end local v0    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-direct {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;-><init>()V

    .line 496
    .restart local v0    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V

    .line 498
    :cond_0
    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setItems(Ljava/util/List;)V

    .line 499
    return-void
.end method

.method private setNewAdapter()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->clear()V

    .line 402
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_gridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 403
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 404
    return-void
.end method

.method private upOneLevel()Z
    .locals 5

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->progressShow()V

    .line 595
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_traceID:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 596
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_traceID:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_traceID:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 598
    .local v0, "parentID":Ljava/lang/String;
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$10;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 606
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_traceID:Ljava/util/ArrayList;

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v3

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->browseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-interface {v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->back(Ljava/util/List;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)Z

    .line 608
    const/4 v1, 0x1

    .line 610
    .end local v0    # "parentID":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updatePlaylistAndPlay(Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V
    .locals 4
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .param p2, "isLongClick"    # Z

    .prologue
    .line 472
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 474
    .local v1, "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->setAllItem(Ljava/util/List;)V

    .line 475
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->addToPlaylistAndPlay(Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;)V

    .line 477
    instance-of v2, v1, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v2, :cond_0

    .line 478
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->activity:Landroid/app/Activity;

    const-class v3, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 479
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "LONGCLICK"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 480
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 490
    :goto_0
    return-void

    .line 481
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    instance-of v2, v1, Lorg/teleal/cling/support/model/item/AudioItem;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/teleal/cling/support/model/item/MusicTrack;

    if-eqz v2, :cond_2

    .line 482
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->activity:Landroid/app/Activity;

    const-class v3, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "LONGCLICK"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 486
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->activity:Landroid/app/Activity;

    const-class v3, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 487
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "LONGCLICK"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public loadImage()V
    .locals 4

    .prologue
    .line 163
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_gridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 164
    .local v1, "start":I
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_gridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v0

    .line 165
    .local v0, "end":I
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 168
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v2

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v2, v1, v3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->setLoadLimit(II)V

    .line 169
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->unlock()V

    .line 170
    return-void
.end method

.method public onBackClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->dmsBrowseBack()V

    .line 584
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->dmsBrowseBack()V

    .line 580
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    iput-object p0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->activity:Landroid/app/Activity;

    .line 78
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->restore()V

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 83
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "mediaType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    .line 85
    const-string v4, "traceID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 87
    .local v3, "temp_traceID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_traceID:Ljava/util/ArrayList;

    .line 88
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_traceID:Ljava/util/ArrayList;

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->titleMap:Ljava/util/HashMap;

    .line 91
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-direct {p0, v4, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->newAdapter(Landroid/app/Activity;Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    .line 93
    const v4, 0x7f0b0005

    invoke-virtual {p0, v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->rc_dms_header_title:Landroid/widget/TextView;

    .line 94
    const v4, 0x7f0b0008

    invoke-virtual {p0, v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_gridView:Landroid/widget/GridView;

    .line 95
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_gridView:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_gridView:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_itemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_gridView:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 98
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_gridView:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->browseScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 99
    const v4, 0x7f0b0052

    invoke-virtual {p0, v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/hisilicon/multiscreen/widget/SlidePushView;

    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->slidePushView:Lcom/hisilicon/multiscreen/widget/SlidePushView;

    .line 101
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->init()V

    .line 103
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->progressShow()V

    .line 105
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    .line 106
    .local v1, "device":Lorg/teleal/cling/model/meta/Device;
    if-eqz v1, :cond_5

    instance-of v4, v1, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v4, :cond_5

    .line 107
    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->IMAGE:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    if-ne v4, v5, :cond_3

    .line 108
    const-string v4, "9"

    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->id:Ljava/lang/String;

    .line 114
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->id:Ljava/lang/String;

    invoke-direct {p0, v4, v6}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->mediaBrowse(Ljava/lang/String;I)V

    .line 122
    :cond_1
    :goto_1
    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->IMAGE:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    if-ne v4, v5, :cond_6

    .line 123
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->titleMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->id:Ljava/lang/String;

    const v6, 0x7f080034

    invoke-virtual {p0, v6}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->rc_dms_header_title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->titleMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->id:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void

    .line 109
    :cond_3
    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->VIDEO:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    if-ne v4, v5, :cond_4

    .line 110
    const-string v4, "7"

    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->id:Ljava/lang/String;

    goto :goto_0

    .line 111
    :cond_4
    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->MUSIC:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    if-ne v4, v5, :cond_0

    .line 112
    const-string v4, "8"

    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->id:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 117
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->id:Ljava/lang/String;

    .line 118
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->id:Ljava/lang/String;

    invoke-direct {p0, v4, v6}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->mediaBrowse(Ljava/lang/String;I)V

    goto :goto_1

    .line 124
    :cond_6
    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->VIDEO:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    if-ne v4, v5, :cond_7

    .line 125
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->titleMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->id:Ljava/lang/String;

    const v6, 0x7f080035

    invoke-virtual {p0, v6}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 126
    :cond_7
    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->MUSIC:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    if-ne v4, v5, :cond_2

    .line 127
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->titleMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->id:Ljava/lang/String;

    const v6, 0x7f080032

    invoke-virtual {p0, v6}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 538
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->isStop:Z

    .line 540
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->removePlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V

    .line 541
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 529
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->isStop:Z

    .line 531
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->loadImage()V

    .line 532
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_gridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    .line 533
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addPlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V

    .line 534
    return-void
.end method

.method protected playlistItemChanged(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V
    .locals 2
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .param p2, "changeMode"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    .prologue
    .line 552
    iget-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->isStop:Z

    if-eqz v1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 556
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-eqz v0, :cond_0

    .line 559
    if-nez p1, :cond_2

    .line 560
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->stop()V

    goto :goto_0

    .line 564
    :cond_2
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/teleal/cling/support/model/item/AudioItem;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/teleal/cling/support/model/item/MusicTrack;

    if-eqz v1, :cond_0

    .line 565
    :cond_3
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$9;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$9;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V

    invoke-virtual {p0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
