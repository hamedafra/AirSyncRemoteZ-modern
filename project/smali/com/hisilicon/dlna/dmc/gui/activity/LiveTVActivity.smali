.class public Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
.super Landroid/app/Activity;
.source "LiveTVActivity.java"


# static fields
.field private static final LIVETV:Ljava/lang/String; = "LIVETV"


# instance fields
.field private activity:Landroid/app/Activity;

.field private browseScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private canConnectDevice:Ljava/lang/Runnable;

.field private deviceBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

.field private firstFloor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/support/model/DIDLObject;",
            ">;"
        }
    .end annotation
.end field

.field private hideRunnable:Ljava/lang/Runnable;

.field private liveTVBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

.field private liveTVBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

.field private livetv_not_found:Landroid/widget/TextView;

.field private livetv_not_found_layout:Landroid/view/View;

.field private m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

.field private m_gridView:Landroid/widget/GridView;

.field private m_itemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private m_loadMore:Z

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

.field private myHandler:Landroid/os/Handler;

.field private rootFloor:Ljava/util/HashMap;
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

.field private runnable:Ljava/lang/Runnable;

.field private systemListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

.field private upnpListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->rootFloor:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->firstFloor:Ljava/util/HashMap;

    .line 64
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->UNKOWN:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->liveTVBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_loadMore:Z

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->myHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$2;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$4;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->runnable:Ljava/lang/Runnable;

    .line 203
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$7;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$7;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->canConnectDevice:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$8;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$8;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->browseScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 278
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->systemListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    .line 353
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->deviceBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .line 472
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->liveTVBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .line 583
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$12;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$12;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->upnpListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    .line 670
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$15;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$15;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_itemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->livetv_not_found_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->progressShow()V

    return-void
.end method

