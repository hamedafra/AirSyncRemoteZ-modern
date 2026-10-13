.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;
.super Ljava/lang/Object;
.source "NowPlayingVideoControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 79
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "come into onVolumeClick!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$200(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$200(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0200a8

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 91
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$300(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
