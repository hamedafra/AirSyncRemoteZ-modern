.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$4;
.super Ljava/lang/Object;
.source "NowPlayingMusicControlView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$400(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$500(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$400(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lorg/teleal/cling/model/ModelUtil;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$302(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;Z)Z

    .line 150
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$302(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;Z)Z

    .line 136
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 137
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$400(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lorg/teleal/cling/model/ModelUtil;->toTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->seek(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setVolume(I)V

    goto :goto_0
.end method
