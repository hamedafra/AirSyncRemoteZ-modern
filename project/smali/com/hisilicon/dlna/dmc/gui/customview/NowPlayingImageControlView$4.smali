.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$4;
.super Landroid/os/Handler;
.source "NowPlayingImageControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$700(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V

    .line 153
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
