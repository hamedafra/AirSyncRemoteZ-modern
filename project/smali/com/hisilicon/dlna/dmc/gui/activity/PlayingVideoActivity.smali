.class public Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;
.super Landroid/app/Activity;
.source "PlayingVideoActivity.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

.field private device_not_found_layout:Landroid/widget/LinearLayout;

.field private hideRunnable:Ljava/lang/Runnable;

.field private volatile isFirstChange:Z

.field private isLongClick:Z

.field private isMiddleEnd:Z

.field private volatile isStop:Z

.field private m_content:Landroid/widget/FrameLayout;

.field private m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

.field private m_isPausing:Z

.field private m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

.field private m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

.field private m_surface:Landroid/view/SurfaceView;

.field private m_surfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private m_viewFlipper:Landroid/widget/TextView;

.field private myHandler:Landroid/os/Handler;

.field private rc_dmr_name:Landroid/widget/TextView;

.field private rc_dmr_pushing:Landroid/widget/LinearLayout;

.field private rc_playing_top:Landroid/widget/RelativeLayout;

.field private rc_push:Landroid/widget/ImageView;

.field private slideTouch:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isStop:Z

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->myHandler:Landroid/os/Handler;

    .line 68
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isLongClick:Z

    .line 69
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isFirstChange:Z

    .line 70
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isMiddleEnd:Z

    .line 199
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$4;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 225
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->slideTouch:Landroid/view/View$OnTouchListener;

    .line 270
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$6;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$6;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    .line 393
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 514
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$9;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$9;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_surfaceCallback:Landroid/view/SurfaceHolder$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isStop:Z

    return v0
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isMiddleEnd:Z

    return v0
.end method