.method static synthetic access$1000(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->lastImageItemIsMark(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->doLoadMoreItems()V

    return-void
.end method

.method static synthetic access$1200(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->canConnectDevice:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->rootFloor:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->firstFloor:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->liveTVBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->liveTVBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->upnpListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->liveTVBrowse(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_loadMore:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->setNewAdapter()V

    return-void
.end method

.method static synthetic access$2300(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->setAllItem(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->toPlay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
    .param p1, "x1"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->addDMS(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
    .param p1, "x1"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->removeDMS(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
    .param p1, "x1"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->addAdapterDMS(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
    .param p1, "x1"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->deviceBrowse(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->liveTVBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->systemListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Ljava/lang/String;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->browseMore(Ljava/lang/String;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    return-void
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->progressDismiss()V

    return-void
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->hideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_gridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->hasMoreItems(III)Z

    move-result v0

    return v0
.end method

.method private addAdapterDMS(Lorg/teleal/cling/model/meta/Device;)V
    .locals 5
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    const/4 v4, 0x0

    .line 638
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isSTBMultiRoom(Lorg/teleal/cling/model/meta/Device;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 639
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->myHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->canConnectDevice:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 641
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    .line 642
    .local v1, "udn":Lorg/teleal/cling/model/types/UDN;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setLiveTV(Lorg/teleal/cling/model/types/UDN;)V

    .line 644
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 645
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-eqz v0, :cond_0

    .line 646
    invoke-interface {v0, v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setRunning(Z)V

    .line 649
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->activity:Landroid/app/Activity;

    const v3, 0x7f080075

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 651
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->deviceBrowse(Lorg/teleal/cling/model/meta/Device;)V

    .line 655
    .end local v0    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    .end local v1    # "udn":Lorg/teleal/cling/model/types/UDN;
    :cond_1
    return-void
.end method

.method private addDMS(Lorg/teleal/cling/model/meta/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 623
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$13;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lorg/teleal/cling/model/meta/Device;)V

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 633
    return-void
.end method

.method private browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "maxResult"    # I
    .param p4, "m_browseListener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .prologue
    .line 711
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    .line 712
    .local v0, "dmsProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;
    if-eqz v0, :cond_0

    .line 713
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_loadMore:Z

    .line 714
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 716
    :cond_0
    return-void
.end method

.method private browseMore(Ljava/lang/String;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "m_browseListener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .prologue
    .line 719
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    .line 720
    .local v0, "dmsProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;
    if-eqz v0, :cond_0

    .line 721
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_loadMore:Z

    .line 722
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 724
    :cond_0
    return-void
.end method

.method private deviceBrowse(Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->progressShow()V

    .line 330
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->deviceBrowseClear()V

    .line 332
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->deviceBrowseStart(Lorg/teleal/cling/model/meta/Device;)V

    .line 333
    return-void
.end method

.method private deviceBrowseClear()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->rootFloor:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 338
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->firstFloor:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 340
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->clear()V

    .line 341
    return-void
.end method

.method private deviceBrowseStart(Lorg/teleal/cling/model/meta/Device;)V
    .locals 5
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    const/4 v4, 0x0

    .line 344
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    .line 345
    .local v0, "dmsProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;
    if-eqz v0, :cond_0

    .line 346
    iput-boolean v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_loadMore:Z

    .line 347
    const-string v1, "0"

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v2

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->deviceBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->progressDismiss()V

    goto :goto_0
.end method

.method private doLoadMoreItems()V
    .locals 3

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->progressShow()V

    .line 256
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_traceID:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_traceID:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->liveTVBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-direct {p0, v0, v1, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->browseMore(Ljava/lang/String;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 257
    return-void
.end method

.method private hasMoreItems(III)Z
    .locals 1
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 260
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->progressIsShow()Z

    move-result v0

    if-nez v0, :cond_0

    add-int v0, p1, p2

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lastImageItemIsMark(II)Z
    .locals 3
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I

    .prologue
    .line 266
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 267
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

.method private liveTVBrowse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    .line 706
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_traceID:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->liveTVBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 708
    return-void
.end method

.method private onBack()V
    .locals 1

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->upOneLevel()Z

    move-result v0

    .line 739
    .local v0, "isConsume":Z
    if-nez v0, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->finish()V

    .line 741
    :cond_0
    return-void
.end method

.method private progressDismiss()V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$5;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method private progressIsShow()Z
    .locals 1

    .prologue
    .line 200
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method private progressShow()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$6;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$6;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method private removeDMS(Lorg/teleal/cling/model/meta/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 659
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$14;

    invoke-direct {v0, p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$14;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lorg/teleal/cling/model/meta/Device;)V

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 668
    return-void
.end method

.method private setAllItem(Ljava/util/List;)V
    .locals 3
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 552
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v1

    .line 553
    .local v1, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v1, :cond_0

    .line 554
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;

    .end local v1    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-direct {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;-><init>()V

    .line 555
    .restart local v1    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V

    .line 557
    :cond_0
    invoke-interface {v1, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setItems(Ljava/util/List;)V

    .line 559
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getSize()I

    move-result v2

    if-lez v2, :cond_1

    .line 560
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getItemAt(I)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    .line 561
    .local v0, "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    const v2, 0x7f080044

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    invoke-interface {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->removeItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 565
    .end local v0    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    :cond_1
    return-void
.end method

.method private setNewAdapter()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->clear()V

    .line 702
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 703
    return-void
.end method

.method private toPlay(Ljava/lang/String;)V
    .locals 6
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 568
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "me.abitno.vplayer.t"

    const-string v4, "me.abitno.vplayer.VideoActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 571
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 572
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 573
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 574
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 575
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v1

    .line 579
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->activity:Landroid/app/Activity;

    const v4, 0x7f080058

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private upOneLevel()Z
    .locals 4

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->progressShow()V

    .line 745
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_traceID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 746
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_traceID:Ljava/util/ArrayList;

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v2

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->liveTVBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-interface {v0, v1, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->back(Ljava/util/List;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)Z

    .line 747
    const/4 v0, 0x1

    .line 749
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hideWarnLayout()V
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->livetv_not_found_layout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f040008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 142
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$3;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 158
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->livetv_not_found_layout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onBackClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->onBack()V

    .line 728
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->upOneLevel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 735
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    iput-object p0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->activity:Landroid/app/Activity;

    .line 79
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "STBIP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MyApp;->setSTBIP(Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->setContentView(I)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_traceID:Ljava/util/ArrayList;

    .line 84
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_traceID:Ljava/util/ArrayList;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    .line 87
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->livetv_not_found_layout:Landroid/view/View;

    .line 88
    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->livetv_not_found:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_gridView:Landroid/widget/GridView;

    .line 90
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_itemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->m_gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->browseScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 94
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getSTBIP()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STBIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->livetv_not_found:Landroid/widget/TextView;

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->showWarnLayout()V

    .line 98
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 273
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->systemListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->removeSystemListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;)V

    .line 274
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->upnpListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->removeDevicesListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;)V

    .line 275
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->unbindUpnpService()V

    .line 276
    return-void
.end method

.method public showWarnLayout()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->livetv_not_found_layout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 109
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 125
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->livetv_not_found_layout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public updateDMSDevice()V
    .locals 3

    .prologue
    .line 322
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/Device;

    .line 323
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    invoke-direct {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->addAdapterDMS(Lorg/teleal/cling/model/meta/Device;)V

    goto :goto_0

    .line 325
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_0
    return-void
.end method
