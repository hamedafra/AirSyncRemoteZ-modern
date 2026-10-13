.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;
.super Ljava/lang/Object;
.source "PlayingMusicActivity.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;


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
    .line 469
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

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
    .line 527
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 532
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----music completed----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$900(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$PlayHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$PlayHandler;->sendEmptyMessage(I)Z

    .line 534
    return-void
.end method

.method public onErrorEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$600(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    move-result-object v0

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onErrorEvent(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public onMiddleEndEvent()V
    .locals 2

    .prologue
    .line 508
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "come into onMiddleEndEvent"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public onPaused()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$600(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    move-result-object v0

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onPaused()V

    .line 503
    return-void
.end method

.method public onPlaying()V
    .locals 3

    .prologue
    .line 485
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$802(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;Z)Z

    .line 488
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 489
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-nez v0, :cond_0

    .line 496
    .end local v0    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    :goto_0
    return-void

    .line 491
    .restart local v0    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    :cond_0
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->pause()V

    .line 493
    .end local v0    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 494
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 495
    :cond_2
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$600(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    move-result-object v1

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onPlaying()V

    goto :goto_0
.end method

.method public onStoped()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$600(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    move-result-object v0

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onStoped()V

    .line 481
    return-void
.end method

.method public onUpdatePosition(JJ)V
    .locals 1
    .param p1, "current"    # J
    .param p3, "max"    # J

    .prologue
    .line 473
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$600(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    move-result-object v0

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->m_dmrListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onUpdatePosition(JJ)V

    .line 474
    return-void
.end method
