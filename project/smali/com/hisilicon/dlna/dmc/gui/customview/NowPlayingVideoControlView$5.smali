.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$5;
.super Ljava/lang/Object;
.source "NowPlayingVideoControlView.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/widget/VerticalSeekBar$OnVerticalSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

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
    .line 179
    return-void
.end method

.method public onStartTrackingTouch(Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;)V
    .locals 0
    .param p1, "vBar"    # Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    .prologue
    .line 184
    return-void
.end method

.method public onStopTrackingTouch(Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;)V
    .locals 2
    .param p1, "vBar"    # Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    .prologue
    .line 188
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    .line 189
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 190
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setVolume(I)V

    goto :goto_0
.end method
