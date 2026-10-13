.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$2;
.super Landroid/os/Handler;
.source "NowPlayingVideoControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final DISMISS_VOLUME:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$200(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
