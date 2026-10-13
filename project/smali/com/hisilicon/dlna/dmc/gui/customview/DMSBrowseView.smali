.class public Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
.super Landroid/widget/LinearLayout;
.source "DMSBrowseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$ViewPageChangeListener;,
        Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$ViewPagerAdapter;,
        Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;
    }
.end annotation


# static fields
.field private static final ALL_IMAGE:Ljava/lang/String; = "ALL_IMAGE"

.field private static final ALL_MUSIC:Ljava/lang/String; = "ALL_MUSIC"

.field private static final ALL_VIDEO:Ljava/lang/String; = "ALL_VIDEO"

.field private static final CAMERA_IMAGE:Ljava/lang/String; = "CAMERA_IMAGE"

.field private static final CAMERA_MUSIC:Ljava/lang/String; = "CAMERA_MUSIC"

.field private static final CAMERA_VIDEO:Ljava/lang/String; = "CAMERA_VIDEO"

.field private static final IMAGE:Ljava/lang/String; = "IMAGE"

.field public static final LONGCLICK:Ljava/lang/String; = "LONGCLICK"

.field private static final MUSIC:Ljava/lang/String; = "MUSIC"

.field private static final VIDEO:Ljava/lang/String; = "VIDEO"


# instance fields
.field private context:Landroid/content/Context;

.field private deviceBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

.field private deviceItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private dmsDeviceAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

.field private dmsShowOrHideClick:Landroid/view/View$OnClickListener;

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

.field private imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

.field private imageBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

.field private imageBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

.field private imageGridView:Landroid/widget/GridView;

.field private imageItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private imageLayout:Landroid/view/View;

.field private imageLayout_new:Landroid/view/View;

.field private imageScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private imageView:Lcom/hisilicon/multiscreen/widget/BottomLineImageView;

.field private image_traceID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isLongClick:Z

.field private volatile isStop:Z

.field private item:Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

.field private itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private m_loadMore:Z

.field protected m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

.field private musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

.field private musicBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

.field private musicBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

.field private musicGridView:Landroid/widget/GridView;

.field private musicItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private musicLayout:Landroid/view/View;

.field private musicScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private music_traceID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressHandler:Landroid/os/Handler;

.field private rc_dms_bottom_listener:Landroid/view/View$OnClickListener;

.field private rc_dms_devices:Landroid/widget/GridView;

.field private rc_dms_devices_back:Landroid/widget/Button;

.field private rc_dms_devices_layout:Landroid/view/View;

.field private rc_dms_header_title:Landroid/widget/TextView;

.field private rc_dms_music_bottom_layout:Landroid/widget/FrameLayout;

.field private rc_dms_picture_bottom_layout:Landroid/widget/FrameLayout;

.field private rc_dms_shuffle_play_layout:Landroid/widget/LinearLayout;

.field private rc_dms_video_bottom_layout:Landroid/widget/FrameLayout;

.field private rc_dmstitle_header_layout:Landroid/widget/LinearLayout;

.field private rc_slide_area:Landroid/widget/ImageView;

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

.field private secondFloor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/teleal/cling/support/model/DIDLObject;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private slidePushView:Lcom/hisilicon/multiscreen/widget/SlidePushView;

.field private upnpListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

.field private videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

.field private videoBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

.field private videoBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

.field private videoGridView:Landroid/widget/GridView;

.field private videoItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private videoLayout:Landroid/view/View;

