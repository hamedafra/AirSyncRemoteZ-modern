.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$5;
.super Ljava/lang/Object;
.source "NowPlayingMusicControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->onErrorEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$5;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$5;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$5;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$5;->val$error:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    return-void
.end method
