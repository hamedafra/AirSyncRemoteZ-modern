.class public Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;
.super Landroid/app/Activity;
.source "PlayingMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$PlayHandler;
    }
.end annotation


# static fields
.field private static final STATE_PAUSE:I = 0x1

.field private static final STATE_PLAYING:I = 0x0

.field private static final STATE_STOP:I = 0x2


# instance fields
.field private activity:Landroid/app/Activity;

.field private currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

.field private device_not_found_layout:Landroid/widget/LinearLayout;

.field private hideRunnable:Ljava/lang/Runnable;

.field private isLongClick:Z

.field private isMiddleEnd:Z

.field private volatile isStop:Z

.field private mVolumeHandler:Landroid/os/Handler;

.field private m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

.field private m_playingState:I

.field private m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

.field private m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

.field private m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

.field private m_viewFlipper:Landroid/widget/TextView;

.field private myHandler:Landroid/os/Handler;

.field private myPlayHandler:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$PlayHandler;

.field private onSeekListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

.field private rc_album_art_default:Landroid/widget/ImageView;

.field private rc_album_art_default_layout:Landroid/widget/LinearLayout;

.field private rc_dmr_name:Landroid/widget/TextView;

.field private rc_dmr_pushing:Landroid/widget/LinearLayout;

.field private rc_music_volume:Landroid/widget/LinearLayout;

.field private rc_playing_top:Landroid/widget/RelativeLayout;

.field private rc_singer:Landroid/widget/TextView;

.field private shuffleClick:Landroid/view/View$OnClickListener;

.field private shuffleImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->isStop:Z

    .line 72
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$PlayHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$PlayHandler;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$1;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->myPlayHandler:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$PlayHandler;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->myHandler:Landroid/os/Handler;

    .line 81
    iput-boolean v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->isLongClick:Z

    .line 82
    iput-boolean v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->isMiddleEnd:Z

    .line 211
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$3;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->hideRunnable:Ljava/lang/Runnable;

    .line 224
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$4;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->shuffleClick:Landroid/view/View$OnClickListener;

    .line 241
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$5;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    .line 411
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$6;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$6;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->mVolumeHandler:Landroid/os/Handler;

    .line 430
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$7;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$7;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->onSeekListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    .line 469
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    return-void
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->shuffleImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->isStop:Z

    return v0
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_music_volume:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    return-object v0
.end method

