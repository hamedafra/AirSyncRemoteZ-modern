.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;
.super Ljava/lang/Object;
.source "PlayingVideoActivity.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionFail(Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0
    .param p1, "actionCallback"    # Lorg/teleal/cling/model/meta/Action;
    .param p2, "response"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "cause"    # Ljava/lang/String;

    .prologue
    .line 451
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->finish()V

    .line 457
    return-void
.end method

.method public onErrorEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    move-result-object v0

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onErrorEvent(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public onMiddleEndEvent()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$402(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;Z)Z

    .line 434
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->finish()V

    .line 440
    return-void
.end method

.method public onPaused()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$300(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$300(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    move-result-object v0

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onPaused()V

    .line 429
    return-void
.end method

.method public onPlaying()V
    .locals 3

    .prologue
    .line 410
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$400(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$402(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;Z)Z

    .line 413
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 414
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-nez v0, :cond_0

    .line 421
    .end local v0    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    :goto_0
    return-void

    .line 416
    .restart local v0    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    :cond_0
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->pause()V

    .line 418
    .end local v0    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$300(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$300(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    move-result-object v1

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onPlaying()V

    goto :goto_0
.end method

.method public onStoped()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$300(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$300(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    move-result-object v0

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onStoped()V

    .line 405
    return-void
.end method

.method public onUpdatePosition(JJ)V
    .locals 1
    .param p1, "current"    # J
    .param p3, "max"    # J

    .prologue
    .line 397
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    move-result-object v0

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onUpdatePosition(JJ)V

    .line 398
    return-void
.end method