.field private videoScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private video_traceID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rootFloor:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->firstFloor:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->secondFloor:Ljava/util/HashMap;

    .line 99
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->UNKOWN:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .line 100
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->UNKOWN:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .line 101
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->UNKOWN:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->image_traceID:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->video_traceID:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->music_traceID:Ljava/util/ArrayList;

    .line 108
    iput-boolean v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->isStop:Z

    .line 134
    iput-boolean v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->isLongClick:Z

    .line 189
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_bottom_listener:Landroid/view/View$OnClickListener;

    .line 220
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$2;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->dmsShowOrHideClick:Landroid/view/View$OnClickListener;

    .line 540
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$5;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressHandler:Landroid/os/Handler;

    .line 600
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$6;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$6;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 645
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$7;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$7;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 669
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$8;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$8;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 732
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$9;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$9;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->deviceItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 837
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 891
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$11;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$11;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 909
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$12;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$12;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 936
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$13;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$13;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1071
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->deviceBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .line 1324
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .line 1459
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .line 1574
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .line 1670
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$18;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$18;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->upnpListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    .line 1822
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$21;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$21;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    .line 143
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->context:Landroid/content/Context;

    .line 144
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->restore()V

    .line 146
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03000e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 148
    instance-of v0, p1, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 149
    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dmstitle_header_layout:Landroid/widget/LinearLayout;

    move-object v0, p1

    .line 150
    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_header_title:Landroid/widget/TextView;

    move-object v0, p1

    .line 151
    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/widget/SlidePushView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->slidePushView:Lcom/hisilicon/multiscreen/widget/SlidePushView;

    .line 152
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dmstitle_header_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->dmsShowOrHideClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressShow()V

    .line 155
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->initDeviceView()V

    .line 157
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->clearAllTraceID()V

    .line 158
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->upnpListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addDevicesListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;)V

    .line 160
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    invoke-direct {v0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    .line 161
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->setNotifyOnChange(Z)V

    .line 163
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    invoke-direct {v0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    .line 164
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->setNotifyOnChange(Z)V

    .line 166
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    invoke-direct {v0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    .line 167
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->setNotifyOnChange(Z)V

    .line 170
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->initTabView()V

    .line 171
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->initViewPager()V

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->image_traceID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->video_traceID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/multiscreen/widget/BottomLineImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageView:Lcom/hisilicon/multiscreen/widget/BottomLineImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_picture_bottom_layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rootFloor:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->hasMoreItems(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->lastImageItemIsMark(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->music_traceID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->doLoadMoreImageItems()V

    return-void
.end method

.method static synthetic access$2100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_video_bottom_layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->lastVideoItemIsMark(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->doLoadMoreVideoItems()V

    return-void
.end method

.method static synthetic access$2400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_music_bottom_layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->lastMusicItemIsMark(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->doLoadMoreMusicItems()V

    return-void
.end method

.method static synthetic access$2700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->dmsDeviceAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->updateHeaderTitle()V

    return-void
.end method

.method static synthetic access$2900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageBrowse(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_devices_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoBrowse(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicBrowse(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->firstFloor:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->isLongClick:Z

    return v0
.end method

.method static synthetic access$402(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->isLongClick:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicBrowseState:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->m_loadMore:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->setNewPictureAdapter()V

    return-void
.end method

.method static synthetic access$4800(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->secondFloor:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->setNewVideoAdapter()V

    return-void
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->setNewMusicAdapter()V

    return-void
.end method

.method static synthetic access$5100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_shuffle_play_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->addDMS(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->removeDMS(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->addAdapterDMS(Lorg/teleal/cling/model/meta/Device;)V

    return-void
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/multiscreen/widget/SlidePushView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->slidePushView:Lcom/hisilicon/multiscreen/widget/SlidePushView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->item:Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    return-object v0
.end method

.method static synthetic access$702(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;)Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->item:Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    return-object p1
.end method

.method static synthetic access$800(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p1, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .param p2, "x2"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->updatePlaylistAndPlay(Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method private addAdapterDMS(Lorg/teleal/cling/model/meta/Device;)V
    .locals 3
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 1731
    instance-of v1, p1, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v1, :cond_1

    .line 1733
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "The dms is local dms"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1734
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1736
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v0

    .line 1737
    .local v0, "udn":Lorg/teleal/cling/model/types/UDN;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMS(Lorg/teleal/cling/model/types/UDN;)V

    .line 1739
    .end local v0    # "udn":Lorg/teleal/cling/model/types/UDN;
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->dmsDeviceAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->insert(Ljava/lang/Object;I)V

    .line 1745
    :goto_0
    return-void

    .line 1743
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->dmsDeviceAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    invoke-virtual {v1, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addDMS(Lorg/teleal/cling/model/meta/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 1709
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$19;

    invoke-direct {v0, p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$19;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lorg/teleal/cling/model/meta/Device;)V

    invoke-direct {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1720
    return-void
.end method

.method private addToPlaylistAndPlay(Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;)V
    .locals 5
    .param p1, "object"    # Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    .prologue
    .line 1046
    const/4 v0, 0x0

    .line 1047
    .local v0, "added":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    instance-of v2, p1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1048
    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 1051
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v1

    .line 1052
    .local v1, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v1, :cond_1

    .line 1053
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;

    .end local v1    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-direct {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;-><init>()V

    .line 1054
    .restart local v1    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V

    .line 1057
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/teleal/cling/support/model/DIDLObject;

    if-eqz v2, :cond_2

    .line 1058
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/DIDLObject;

    invoke-interface {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->addDIDLObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    .line 1061
    :cond_2
    if-eqz v0, :cond_4

    .line 1062
    invoke-interface {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setCurrentItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)I

    .line 1064
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/teleal/cling/support/model/item/AudioItem;

    if-eqz v2, :cond_3

    .line 1065
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    .line 1069
    :cond_3
    :goto_0
    return-void

    .line 1067
    :cond_4
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v2

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
    .line 969
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    .line 970
    .local v0, "dmsProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;
    if-eqz v0, :cond_0

    .line 971
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->m_loadMore:Z

    .line 972
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 974
    :cond_0
    return-void
.end method

.method private browseMore(Ljava/lang/String;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "m_browseListener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    .prologue
    .line 977
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    .line 978
    .local v0, "dmsProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;
    if-eqz v0, :cond_0

    .line 979
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->m_loadMore:Z

    .line 980
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 982
    :cond_0
    return-void
.end method

.method private clearAllTraceID()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->image_traceID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->image_traceID:Ljava/util/ArrayList;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->video_traceID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->video_traceID:Ljava/util/ArrayList;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->music_traceID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->music_traceID:Ljava/util/ArrayList;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method private deviceBrowseClear()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 805
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->clearAllTraceID()V

    .line 807
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rootFloor:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 808
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->firstFloor:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 809
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->secondFloor:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 811
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_picture_bottom_layout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_picture_bottom_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_video_bottom_layout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_video_bottom_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_music_bottom_layout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_music_bottom_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_shuffle_play_layout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 818
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_shuffle_play_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 820
    :cond_3
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    if-eqz v0, :cond_4

    .line 821
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->clear()V

    .line 822
    :cond_4
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    if-eqz v0, :cond_5

    .line 823
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->clear()V

    .line 824
    :cond_5
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    if-eqz v0, :cond_6

    .line 825
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->clear()V

    .line 826
    :cond_6
    return-void
.end method

.method private deviceBrowseStart(Lorg/teleal/cling/model/meta/Device;)V
    .locals 5
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    const/4 v4, 0x0

    .line 829
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    .line 830
    .local v0, "dmsProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;
    if-eqz v0, :cond_0

    .line 831
    iput-boolean v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->m_loadMore:Z

    .line 832
    const-string v1, "0"

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v2

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->deviceBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 835
    :cond_0
    return-void
.end method

.method private doLoadMoreImageItems()V
    .locals 3

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressShow()V

    .line 717
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->image_traceID:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->image_traceID:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-direct {p0, v0, v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->browseMore(Ljava/lang/String;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 718
    return-void
.end method

.method private doLoadMoreMusicItems()V
    .locals 3

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressShow()V

    .line 729
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->music_traceID:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->music_traceID:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-direct {p0, v0, v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->browseMore(Ljava/lang/String;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 730
    return-void
.end method

.method private doLoadMoreVideoItems()V
    .locals 3

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressShow()V

    .line 723
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->video_traceID:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->video_traceID:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-direct {p0, v0, v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->browseMore(Ljava/lang/String;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 724
    return-void
.end method

.method private hasMoreItems(III)Z
    .locals 1
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 694
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressIsShow()Z

    move-result v0

    if-nez v0, :cond_0

    add-int v0, p1, p2

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    .line 694
    :goto_0
    return v0

    .line 695
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private imageBrowse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    .line 954
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->image_traceID:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 956
    return-void
.end method

.method private initDeviceView()V
    .locals 2

    .prologue
    .line 236
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_devices_layout:Landroid/view/View;

    .line 237
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_devices:Landroid/widget/GridView;

    .line 238
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_devices_back:Landroid/widget/Button;

    .line 239
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_devices_back:Landroid/widget/Button;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->dmsShowOrHideClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->dmsDeviceAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    .line 241
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_devices:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->dmsDeviceAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_devices:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->deviceItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 243
    return-void
.end method

.method private initTabView()V
    .locals 5

    .prologue
    .line 441
    const v3, 0x7f0b0039

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;

    iput-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageView:Lcom/hisilicon/multiscreen/widget/BottomLineImageView;

    .line 442
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageView:Lcom/hisilicon/multiscreen/widget/BottomLineImageView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->initTabCount(I)V

    .line 444
    const v3, 0x7f0b0036

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 445
    .local v0, "imageTab":Landroid/widget/ImageView;
    const v3, 0x7f0b0037

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 446
    .local v2, "videoTab":Landroid/widget/ImageView;
    const v3, 0x7f0b0038

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 448
    .local v1, "musicTab":Landroid/widget/ImageView;
    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->IMAGE:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-direct {v3, p0, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->VIDEO:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-direct {v3, p0, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->MUSIC:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-direct {v3, p0, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    return-void
.end method

.method private initViewPager()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 246
    const v1, 0x7f0b000a

    invoke-virtual {p0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_slide_area:Landroid/widget/ImageView;

    .line 247
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_slide_area:Landroid/widget/ImageView;

    new-instance v2, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;

    invoke-direct {v2, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 336
    const v1, 0x7f0b003a

    invoke-virtual {p0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->views:Ljava/util/List;

    .line 338
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030017

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageLayout:Landroid/view/View;

    .line 339
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03001b

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoLayout:Landroid/view/View;

    .line 340
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030016

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicLayout:Landroid/view/View;

    .line 342
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageLayout:Landroid/view/View;

    const v2, 0x7f0b004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageGridView:Landroid/widget/GridView;

    .line 343
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 345
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 346
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 347
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageLayout:Landroid/view/View;

    const v2, 0x7f0b004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_picture_bottom_layout:Landroid/widget/FrameLayout;

    .line 348
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_picture_bottom_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_bottom_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_picture_bottom_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 351
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoLayout:Landroid/view/View;

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoGridView:Landroid/widget/GridView;

    .line 352
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 353
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 354
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 355
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 356
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoLayout:Landroid/view/View;

    const v2, 0x7f0b0054

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_video_bottom_layout:Landroid/widget/FrameLayout;

    .line 357
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_video_bottom_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_bottom_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_video_bottom_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicLayout:Landroid/view/View;

    const v2, 0x7f0b004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicGridView:Landroid/widget/GridView;

    .line 361
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 362
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 363
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->itemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 364
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 365
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicLayout:Landroid/view/View;

    const v2, 0x7f0b004b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_music_bottom_layout:Landroid/widget/FrameLayout;

    .line 366
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_music_bottom_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_bottom_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_music_bottom_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicLayout:Landroid/view/View;

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_shuffle_play_layout:Landroid/widget/LinearLayout;

    .line 369
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_shuffle_play_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicLayout:Landroid/view/View;

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 371
    .local v0, "shuffleImage":Landroid/widget/ImageView;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getShuffle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    :goto_0
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$4;

    invoke-direct {v1, p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->views:Ljava/util/List;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageLayout:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->views:Ljava/util/List;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoLayout:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->views:Ljava/util/List;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicLayout:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$ViewPagerAdapter;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->views:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$ViewPagerAdapter;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 435
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 436
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$ViewPageChangeListener;

    invoke-direct {v2, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$ViewPageChangeListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 437
    return-void

    .line 374
    :cond_0
    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private lastImageItemIsMark(II)Z
    .locals 3
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I

    .prologue
    .line 700
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 701
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

.method private lastMusicItemIsMark(II)Z
    .locals 3
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I

    .prologue
    .line 710
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 711
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

.method private lastVideoItemIsMark(II)Z
    .locals 3
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I

    .prologue
    .line 705
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 706
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

.method private musicBrowse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    .line 964
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->music_traceID:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 966
    return-void
.end method

.method private myAddAdapterDMS(Lorg/teleal/cling/model/meta/Device;)V
    .locals 6
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 1748
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The dms name2 is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1749
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->dmsDeviceAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 1750
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/Device;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/Device;

    .line 1751
    .local v1, "item":Lorg/teleal/cling/model/meta/Device;
    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1752
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The dms 2 return:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1770
    .end local v1    # "item":Lorg/teleal/cling/model/meta/Device;
    :goto_0
    return-void

    .line 1756
    :cond_1
    instance-of v3, p1, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v3, :cond_3

    .line 1758
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "The dms2 is local dms"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1759
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1761
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v2

    .line 1762
    .local v2, "udn":Lorg/teleal/cling/model/types/UDN;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMS(Lorg/teleal/cling/model/types/UDN;)V

    .line 1764
    .end local v2    # "udn":Lorg/teleal/cling/model/types/UDN;
    :cond_2
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->dmsDeviceAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1768
    :cond_3
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->dmsDeviceAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    invoke-virtual {v3, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private removeDMS(Lorg/teleal/cling/model/meta/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 1774
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$20;

    invoke-direct {v0, p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$20;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lorg/teleal/cling/model/meta/Device;)V

    invoke-direct {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1783
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 986
    return-void
.end method

.method private setAllItem(Ljava/util/List;)V
    .locals 4
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 1033
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v1

    .line 1034
    .local v1, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v1, :cond_0

    .line 1035
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;

    .end local v1    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-direct {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;-><init>()V

    .line 1036
    .restart local v1    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V

    .line 1038
    :cond_0
    invoke-interface {v1, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setItems(Ljava/util/List;)V

    .line 1040
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getItemAt(I)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    .line 1041
    .local v0, "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080044

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1042
    invoke-interface {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->removeItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 1043
    :cond_1
    return-void
.end method

.method private setNewMusicAdapter()V
    .locals 2

    .prologue
    .line 1890
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    .line 1891
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->setNotifyOnChange(Z)V

    .line 1892
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1894
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1896
    :cond_0
    return-void
.end method

.method private setNewPictureAdapter()V
    .locals 2

    .prologue
    .line 1872
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    .line 1873
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->setNotifyOnChange(Z)V

    .line 1874
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1876
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1878
    :cond_0
    return-void
.end method

.method private setNewVideoAdapter()V
    .locals 2

    .prologue
    .line 1881
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    .line 1882
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->setNotifyOnChange(Z)V

    .line 1883
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1885
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1887
    :cond_0
    return-void
.end method

.method private upOneLevel()Z
    .locals 4

    .prologue
    .line 1903
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressShow()V

    .line 1905
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1907
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageView:Lcom/hisilicon/multiscreen/widget/BottomLineImageView;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->getCurrentPosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rootFloor:Ljava/util/HashMap;

    const-string v1, "ALL_IMAGE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1909
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->image_traceID:Ljava/util/ArrayList;

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v2

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-interface {v0, v1, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->back(Ljava/util/List;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)Z

    move-result v0

    .line 1920
    :goto_0
    return v0

    .line 1911
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageView:Lcom/hisilicon/multiscreen/widget/BottomLineImageView;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rootFloor:Ljava/util/HashMap;

    const-string v1, "ALL_VIDEO"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1913
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->video_traceID:Ljava/util/ArrayList;

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v2

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-interface {v0, v1, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->back(Ljava/util/List;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)Z

    move-result v0

    goto :goto_0

    .line 1915
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageView:Lcom/hisilicon/multiscreen/widget/BottomLineImageView;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/BottomLineImageView;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rootFloor:Ljava/util/HashMap;

    const-string v1, "ALL_MUSIC"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1917
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->music_traceID:Ljava/util/ArrayList;

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v2

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-interface {v0, v1, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;->back(Ljava/util/List;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)Z

    move-result v0

    goto :goto_0

    .line 1920
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateGridView()V
    .locals 2

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    .line 1799
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    .line 1800
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    .line 1801
    return-void
.end method

.method private updateHeaderTitle()V
    .locals 3

    .prologue
    .line 1807
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_header_title:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1808
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    instance-of v1, v1, Lorg/teleal/cling/model/meta/RemoteDevice;

    if-eqz v1, :cond_1

    .line 1809
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 1810
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_header_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getDeviceFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1815
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_0
    :goto_0
    return-void

    .line 1812
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->rc_dms_header_title:Landroid/widget/TextView;

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updatePlaylistAndPlay(Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V
    .locals 5
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .param p2, "isLongClick"    # Z

    .prologue
    .line 989
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v2

    .local v2, "object":Ljava/lang/Object;
    move-object v3, v2

    .line 991
    check-cast v3, Lorg/teleal/cling/support/model/item/Item;

    invoke-virtual {v3}, Lorg/teleal/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 992
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->doLoadMoreImageItems()V

    .line 1030
    :goto_0
    return-void

    .line 997
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "---come into updatePlaylistAndPlay---"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 998
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 1000
    .local v0, "cDevice":Lorg/teleal/cling/model/meta/Device;
    instance-of v3, v2, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v3, :cond_1

    .line 1009
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->setAllItem(Ljava/util/List;)V

    .line 1010
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->addToPlaylistAndPlay(Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;)V

    .line 1012
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1013
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "LONGCLICK"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1014
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1015
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    instance-of v3, v2, Lorg/teleal/cling/support/model/item/AudioItem;

    if-nez v3, :cond_2

    instance-of v3, v2, Lorg/teleal/cling/support/model/item/MusicTrack;

    if-eqz v3, :cond_3

    .line 1016
    :cond_2
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->setAllItem(Ljava/util/List;)V

    .line 1017
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->addToPlaylistAndPlay(Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;)V

    .line 1019
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1020
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "LONGCLICK"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1021
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1023
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->setAllItem(Ljava/util/List;)V

    .line 1024
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->addToPlaylistAndPlay(Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;)V

    .line 1026
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1027
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "LONGCLICK"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1028
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private videoBrowse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .prologue
    .line 959
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->video_traceID:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getMaxItemPerLoad()I

    move-result v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoBrowseListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->browse(Ljava/lang/String;IILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    .line 961
    return-void
.end method


# virtual methods
.method public backTo()Z
    .locals 1

    .prologue
    .line 1899
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->upOneLevel()Z

    move-result v0

    return v0
.end method

.method public deviceBrowse(Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->deviceBrowseClear()V

    .line 801
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->deviceBrowseStart(Lorg/teleal/cling/model/meta/Device;)V

    .line 802
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1859
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->upnpListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->removeDevicesListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;)V

    .line 1860
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V

    .line 1862
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->clear()V

    .line 1863
    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    .line 1864
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->clear()V

    .line 1865
    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->videoAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    .line 1866
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->clear()V

    .line 1867
    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    .line 1868
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->getInstance()Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->clearCache()V

    .line 1869
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->isStop:Z

    .line 1819
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->removePlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V

    .line 1820
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1786
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->unlockImage()V

    .line 1789
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->updateHeaderTitle()V

    .line 1791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->isStop:Z

    .line 1792
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addPlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V

    .line 1793
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->musicGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    .line 1795
    :cond_0
    return-void
.end method

.method protected playlistItemChanged(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V
    .locals 2
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .param p2, "changeMode"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    .prologue
    .line 1832
    iget-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->isStop:Z

    if-eqz v1, :cond_1

    .line 1856
    :cond_0
    :goto_0
    return-void

    .line 1835
    :cond_1
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 1837
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-eqz v0, :cond_0

    .line 1840
    if-nez p1, :cond_2

    .line 1841
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->stop()V

    goto :goto_0

    .line 1845
    :cond_2
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/teleal/cling/support/model/item/AudioItem;

    if-eqz v1, :cond_0

    .line 1846
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$22;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$22;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V

    invoke-direct {p0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public progressDismiss()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 533
    return-void
.end method

.method public progressIsShow()Z
    .locals 1

    .prologue
    .line 561
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method public progressShow()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 538
    return-void
.end method

.method public unlockImage()V
    .locals 4

    .prologue
    .line 636
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 637
    .local v1, "start":I
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v0

    .line 638
    .local v0, "end":I
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->imageAdapter:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 641
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v2

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v2, v1, v3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->setLoadLimit(II)V

    .line 642
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->unlock()V

    .line 643
    return-void
.end method

.method public updateDMRDevice()V
    .locals 6

    .prologue
    .line 584
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMR()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    .line 585
    .local v1, "dmrDevice":Lorg/teleal/cling/model/meta/Device;
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isSTBDMR(Lorg/teleal/cling/model/meta/Device;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dmr 123 list size is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v5

    invoke-interface {v5}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/Device;

    .line 590
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isSTBDMR(Lorg/teleal/cling/model/meta/Device;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 592
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "123Find connect device!!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v2

    .line 594
    .local v2, "udn":Lorg/teleal/cling/model/types/UDN;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->stbOnline(Lorg/teleal/cling/model/types/UDN;)V

    goto :goto_0
.end method

.method public updateDMSDevice()V
    .locals 7

    .prologue
    .line 565
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 566
    .local v0, "currentDMS":Lorg/teleal/cling/model/meta/Device;
    if-eqz v0, :cond_0

    .line 568
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "The dms add currentDMS"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v2

    .line 570
    .local v2, "udn":Lorg/teleal/cling/model/types/UDN;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMS(Lorg/teleal/cling/model/types/UDN;)V

    .line 573
    .end local v2    # "udn":Lorg/teleal/cling/model/types/UDN;
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/Device;

    .line 574
    .local v1, "device":Lorg/teleal/cling/model/meta/Device;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The dms 1 device name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 575
    invoke-direct {p0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->addAdapterDMS(Lorg/teleal/cling/model/meta/Device;)V

    goto :goto_0

    .line 577
    .end local v1    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_1
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->deviceBrowse(Lorg/teleal/cling/model/meta/Device;)V

    .line 578
    return-void
.end method
