.class public Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
.super Landroid/app/Activity;
.source "PlayingImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$SwipeCallbackImpl;,
        Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPageChangeListener;,
        Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field private ItemUrl:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private cache:Lcom/hisilicon/dlna/dmc/utility/Cache;

.field private currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

.field private currentViewPagerIndex:I

.field private device_not_found_layout:Landroid/view/View;

.field private downLoad:Z

.field private hideLoading:Ljava/lang/Runnable;

.field private hideRunnable:Ljava/lang/Runnable;

.field private image_ViewPager:Landroid/support/v4/view/ViewPager;

.field private isFirst:Z

.field private isLoadingbusy:Z

.field private isLongClick:Z

.field private volatile isStop:Z

.field private mToast:Landroid/widget/Toast;

.field private m_content:Landroid/widget/FrameLayout;

.field private m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

.field private m_image:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

.field private m_loadingImageTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

.field private m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

.field private m_swipeDetector:Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;

.field private m_viewFlipper:Landroid/widget/TextView;

.field private myHandler:Landroid/os/Handler;

.field private rc_playing_top:Landroid/widget/RelativeLayout;

.field private stopLoading:Z

.field private thumbGenerator:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->isStop:Z

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->myHandler:Landroid/os/Handler;

    .line 77
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->thumbGenerator:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    .line 78
    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->cache:Lcom/hisilicon/dlna/dmc/utility/Cache;

    .line 82
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->isLoadingbusy:Z

    .line 83
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->isLongClick:Z

    .line 84
    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->mToast:Landroid/widget/Toast;

    .line 85
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->stopLoading:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->isFirst:Z

    .line 390
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$5;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->hideLoading:Ljava/lang/Runnable;

    .line 407
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$6;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$6;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 425
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$7;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$7;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    .line 635
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->downLoad:Z

    .line 636
    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->ItemUrl:Ljava/lang/String;

    .line 1000
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    return-void
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->isStop:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_swipeDetector:Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->waiting()V

    return-void
.end method

