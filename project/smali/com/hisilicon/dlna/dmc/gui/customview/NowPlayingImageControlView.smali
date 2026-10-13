.class public Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;
.super Landroid/widget/LinearLayout;
.source "NowPlayingImageControlView.java"


# static fields
.field private static final SHOW_NEXT_IMAGE:I = 0x1

.field private static final SLIDE_MILLISECOND:I = 0x1388


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private volatile mIsSlideShowMode:Z

.field private m_adapter:Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;

.field private m_itemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private onSlideShowClick:Landroid/view/View$OnClickListener;

.field private onThumbsClick:Landroid/view/View$OnClickListener;

.field private rc_image_thumbs:Landroid/widget/Gallery;

.field private rc_imagebottom_controlview:Landroid/widget/LinearLayout;

.field private rc_playorpause:Landroid/widget/ImageView;

.field private rc_thumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->mIsSlideShowMode:Z

    .line 76
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$2;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->onSlideShowClick:Landroid/view/View$OnClickListener;

    .line 93
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$3;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->onThumbsClick:Landroid/view/View$OnClickListener;

    .line 144
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$4;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->mHandler:Landroid/os/Handler;

    .line 187
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$5;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->m_itemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 37
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->initComponents()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->mIsSlideShowMode:Z

    .line 76
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$2;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->onSlideShowClick:Landroid/view/View$OnClickListener;

    .line 93
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$3;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->onThumbsClick:Landroid/view/View$OnClickListener;

    .line 144
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$4;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->mHandler:Landroid/os/Handler;

    .line 187
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$5;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->m_itemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 42
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->initComponents()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->mIsSlideShowMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_playorpause:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Landroid/widget/Gallery;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_image_thumbs:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->hidethumbs()V

    return-void
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->showthumbs()V

    return-void
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->showNextImage()V

    return-void
.end method

.method private hidethumbs()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_imagebottom_controlview:Landroid/widget/LinearLayout;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 183
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_image_thumbs:Landroid/widget/Gallery;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->setItemList(Ljava/util/List;)V

    .line 185
    return-void
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03002f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const v0, 0x7f0b00c6

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_imagebottom_controlview:Landroid/widget/LinearLayout;

    .line 50
    const v0, 0x7f0b00c7

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_playorpause:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_playorpause:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->onSlideShowClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_thumbnail:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_thumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->onThumbsClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0b00c5

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_image_thumbs:Landroid/widget/Gallery;

    .line 57
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;

    .line 58
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_image_thumbs:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 59
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_image_thumbs:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->m_itemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_image_thumbs:Landroid/widget/Gallery;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 74
    return-void
.end method

.method private showNextImage()V
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v0

    .line 162
    .local v0, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->next()V

    .line 164
    :cond_0
    return-void
.end method

.method private showthumbs()V
    .locals 5

    .prologue
    .line 167
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_imagebottom_controlview:Landroid/widget/LinearLayout;

    const v4, 0x7f02006f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 168
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_image_thumbs:Landroid/widget/Gallery;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 170
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v2

    .line 172
    .local v2, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v2, :cond_0

    .line 173
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->IMAGE_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    invoke-interface {v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getItemsByViewMode(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;)Ljava/util/List;

    move-result-object v1

    .line 174
    .local v1, "list":Ljava/util/List;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->m_adapter:Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;

    invoke-virtual {v3, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->setItemList(Ljava/util/List;)V

    .line 176
    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItemIndex()I

    move-result v0

    .line 177
    .local v0, "currentIndex":I
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_image_thumbs:Landroid/widget/Gallery;

    invoke-virtual {v3, v0}, Landroid/widget/Gallery;->setSelection(I)V

    .line 179
    .end local v0    # "currentIndex":I
    .end local v1    # "list":Ljava/util/List;
    :cond_0
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->mIsSlideShowMode:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->stopSlideShow()V

    .line 111
    :cond_0
    return-void
.end method

.method public onGoneThumb()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->rc_image_thumbs:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->hidethumbs()V

    .line 129
    :cond_0
    return-void
.end method

.method public onTab(Z)V
    .locals 1
    .param p1, "flage"    # Z

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->onGoneThumb()V

    .line 117
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->setVisibility(I)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    if-nez p1, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startSlideShow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 133
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->mIsSlideShowMode:Z

    .line 134
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    return-void
.end method

.method public stopSlideShow()V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->mIsSlideShowMode:Z

    .line 141
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    return-void
.end method
