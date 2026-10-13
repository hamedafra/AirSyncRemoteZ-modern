.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;
.super Ljava/lang/Object;
.source "NowPlayingMusicControlView.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;


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
    .line 159
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

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
    .line 241
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public onErrorEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->refreshDevicesList()V

    .line 228
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$5;

    invoke-direct {v1, p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$5;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method public onMiddleEndEvent()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onPaused()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$002(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;I)I

    .line 209
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$4;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$4;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method public onPlaying()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$002(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;I)I

    .line 196
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$3;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public onStoped()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$002(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;I)I

    .line 183
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$2;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method public onUpdatePosition(JJ)V
    .locals 9
    .param p1, "current"    # J
    .param p3, "max"    # J

    .prologue
    .line 163
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$300(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-static {p1, p2}, Lorg/teleal/cling/model/ModelUtil;->toTimeString(J)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "currentText":Ljava/lang/String;
    invoke-static {p3, p4}, Lorg/teleal/cling/model/ModelUtil;->toTimeString(J)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "maxText":Ljava/lang/String;
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/Activity;

    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;

    move-object v1, p0

    move-wide v4, p3

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
