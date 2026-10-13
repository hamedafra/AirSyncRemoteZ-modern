.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$7;
.super Ljava/lang/Object;
.source "PlayingMusicActivity.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;IZ)V
    .locals 0
    .param p1, "vBar"    # Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 436
    return-void
.end method

.method public onStartTrackingTouch(Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;)V
    .locals 0
    .param p1, "vBar"    # Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    .prologue
    .line 441
    return-void
.end method

.method public onStopTrackingTouch(Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;)V
    .locals 2
    .param p1, "vBar"    # Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    .prologue
    .line 445
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    .line 446
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 447
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-nez v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 449
    :cond_0
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setVolume(I)V

    goto :goto_0
.end method