.method static synthetic access$800(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->isMiddleEnd:Z

    return v0
.end method

.method static synthetic access$802(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->isMiddleEnd:Z

    return p1
.end method

.method static synthetic access$900(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$PlayHandler;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->myPlayHandler:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$PlayHandler;

    return-object v0
.end method

.method private addItemToPlaylist()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistManager;->insertPlaylistItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Z

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v1, "PLAYLIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    return-void
.end method

.method private warnLayoutFlash()V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->hideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->showWarnLayout()V

    .line 208
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public hideWarnLayout()V
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f040008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 158
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$2;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 174
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public initializeComponents()V
    .locals 2

    .prologue
    .line 95
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    .line 96
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_playing_top:Landroid/widget/RelativeLayout;

    .line 97
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    .line 98
    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_viewFlipper:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_album_art_default_layout:Landroid/widget/LinearLayout;

    .line 101
    const v0, 0x7f0b00d7

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_album_art_default:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f0b00d5

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_singer:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_dmr_pushing:Landroid/widget/LinearLayout;

    .line 104
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_dmr_name:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0b00d1

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_music_volume:Landroid/widget/LinearLayout;

    .line 110
    const v0, 0x7f0b00d3

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    .line 111
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->onSeekListener:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setOnSeekBarChangeListener(Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_playing_top:Landroid/widget/RelativeLayout;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 114
    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->shuffleImage:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->shuffleImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->shuffleClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getShuffle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->shuffleImage:Landroid/widget/ImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    :goto_0
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->updateItemInfo()V

    .line 126
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->shuffleImage:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onBackClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->finish()V

    .line 222
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->finish()V

    .line 561
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    iput-object p0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->activity:Landroid/app/Activity;

    .line 87
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LONGCLICK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->isLongClick:Z

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->initializeComponents()V

    .line 92
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 463
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->isStop:Z

    .line 465
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->removeDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V

    .line 466
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->removePlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V

    .line 467
    return-void
.end method

.method public onPushClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0b001c

    .line 178
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v1

    .line 180
    .local v1, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    instance-of v2, v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    if-eqz v2, :cond_1

    .line 182
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMR()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 184
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020082

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 188
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->updateItemInfo()V

    .line 201
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :goto_0
    return-void

    .line 192
    .restart local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->warnLayoutFlash()V

    goto :goto_0

    .line 197
    .end local v0    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020085

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 199
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->updateItemInfo()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 455
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->isStop:Z

    .line 457
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V

    .line 458
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_playlistListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addPlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V

    .line 459
    return-void
.end method

.method public onVolumeClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 395
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_music_volume:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setVisibility(I)V

    .line 409
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    .line 400
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 401
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-eqz v0, :cond_1

    .line 402
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->getMaxVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setMax(I)V

    .line 403
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->getVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setProgress(I)V

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_music_volume:Landroid/widget/LinearLayout;

    const v2, 0x7f0200a8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 406
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setVisibility(I)V

    .line 407
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->mVolumeHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public showWarnLayout()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->activity:Landroid/app/Activity;

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 133
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 149
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->device_not_found_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public toggleItemInfo()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 564
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_playing_top:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_rendererControl:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_playing_top:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateItemInfo()V
    .locals 12

    .prologue
    .line 261
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "---updateItemInfo---"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v9

    invoke-interface {v9}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v4

    .line 265
    .local v4, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    iget-boolean v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->isLongClick:Z

    if-eqz v9, :cond_5

    .line 267
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "-----Long click-----"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v9

    invoke-interface {v9}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMR()Lorg/teleal/cling/model/meta/Device;

    move-result-object v3

    .line 270
    .local v3, "device":Lorg/teleal/cling/model/meta/Device;
    if-nez v3, :cond_4

    .line 272
    if-eqz v4, :cond_0

    .line 273
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setRunning(Z)V

    .line 274
    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->stop()V

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->warnLayoutFlash()V

    .line 278
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_dmr_pushing:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_album_art_default_layout:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_singer:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    const v9, 0x7f0b001c

    invoke-virtual {p0, v9}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f020085

    .line 283
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v9

    invoke-interface {v9}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v7

    .line 287
    .local v7, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v7, :cond_2

    .line 387
    .end local v3    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_1
    :goto_0
    return-void

    .line 289
    .restart local v3    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_2
    invoke-interface {v7}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v9

    iput-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 290
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-eqz v9, :cond_3

    .line 291
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_viewFlipper:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v10}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_3
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    goto :goto_0

    .line 300
    .end local v7    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    :cond_4
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v9

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v10

    invoke-virtual {v10}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 301
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v9

    invoke-interface {v9}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v4

    .line 303
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setPlayPosition(I)V

    .line 305
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v9

    invoke-interface {v9}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v7

    .line 306
    .restart local v7    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-interface {v7}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->setItemId(Ljava/lang/String;)V

    .line 309
    .end local v3    # "device":Lorg/teleal/cling/model/meta/Device;
    .end local v7    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    :cond_5
    if-nez v4, :cond_6

    .line 311
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V

    .line 312
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v9

    invoke-interface {v9}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v4

    .line 317
    :cond_6
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v9

    .line 318
    invoke-interface {v9}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v7

    .line 319
    .restart local v7    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v7, :cond_1

    .line 321
    invoke-interface {v7}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v9

    iput-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 322
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-nez v9, :cond_7

    .line 323
    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->stop()V

    goto :goto_0

    .line 327
    :cond_7
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_viewFlipper:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v10}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->getMaxVolume()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setMax(I)V

    .line 329
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->m_sb_volume:Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->getVolume()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setProgress(I)V

    .line 331
    instance-of v9, v4, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    if-eqz v9, :cond_9

    .line 332
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "--------remot--------"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->isLongClick:Z

    .line 334
    const/4 v9, 0x1

    invoke-interface {v4, v9}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setRunning(Z)V

    .line 336
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_dmr_name:Landroid/widget/TextView;

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getDMRPushName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_dmr_pushing:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_album_art_default_layout:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_singer:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    const v9, 0x7f0b001c

    invoke-virtual {p0, v9}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f020082

    .line 342
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    invoke-interface {v7}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->setItemId(Ljava/lang/String;)V

    .line 377
    :cond_8
    :goto_1
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The title is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v11}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-interface {v4, v9}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setURIandPlay(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V

    .line 381
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->addItemToPlaylist()V

    .line 382
    sget-boolean v9, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->firstLoad:Z

    if-eqz v9, :cond_1

    .line 383
    const/4 v9, 0x0

    sput-boolean v9, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->firstLoad:Z

    .line 384
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "-----is first load pic----"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->updateItemInfo()V

    goto/16 :goto_0

    .line 346
    :cond_9
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "--------local--------"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_dmr_pushing:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_album_art_default_layout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 349
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_singer:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    const v9, 0x7f0b001c

    invoke-virtual {p0, v9}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f020085

    .line 351
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_album_art_default:Landroid/widget/ImageView;

    const v10, 0x7f020067

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v9}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v5

    .line 356
    .local v5, "object":Ljava/lang/Object;
    instance-of v9, v5, Lorg/teleal/cling/support/model/item/AudioItem;

    if-eqz v9, :cond_8

    move-object v0, v5

    .line 357
    check-cast v0, Lorg/teleal/cling/support/model/item/AudioItem;

    .line 358
    .local v0, "audio":Lorg/teleal/cling/support/model/item/AudioItem;
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_singer:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/item/AudioItem;->getCreator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    const-class v9, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    .line 361
    invoke-virtual {v0, v9}, Lorg/teleal/cling/support/model/item/AudioItem;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URI;

    .line 362
    .local v8, "uri":Ljava/net/URI;
    if-eqz v8, :cond_8

    .line 363
    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    .line 364
    .local v6, "objectUrl":Ljava/lang/String;
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_album_art_default:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 365
    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_album_art_default:Landroid/widget/ImageView;

    invoke-direct {v2, v9}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 367
    .local v2, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v9

    .line 368
    invoke-virtual {v9, v6, v2}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnBitMap(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 370
    .local v1, "cachedImage":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_8

    .line 371
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->rc_album_art_default:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1
.end method
