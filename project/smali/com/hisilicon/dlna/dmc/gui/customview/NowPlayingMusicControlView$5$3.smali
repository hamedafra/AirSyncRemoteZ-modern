.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$3;
.super Ljava/lang/Object;
.source "NowPlayingMusicControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->onPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$3;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$3;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$700(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$3;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    return-void
.end method
