.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;
.super Ljava/lang/Object;
.source "NowPlayingVideoControlView.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;


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
    .line 196
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

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
    .line 299
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public onErrorEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->refreshDevicesList()V

    .line 286
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$2;

    invoke-direct {v1, p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method

.method public onMiddleEndEvent()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public onPaused()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 262
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$402(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;I)I

    .line 263
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;->sendEmptyMessage(I)Z

    .line 275
    return-void
.end method

.method public onPlaying()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$402(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;I)I

    .line 246
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;->sendEmptyMessage(I)Z

    .line 258
    return-void
.end method

.method public onStoped()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 228
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$402(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;I)I

    .line 229
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;->sendEmptyMessage(I)Z

    .line 241
    return-void
.end method

.method public onUpdatePosition(JJ)V
    .locals 9
    .param p1, "current"    # J
    .param p3, "max"    # J

    .prologue
    .line 200
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$500(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {p1, p2}, Lorg/teleal/cling/model/ModelUtil;->toTimeString(J)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "currentText":Ljava/lang/String;
    invoke-static {p3, p4}, Lorg/teleal/cling/model/ModelUtil;->toTimeString(J)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "maxText":Ljava/lang/String;
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/Activity;

    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;

    move-object v1, p0

    move-wide v4, p3

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
