.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$2;
.super Ljava/lang/Object;
.source "NowPlayingImageControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 76
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->stopSlideShow()V

    .line 83
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$200(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->startSlideShow()V

    .line 88
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$200(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
