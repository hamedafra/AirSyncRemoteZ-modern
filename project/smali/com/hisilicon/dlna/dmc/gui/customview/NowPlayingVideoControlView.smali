.class public Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;
.super Landroid/widget/LinearLayout;
.source "NowPlayingVideoControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;
    }
.end annotation


# static fields
.field private static final STATE_PLAYING:I = 0x0

.field private static final STATE_STOP:I = 0x2

.field private static final STATE__PAUSE:I = 0x1


# instance fields
.field private mVolumeHandler:Landroid/os/Handler;

.field private m_btn_playPause:Landroid/widget/ImageView;

.field public m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

.field private m_isSeeking:Z

.field private m_playingState:I

.field private m_sb_duration:Landroid/widget/SeekBar;

.field private m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

.field private m_tv_current:Landroid/widget/TextView;

.field private m_tv_max:Landroid/widget/TextView;

.field private myUIHandler:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;

.field private onPlayPauseClick:Landroid/view/View$OnClickListener;

.field private onSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private onVolumeClick:Landroid/view/View$OnClickListener;

.field private onVolumeSeekListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

.field private rc_video_volume_layout:Landroid/widget/LinearLayout;

.field private tv_slash:Landroid/widget/TextView;

.field private volume:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_isSeeking:Z

    .line 45
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->myUIHandler:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;

    .line 79
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->onVolumeClick:Landroid/view/View$OnClickListener;

    .line 96
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$2;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->mVolumeHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$3;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->onPlayPauseClick:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$4;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->onSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 173
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$5;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->onVolumeSeekListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    .line 196
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 49
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->initComponents()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_isSeeking:Z

    .line 45
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->myUIHandler:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;

    .line 79
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->onVolumeClick:Landroid/view/View$OnClickListener;

    .line 96
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$2;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->mVolumeHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$3;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->onPlayPauseClick:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$4;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->onSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 173
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$5;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->onVolumeSeekListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    .line 196
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 54
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->initComponents()V

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->myUIHandler:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_btn_playPause:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->rc_video_volume_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->mVolumeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .prologue
    .line 28
    iget v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_playingState:I

    return v0
.end method

.method static synthetic access$402(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_playingState:I

    return p1
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_isSeeking:Z

    return v0
.end method

.method static synthetic access$502(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_isSeeking:Z

    return p1
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_sb_duration:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_tv_current:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->tv_slash:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_tv_max:Landroid/widget/TextView;

    return-object v0
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030032

    .line 59
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    const v0, 0x7f0b00cb

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_tv_current:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0b00db

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->tv_slash:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0b00cc

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_tv_max:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0b00c7

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_btn_playPause:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_btn_playPause:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->onPlayPauseClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f0b00d2

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->volume:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->volume:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->onVolumeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f0b00dc

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->rc_video_volume_layout:Landroid/widget/LinearLayout;

    .line 72
    const v0, 0x7f0b00d3

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    .line 73
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->onVolumeSeekListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;)V

    .line 74
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_sb_duration:Landroid/widget/SeekBar;

    .line 75
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_sb_duration:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->onSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 77
    return-void
.end method


# virtual methods
.method public dismissVolume()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->rc_video_volume_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void
.end method
