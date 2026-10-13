.class public Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;
.super Landroid/widget/LinearLayout;
.source "NowPlayingMusicControlView.java"


# static fields
.field private static final STATE_PAUSE:I = 0x1

.field private static final STATE_PLAYING:I = 0x0

.field private static final STATE_STOP:I = 0x2

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private m_btn_next:Landroid/widget/ImageView;

.field private m_btn_playPause:Landroid/widget/ImageView;

.field private m_btn_prev:Landroid/widget/ImageView;

.field public m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

.field private m_isSeeking:Z

.field private m_ll_seekControl:Landroid/widget/LinearLayout;

.field private m_playingState:I

.field private m_sb_duration:Landroid/widget/SeekBar;

.field private m_tv_current:Landroid/widget/TextView;

.field private m_tv_max:Landroid/widget/TextView;

.field private onNextClick:Landroid/view/View$OnClickListener;

.field private onPlayPauseClick:Landroid/view/View$OnClickListener;

.field private onPrevClick:Landroid/view/View$OnClickListener;

.field private onSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_isSeeking:Z

    .line 82
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->onPlayPauseClick:Landroid/view/View$OnClickListener;

    .line 103
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$2;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->onNextClick:Landroid/view/View$OnClickListener;

    .line 117
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$3;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->onPrevClick:Landroid/view/View$OnClickListener;

    .line 131
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$4;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->onSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 159
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 44
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->initComponents()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_isSeeking:Z

    .line 82
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->onPlayPauseClick:Landroid/view/View$OnClickListener;

    .line 103
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$2;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->onNextClick:Landroid/view/View$OnClickListener;

    .line 117
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$3;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->onPrevClick:Landroid/view/View$OnClickListener;

    .line 131
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$4;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->onSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 159
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 49
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->initComponents()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)I
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    .prologue
    .line 27
    iget v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_playingState:I

    return v0
.end method

.method static synthetic access$002(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_playingState:I

    return p1
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->doNext()V

    return-void
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->doPrev()V

    return-void
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_isSeeking:Z

    return v0
.end method

.method static synthetic access$302(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_isSeeking:Z

    return p1
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_sb_duration:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_tv_current:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_tv_max:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_btn_playPause:Landroid/widget/ImageView;

    return-object v0
.end method

.method private doNext()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v0

    .line 113
    .local v0, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->next()V

    .line 115
    :cond_0
    return-void
.end method

.method private doPrev()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v0

    .line 127
    .local v0, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->previous()V

    .line 129
    :cond_0
    return-void
.end method

.method private initComponents()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v6, 0x7f030030

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    const v5, 0x7f0b00cb

    invoke-virtual {p0, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_tv_current:Landroid/widget/TextView;

    .line 56
    const v5, 0x7f0b00cc

    invoke-virtual {p0, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_tv_max:Landroid/widget/TextView;

    .line 58
    const v5, 0x7f0b00cf

    invoke-virtual {p0, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_btn_prev:Landroid/widget/ImageView;

    .line 59
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_btn_prev:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->onPrevClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v5, 0x7f0b00c7

    invoke-virtual {p0, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_btn_playPause:Landroid/widget/ImageView;

    .line 61
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_btn_playPause:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->onPlayPauseClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v5, 0x7f0b00d0

    invoke-virtual {p0, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_btn_next:Landroid/widget/ImageView;

    .line 63
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_btn_next:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->onNextClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v5, 0x7f0b00cd

    invoke-virtual {p0, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 66
    .local v3, "rc_music_bottom_layout":Landroid/widget/LinearLayout;
    const/16 v5, 0x3c

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getWidthScaleWithBaseScreen(I)F

    move-result v5

    float-to-int v2, v5

    .line 67
    .local v2, "padding":I
    invoke-virtual {v3, v2, v7, v2, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 69
    const v5, 0x7f0b00ce

    invoke-virtual {p0, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 70
    .local v4, "rc_music_button_line":Landroid/widget/ImageView;
    const/16 v5, 0x32

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getWidthScaleWithBaseScreen(I)F

    move-result v5

    float-to-int v1, v5

    .line 71
    .local v1, "margin":I
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 73
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 74
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const v5, 0x7f0b00ca

    invoke-virtual {p0, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_sb_duration:Landroid/widget/SeekBar;

    .line 77
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_sb_duration:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->onSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 79
    const v5, 0x7f0b00c9

    invoke-virtual {p0, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_ll_seekControl:Landroid/widget/LinearLayout;

    .line 80
    return-void
.end method