.method static synthetic access$402(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isMiddleEnd:Z

    return p1
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isFirstChange:Z

    return v0
.end method

.method static synthetic access$502(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isFirstChange:Z

    return p1
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->resizeSurfaceView(IIII)V

    return-void
.end method

.method static synthetic access$700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->updateSurfaceView()V

    return-void
.end method

.method private resizeSurfaceView(IIII)V
    .locals 8
    .param p1, "surface_width"    # I
    .param p2, "surface_height"    # I
    .param p3, "video_width"    # I
    .param p4, "video_height"    # I

    .prologue
    .line 577
    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 579
    int-to-float v6, p3

    int-to-float v7, p1

    div-float v3, v6, v7

    .line 580
    .local v3, "scale_width":F
    int-to-float v6, p4

    int-to-float v7, p2

    div-float v2, v6, v7

    .line 582
    .local v2, "scale_height":F
    cmpl-float v6, v3, v2

    if-lez v6, :cond_1

    move v1, v3

    .line 584
    .local v1, "max_scale":F
    :goto_0
    int-to-float v6, p3

    div-float/2addr v6, v1

    float-to-int v5, v6

    .line 585
    .local v5, "target_width":I
    int-to-float v6, p4

    div-float/2addr v6, v1

    float-to-int v4, v6

    .line 587
    .local v4, "target_height":I
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 588
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x11

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 589
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_surface:Landroid/view/SurfaceView;

    invoke-virtual {v6, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "max_scale":F
    .end local v2    # "scale_height":F
    .end local v3    # "scale_width":F
    .end local v4    # "target_height":I
    .end local v5    # "target_width":I
    :cond_0
    return-void

    .restart local v2    # "scale_height":F
    .restart local v3    # "scale_width":F
    :cond_1
    move v1, v2

    .line 582
    goto :goto_0
.end method

.method private stopPlayer()V
    .locals 2

    .prologue
    .line 473
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 474
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    instance-of v1, v0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    if-eqz v1, :cond_0

    .line 475
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->stop()V

    .line 477
    :cond_0
    return-void
.end method

.method private updateSurfaceView()V
    .locals 6

    .prologue
    .line 481
    :try_start_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v1

    .line 482
    .local v1, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    instance-of v4, v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    if-eqz v4, :cond_0

    .line 483
    move-object v0, v1

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    move-object v3, v0

    .line 484
    .local v3, "localDMR":Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
    iget-boolean v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_isPausing:Z

    if-eqz v4, :cond_1

    .line 485
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->setHolder(Landroid/view/SurfaceHolder;Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;)V

    .line 486
    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->pause()V

    .line 512
    .end local v1    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    .end local v3    # "localDMR":Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
    :cond_0
    :goto_0
    return-void

    .line 488
    .restart local v1    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    .restart local v3    # "localDMR":Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
    :cond_1
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_surface:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 489
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->setHolder(Landroid/view/SurfaceHolder;Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    .end local v1    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    .end local v3    # "localDMR":Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
    :catch_0
    move-exception v2

    .line 510
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 491
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    .restart local v3    # "localDMR":Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    sput v4, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->surface_width:I

    .line 492
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    sput v4, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->surface_height:I

    .line 493
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_surface:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    new-instance v5, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$8;

    invoke-direct {v5, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$8;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->setHolder(Landroid/view/SurfaceHolder;Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private warnLayoutFlash()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->showWarnLayout()V

    .line 196
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 596
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 597
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setPlayPosition(I)V

    .line 598
    return-void
.end method

.method public hideWarnLayout()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f040008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 148
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$3;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 164
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public initializeComponents()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 82
    const v2, 0x7f0b0014

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .line 83
    const v2, 0x7f0b000e

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    .line 85
    const-string v2, "isPlayFirst"

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->getBooleanPreferences(Ljava/lang/String;)Z

    move-result v0

    .line 86
    .local v0, "isPlayFirst":Z
    if-nez v0, :cond_0

    .line 87
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->setRequestedOrientation(I)V

    .line 88
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    const v2, 0x7f0b001e

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 90
    .local v1, "rc_video_guid_layout":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f030033

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 99
    const-string v2, "isPlayFirst"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/hisilicon/dlna/dmc/utility/PrefConfig;->setBooleanPreferences(Ljava/lang/String;Z)V

    .line 102
    .end local v1    # "rc_video_guid_layout":Landroid/widget/LinearLayout;
    :cond_0
    const v2, 0x7f0b0012

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->rc_playing_top:Landroid/widget/RelativeLayout;

    .line 103
    const v2, 0x7f0b002b

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    .line 104
    const v2, 0x7f0b001c

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->rc_push:Landroid/widget/ImageView;

    .line 106
    const v2, 0x7f0b0019

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->rc_dmr_pushing:Landroid/widget/LinearLayout;

    .line 107
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->rc_dmr_pushing:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->slideTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    const v2, 0x7f0b001a

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->rc_dmr_name:Landroid/widget/TextView;

    .line 110
    const v2, 0x7f0b0018

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_surface:Landroid/view/SurfaceView;

    .line 111
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->slideTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_surface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_surfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 113
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_surface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 115
    const v2, 0x7f0b0013

    invoke-virtual {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_viewFlipper:Landroid/widget/TextView;

    .line 117
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->updateItemInfo()V

    .line 118
    return-void
.end method

.method public onBackClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->finish()V

    .line 223
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->finish()V

    .line 464
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 552
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 554
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 555
    .local v1, "surface_width":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 557
    .local v0, "surface_height":I
    sget v3, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->video_width:I

    .line 558
    .local v3, "video_width":I
    sget v2, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->video_height:I

    .line 560
    .local v2, "video_height":I
    const/4 v4, 0x1

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 562
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 563
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 571
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->resizeSurfaceView(IIII)V

    .line 573
    return-void

    .line 565
    :cond_1
    const/4 v4, 0x2

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 567
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 568
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    iput-object p0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->activity:Landroid/app/Activity;

    .line 75
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LONGCLICK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isLongClick:Z

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->initializeComponents()V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 468
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 469
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->stopPlayer()V

    .line 470
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 385
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 386
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isStop:Z

    .line 387
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_isPausing:Z

    .line 388
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->updateSurfaceView()V

    .line 389
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->removeDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V

    .line 390
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->removePlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V

    .line 391
    return-void
.end method

.method public onPushClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0b001c

    .line 168
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v1

    .line 169
    .local v1, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    instance-of v2, v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    if-eqz v2, :cond_1

    .line 171
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMR()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 172
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02007f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 176
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->updateItemInfo()V

    .line 189
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :goto_0
    return-void

    .line 180
    .restart local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->warnLayoutFlash()V

    goto :goto_0

    .line 185
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02008a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 187
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->updateItemInfo()V

    goto :goto_0
.end method

.method public onResizeClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 209
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->setRequestedOrientation(I)V

    .line 212
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->setRequestedOrientation(I)V

    .line 217
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_content:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xb4

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 375
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 376
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isStop:Z

    .line 377
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_isPausing:Z

    .line 378
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V

    .line 379
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addPlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V

    .line 380
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->updateSurfaceView()V

    .line 381
    return-void
.end method

.method public showWarnLayout()V
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 124
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 140
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public toggleItemInfo()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 537
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->rc_playing_top:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->dismissVolume()V

    .line 542
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 545
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->rc_playing_top:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateItemInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f02008a

    const v7, 0x7f0b001c

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 291
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v1

    .line 293
    .local v1, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    iget-boolean v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isLongClick:Z

    if-eqz v3, :cond_5

    .line 295
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMR()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 297
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    if-nez v0, :cond_4

    .line 299
    if-eqz v1, :cond_0

    .line 300
    invoke-interface {v1, v5}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setRunning(Z)V

    .line 301
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->stop()V

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->warnLayoutFlash()V

    .line 305
    invoke-virtual {p0, v7}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_surface:Landroid/view/SurfaceView;

    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 307
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->rc_dmr_pushing:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v2

    .line 310
    .local v2, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v2, :cond_2

    .line 371
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_1
    :goto_0
    return-void

    .line 312
    .restart local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_2
    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v3

    iput-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 313
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-eqz v3, :cond_3

    .line 314
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_viewFlipper:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :cond_3
    iput-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    goto :goto_0

    .line 323
    .end local v2    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    :cond_4
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 324
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v1

    .line 326
    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setPlayPosition(I)V

    .line 328
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v2

    .line 329
    .restart local v2    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->setItemId(Ljava/lang/String;)V

    .line 332
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    .end local v2    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    :cond_5
    if-nez v1, :cond_6

    .line 334
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3, v9}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 335
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v1

    .line 340
    :cond_6
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v2

    .line 341
    .restart local v2    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v2, :cond_1

    .line 343
    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v3

    iput-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 344
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-nez v3, :cond_7

    .line 345
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->stop()V

    goto :goto_0

    .line 349
    :cond_7
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_viewFlipper:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    instance-of v3, v1, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    if-eqz v3, :cond_8

    .line 352
    iput-boolean v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->isLongClick:Z

    .line 353
    invoke-virtual {p0, v7}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f02007f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setRunning(Z)V

    .line 355
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_surface:Landroid/view/SurfaceView;

    invoke-virtual {v3, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 356
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->rc_dmr_name:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getDMRPushName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->rc_dmr_pushing:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    :goto_1
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->updateSurfaceView()V

    .line 365
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-interface {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setURIandPlay(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V

    .line 366
    sget-boolean v3, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->firstLoad:Z

    if-eqz v3, :cond_1

    .line 367
    sput-boolean v5, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->firstLoad:Z

    .line 368
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "-----is first load pic----"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->updateItemInfo()V

    goto/16 :goto_0

    .line 359
    :cond_8
    invoke-virtual {p0, v7}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->m_surface:Landroid/view/SurfaceView;

    invoke-virtual {v3, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 361
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->rc_dmr_pushing:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
