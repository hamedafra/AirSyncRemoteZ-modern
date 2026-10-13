.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$3;
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
    .line 93
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$300(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Landroid/widget/Gallery;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Gallery;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$400(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$500(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V

    goto :goto_0
.end method