.method static synthetic access$1300(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->beginLoadPreAndNext()V

    return-void
.end method

.method static synthetic access$1400(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->loadNextItem()V

    return-void
.end method

.method static synthetic access$1500(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->beginLoadPre()V

    return-void
.end method

.method static synthetic access$1600(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->loadPreItem()V

    return-void
.end method

.method static synthetic access$1700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_content:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->ItemUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Lcom/hisilicon/dlna/dmc/utility/Cache;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->cache:Lcom/hisilicon/dlna/dmc/utility/Cache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->downLoad:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getLocalBitmap(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->downLoad:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getBitmap(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->isLoadingbusy:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->views:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;I)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getViewPagerAbsoluteView(I)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    iget v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentViewPagerIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentViewPagerIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getViewPageAbsoluteIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getPlaylistNextIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getPlaylistPreIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->device_not_found_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->cancelLoadingTask()V

    return-void
.end method

.method private beginLoadPre()V
    .locals 1

    .prologue
    .line 626
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$10;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$10;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 633
    return-void
.end method

.method private beginLoadPreAndNext()V
    .locals 1

    .prologue
    .line 604
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$9;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$9;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 623
    return-void
.end method

.method private cancelLoadingTask()V
    .locals 2

    .prologue
    .line 449
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->stopLoading:Z

    .line 450
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_loadingImageTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_loadingImageTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_loadingImageTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 452
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_loadingImageTask:Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 1069
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1086
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1087
    return-void
.end method

.method private endActivity()V
    .locals 0

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->removePlaylistListener()V

    .line 422
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->finish()V

    .line 423
    return-void
.end method

.method private getBitmap(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    .line 871
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "______Get Bitmap______"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 872
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/hisilicon/dlna/dmc/utility/Utility;->CACHE_ROOT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    .local v2, "tmpFile":Ljava/io/File;
    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->readTo(Ljava/lang/String;Ljava/io/File;)V

    .line 876
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->thumbGenerator:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getBaseWidth()I

    move-result v4

    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getBaseHeight()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->decodeFileBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 877
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 879
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->cache:Lcom/hisilicon/dlna/dmc/utility/Cache;

    invoke-virtual {v3, p1, v0}, Lcom/hisilicon/dlna/dmc/utility/Cache;->putToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 891
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 889
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 891
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 882
    :catch_0
    move-exception v1

    .line 884
    .local v1, "e":Ljava/lang/Error;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 885
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 887
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 889
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v3
.end method

.method private getLocalBitmap(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    .line 848
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 849
    .local v3, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 850
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 852
    :try_start_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->getInstance()Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    move-result-object v4

    const/16 v5, 0x2d0

    const/16 v6, 0x1e0

    invoke-virtual {v4, v3, v5, v6}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->decodeThumbBitmapForFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 858
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 859
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->cache:Lcom/hisilicon/dlna/dmc/utility/Cache;

    invoke-virtual {v4, v3, v0}, Lcom/hisilicon/dlna/dmc/utility/Cache;->putToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 867
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 863
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 864
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v1, v0

    .line 867
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getLocalBitmap(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    .line 824
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "______Get Local Bitmap______"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 825
    const/4 v0, 0x0

    .line 826
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 827
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 830
    :try_start_0
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->thumbGenerator:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getBaseWidth()I

    move-result v7

    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getBaseHeight()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->decodeFileBitmap(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 832
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 836
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->cache:Lcom/hisilicon/dlna/dmc/utility/Cache;

    invoke-virtual {v5, p1, v0}, Lcom/hisilicon/dlna/dmc/utility/Cache;->putToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/hisilicon/dlna/dmc/utility/MyException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 844
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 840
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 841
    .local v2, "e":Lcom/hisilicon/dlna/dmc/utility/MyException;
    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/utility/MyException;->printStackTrace()V

    .end local v2    # "e":Lcom/hisilicon/dlna/dmc/utility/MyException;
    :cond_0
    move-object v1, v0

    .line 844
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getPlaylistCurrentIndex()I
    .locals 3

    .prologue
    .line 249
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v1

    .line 251
    .local v1, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v1, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    .line 254
    :cond_0
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItemIndex()I

    move-result v0

    .line 256
    .local v0, "itemIndex":I
    goto :goto_0
.end method

.method private getPlaylistNextIndex()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 260
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v1

    .line 262
    .local v1, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v3

    .line 265
    :cond_1
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getSize()I

    move-result v2

    .line 266
    .local v2, "size":I
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItemIndex()I

    move-result v0

    .line 268
    .local v0, "itemIndex":I
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v2, -0x1

    if-gt v4, v5, :cond_0

    .line 271
    add-int/lit8 v3, v0, 0x1

    goto :goto_0
.end method

.method private getPlaylistPreIndex()I
    .locals 4

    .prologue
    .line 275
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v1

    .line 277
    .local v1, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v1, :cond_0

    .line 278
    const/4 v3, 0x0

    .line 286
    :goto_0
    return v3

    .line 280
    :cond_0
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getSize()I

    move-result v2

    .line 281
    .local v2, "size":I
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItemIndex()I

    move-result v0

    .line 283
    .local v0, "itemIndex":I
    add-int/lit8 v3, v0, -0x1

    if-gez v3, :cond_1

    .line 284
    add-int/lit8 v3, v2, -0x1

    goto :goto_0

    .line 286
    :cond_1
    add-int/lit8 v3, v0, -0x1

    goto :goto_0
.end method

.method private getViewPageAbsoluteIndex(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private getViewPagerAbsoluteView(I)Landroid/widget/ImageView;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getViewPageAbsoluteIndex(I)I

    move-result v0

    .line 241
    .local v0, "absoluteIndex":I
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->views:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    return-object v1
.end method

.method private loadImage(Landroid/widget/ImageView;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    const/4 v2, 0x1

    .line 639
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-----------Come into load image-----------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 640
    iput-boolean v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->isLoadingbusy:Z

    .line 642
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->cancelLoadingTask()V

    .line 643
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_loadingImageTask:Landroid/os/AsyncTask;

    .line 820
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_loadingImageTask:Landroid/os/AsyncTask;

    new-array v1, v2, [Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 821
    return-void
.end method

.method private loadNextItem()V
    .locals 4

    .prologue
    .line 290
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v2

    .line 291
    .local v2, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v2, :cond_0

    .line 299
    :goto_0
    return-void

    .line 294
    :cond_0
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentViewPagerIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getViewPagerAbsoluteView(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 296
    .local v1, "nextView":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getPlaylistNextIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getItemAt(I)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    .line 298
    .local v0, "nextItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-direct {p0, v1, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->loadImage(Landroid/widget/ImageView;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V

    goto :goto_0
.end method

.method private loadPreItem()V
    .locals 4

    .prologue
    .line 302
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v0

    .line 303
    .local v0, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 306
    :cond_0
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentViewPagerIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getViewPagerAbsoluteView(I)Landroid/widget/ImageView;

    move-result-object v1

    .line 308
    .local v1, "preView":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getPlaylistPreIndex()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getItemAt(I)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v2

    .line 310
    .local v2, "prevItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-direct {p0, v1, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->loadImage(Landroid/widget/ImageView;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V

    goto :goto_0
.end method

.method private readTo(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 924
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->stopLoading:Z

    .line 926
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getResponseStr(Ljava/lang/String;Ljava/io/File;)V

    .line 927
    iget-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->stopLoading:Z

    if-eqz v1, :cond_0

    .line 928
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "stopLoading this image"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 939
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private stopPlayer()V
    .locals 2

    .prologue
    .line 1090
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 1091
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-eqz v0, :cond_0

    .line 1092
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->stop()V

    .line 1094
    :cond_0
    return-void
.end method

.method private waiting()V
    .locals 4

    .prologue
    .line 594
    :goto_0
    iget-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->isLoadingbusy:Z

    if-eqz v1, :cond_0

    .line 596
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 601
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method private waitingLoadPreAndNext()V
    .locals 2

    .prologue
    .line 579
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$8;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$8;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 589
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 591
    return-void
.end method

.method private warnLayoutFlash()V
    .locals 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->device_not_found_layout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->showWarnLayout()V

    .line 404
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public addPlaylistListener()V
    .locals 2

    .prologue
    .line 1050
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addPlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V

    .line 1051
    return-void
.end method

.method public doNext()V
    .locals 2

    .prologue
    .line 459
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v0

    .line 460
    .local v0, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->next()V

    .line 462
    :cond_0
    return-void
.end method

.method public doPrev()V
    .locals 2

    .prologue
    .line 465
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v0

    .line 466
    .local v0, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->previous()V

    .line 468
    :cond_0
    return-void
.end method

.method public getBytes(Ljava/io/InputStream;)[B
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 895
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 896
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 897
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 898
    .local v2, "len":I
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 899
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 901
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 902
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 903
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 904
    .local v3, "result":[B
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 905
    return-object v3
.end method

.method public getResponseStr(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 910
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 911
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 912
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 913
    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 916
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->readStream(Ljava/io/InputStream;Ljava/io/File;)V

    .line 919
    return-void
.end method

.method public hideWarnLayout()V
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->device_not_found_layout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f040008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 341
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$4;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 357
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->device_not_found_layout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public initializeComponents()V
    .locals 7

    .prologue
    const v6, 0x7f030037

    const/4 v5, 0x0

    .line 101
    const v3, 0x7f0b0014

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    iput-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    .line 102
    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;

    new-instance v4, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$SwipeCallbackImpl;

    invoke-direct {v4, p0, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$SwipeCallbackImpl;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$1;)V

    invoke-direct {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;-><init>(Lcom/hisilicon/dlna/dmc/processor/interfaces/SwipeCallback;)V

    iput-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_swipeDetector:Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;

    .line 104
    const v3, 0x7f0b000e

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_content:Landroid/widget/FrameLayout;

    .line 105
    const v3, 0x7f0b0012

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->rc_playing_top:Landroid/widget/RelativeLayout;

    .line 106
    const v3, 0x7f0b002b

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->device_not_found_layout:Landroid/view/View;

    .line 108
    const v3, 0x7f0b000f

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iput-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_image:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    .line 109
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_image:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->setDrawingCacheEnabled(Z)V

    .line 110
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_image:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->setMaxZoom(F)V

    .line 111
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_image:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_swipeDetector:Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_image:Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;

    new-instance v4, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$1;

    invoke-direct {v4, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/TouchImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->views:Ljava/util/List;

    .line 121
    const v3, 0x7f0b0010

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->image_ViewPager:Landroid/support/v4/view/ViewPager;

    .line 126
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/MyImageView;

    .line 127
    .local v0, "view1":Lcom/hisilicon/dlna/dmc/gui/browse/files/MyImageView;
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/MyImageView;

    .line 128
    .local v1, "view2":Lcom/hisilicon/dlna/dmc/gui/browse/files/MyImageView;
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/hisilicon/dlna/dmc/gui/browse/files/MyImageView;

    .line 129
    .local v2, "view3":Lcom/hisilicon/dlna/dmc/gui/browse/files/MyImageView;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->views:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->views:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->views:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getPlaylistCurrentIndex()I

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentViewPagerIndex:I

    .line 135
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->image_ViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPagerAdapter;

    invoke-direct {v4, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPagerAdapter;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 136
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->image_ViewPager:Landroid/support/v4/view/ViewPager;

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentViewPagerIndex:I

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 137
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->image_ViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPageChangeListener;

    invoke-direct {v4, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPageChangeListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 138
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->image_ViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;

    invoke-direct {v4, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    const v3, 0x7f0b0013

    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_viewFlipper:Landroid/widget/TextView;

    .line 168
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->updateItemInfo()V

    .line 169
    return-void
.end method

.method public onBackClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->endActivity()V

    .line 418
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1055
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->endActivity()V

    .line 1056
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    iput-object p0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->activity:Landroid/app/Activity;

    .line 91
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LONGCLICK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->isLongClick:Z

    .line 92
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->thumbGenerator:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->restore()V

    .line 93
    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->mToast:Landroid/widget/Toast;

    .line 94
    new-instance v0, Lcom/hisilicon/dlna/dmc/utility/Cache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/utility/Cache;-><init>(I)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->cache:Lcom/hisilicon/dlna/dmc/utility/Cache;

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->initializeComponents()V

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1060
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1061
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->destroy()V

    .line 1063
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->onDestroy()V

    .line 1065
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->stopPlayer()V

    .line 1066
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 994
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 995
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->isStop:Z

    .line 996
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->removePlaylistListener()V

    .line 997
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->removeDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V

    .line 998
    return-void
.end method

.method public onPushClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x3e8

    const v5, 0x7f0b001c

    const v4, 0x7f0b0011

    const/4 v3, 0x0

    .line 361
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v1

    .line 363
    .local v1, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    instance-of v2, v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    if-eqz v2, :cond_1

    .line 365
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMR()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 366
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    if-eqz v0, :cond_0

    .line 368
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 369
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 370
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->updateItemInfo()V

    .line 371
    invoke-virtual {p0, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02007f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->myHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->hideLoading:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :goto_0
    return-void

    .line 376
    .restart local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->warnLayoutFlash()V

    goto :goto_0

    .line 381
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_1
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 382
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 383
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->updateItemInfo()V

    .line 384
    invoke-virtual {p0, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02008a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->myHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->hideLoading:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 986
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->isStop:Z

    .line 988
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->addPlaylistListener()V

    .line 989
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V

    .line 990
    return-void
.end method

.method public readStream(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 10
    .param p1, "inputstream"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 943
    if-nez p1, :cond_0

    .line 944
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "stream is null"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 945
    :cond_0
    const/4 v3, 0x0

    .line 946
    .local v3, "inputBuffer":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 948
    .local v6, "outputBuffer":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .local v4, "inputBuffer":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 951
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 952
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 957
    :goto_0
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 958
    .end local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .local v7, "outputBuffer":Ljava/io/BufferedOutputStream;
    const/high16 v8, 0x80000

    :try_start_2
    new-array v0, v8, [B

    .line 960
    .local v0, "arrayOfByte":[B
    const/4 v5, -0x1

    .line 961
    .local v5, "len":I
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_6

    .line 962
    iget-boolean v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->stopLoading:Z

    if-eqz v8, :cond_5

    .line 963
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "stopLoading this image"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 969
    .end local v0    # "arrayOfByte":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 970
    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    :goto_2
    :try_start_3
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 975
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v6, :cond_1

    .line 976
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 977
    :cond_1
    if-eqz v3, :cond_2

    .line 978
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 979
    :cond_2
    if-eqz p1, :cond_3

    .line 980
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v8

    .line 954
    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    :cond_4
    :try_start_4
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 969
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 965
    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .end local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v0    # "arrayOfByte":[B
    .restart local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    :cond_5
    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v7, v0, v8, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 971
    .end local v0    # "arrayOfByte":[B
    .end local v5    # "len":I
    :catch_2
    move-exception v1

    move-object v6, v7

    .end local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 972
    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .local v1, "err":Ljava/lang/Error;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    :goto_4
    :try_start_6
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 973
    new-instance v8, Ljava/lang/Error;

    invoke-direct {v8, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 967
    .end local v1    # "err":Ljava/lang/Error;
    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .end local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v0    # "arrayOfByte":[B
    .restart local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v5    # "len":I
    .restart local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    :cond_6
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 975
    if-eqz v7, :cond_7

    .line 976
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 977
    :cond_7
    if-eqz v4, :cond_8

    .line 978
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 979
    :cond_8
    if-eqz p1, :cond_9

    .line 980
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 982
    :cond_9
    return-void

    .line 975
    .end local v0    # "arrayOfByte":[B
    .end local v5    # "len":I
    .end local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .end local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "outputBuffer":Ljava/io/BufferedOutputStream;
    .restart local v6    # "outputBuffer":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 971
    :catch_3
    move-exception v1

    goto :goto_4

    .end local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "inputBuffer":Ljava/io/BufferedInputStream;
    .restart local v3    # "inputBuffer":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 969
    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method public removePlaylistListener()V
    .locals 2

    .prologue
    .line 1046
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->removePlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V

    .line 1047
    return-void
.end method

.method public showWarnLayout()V
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->device_not_found_layout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 317
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$3;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 333
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->device_not_found_layout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public toggleItemInfo()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 1097
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->rc_playing_top:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-----------show to gone-----------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->rc_playing_top:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1100
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1108
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-----------gone to show-----------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1103
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->downLoad:Z

    if-nez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->rc_playing_top:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1105
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateItemInfo()V
    .locals 13

    .prologue
    const v12, 0x7f0b0011

    const v11, 0x7f02008a

    const v10, 0x7f0b001c

    const/4 v9, 0x0

    .line 471
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v6

    invoke-interface {v6}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v1

    .line 473
    .local v1, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    iget-boolean v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->isLongClick:Z

    if-eqz v6, :cond_5

    .line 475
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "--come into picture long click--"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 476
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v6

    invoke-interface {v6}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMR()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 478
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    if-nez v0, :cond_4

    .line 480
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "---the device is null---"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 481
    if-eqz v1, :cond_0

    .line 483
    invoke-interface {v1, v9}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setRunning(Z)V

    .line 484
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->stop()V

    .line 487
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->warnLayoutFlash()V

    .line 489
    invoke-virtual {p0, v10}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 490
    .local v2, "image":Landroid/widget/ImageView;
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 492
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v6

    invoke-interface {v6}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v5

    .line 493
    .local v5, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v5, :cond_2

    .line 575
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    .end local v2    # "image":Landroid/widget/ImageView;
    :cond_1
    :goto_0
    return-void

    .line 495
    .restart local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    .restart local v2    # "image":Landroid/widget/ImageView;
    :cond_2
    invoke-interface {v5}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v6

    iput-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 496
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-nez v6, :cond_3

    .line 497
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->stop()V

    goto :goto_0

    .line 500
    :cond_3
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_viewFlipper:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v7}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    invoke-interface {v5}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItemIndex()I

    move-result v3

    .line 503
    .local v3, "itemIndex":I
    invoke-interface {v5}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getSize()I

    move-result v4

    .line 504
    .local v4, "maxSize":I
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_viewFlipper:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentViewPagerIndex:I

    invoke-direct {p0, v6}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getViewPagerAbsoluteView(I)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-direct {p0, v6, v7}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->loadImage(Landroid/widget/ImageView;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V

    goto :goto_0

    .line 515
    .end local v2    # "image":Landroid/widget/ImageView;
    .end local v3    # "itemIndex":I
    .end local v4    # "maxSize":I
    .end local v5    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    :cond_4
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "---the device is not null---"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v6

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v7

    invoke-virtual {v7}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 517
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v6

    invoke-interface {v6}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v1

    .line 521
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_5
    if-nez v1, :cond_6

    .line 523
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "The dmrProcessor is null!!"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 525
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v6

    invoke-interface {v6}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v1

    .line 530
    :cond_6
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v6

    invoke-interface {v6}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v5

    .line 531
    .restart local v5    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v5, :cond_1

    .line 533
    invoke-interface {v5}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v6

    iput-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 534
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-nez v6, :cond_7

    .line 535
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->stop()V

    goto/16 :goto_0

    .line 538
    :cond_7
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_viewFlipper:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v7}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    invoke-interface {v5}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItemIndex()I

    move-result v3

    .line 541
    .restart local v3    # "itemIndex":I
    invoke-interface {v5}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getSize()I

    move-result v4

    .line 542
    .restart local v4    # "maxSize":I
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_viewFlipper:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    instance-of v6, v1, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    if-eqz v6, :cond_9

    .line 546
    iput-boolean v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->isLongClick:Z

    .line 547
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "remote DMR"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 548
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setRunning(Z)V

    .line 549
    invoke-virtual {p0, v10}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 550
    .restart local v2    # "image":Landroid/widget/ImageView;
    const v6, 0x7f02007f

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 558
    :goto_1
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-interface {v1, v6}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setURIandPlay(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V

    .line 560
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->m_loadingImageTask:Landroid/os/AsyncTask;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->ItemUrl:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 562
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->ItemUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v7}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 563
    iget v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentViewPagerIndex:I

    invoke-direct {p0, v6}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getViewPagerAbsoluteView(I)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-direct {p0, v6, v7}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->loadImage(Landroid/widget/ImageView;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V

    .line 568
    :cond_8
    :goto_2
    sget-boolean v6, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->firstLoad:Z

    if-eqz v6, :cond_1

    .line 569
    sput-boolean v9, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->firstLoad:Z

    .line 570
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "-----is first load pic----"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->updateItemInfo()V

    goto/16 :goto_0

    .line 554
    .end local v2    # "image":Landroid/widget/ImageView;
    :cond_9
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "local DMR"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0, v10}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 556
    .restart local v2    # "image":Landroid/widget/ImageView;
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 565
    :cond_a
    iget v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentViewPagerIndex:I

    invoke-direct {p0, v6}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->getViewPagerAbsoluteView(I)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-direct {p0, v6, v7}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->loadImage(Landroid/widget/ImageView;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V

    goto :goto_2
.end method
