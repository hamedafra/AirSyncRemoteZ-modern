.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$PlayHandler;
.super Landroid/os/Handler;
.source "PlayingMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayHandler"
.end annotation


# static fields
.field public static final PLAY_NEXT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$PlayHandler;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$1;

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$PlayHandler;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 543
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 544
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 546
    :pswitch_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v0

    .line 547
    .local v0, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v0, :cond_0

    .line 548
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->next()V

    .line 549
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->setItemId(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
