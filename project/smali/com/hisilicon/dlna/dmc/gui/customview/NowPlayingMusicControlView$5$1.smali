.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;
.super Ljava/lang/Object;
.source "NowPlayingMusicControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->onUpdatePosition(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

.field final synthetic val$current:J

.field final synthetic val$currentText:Ljava/lang/String;

.field final synthetic val$max:J

.field final synthetic val$maxText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->val$currentText:Ljava/lang/String;

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->val$maxText:Ljava/lang/String;

    iput-wide p4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->val$max:J

    iput-wide p6, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->val$current:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$500(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->val$currentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->val$maxText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$400(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-wide v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->val$max:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 174
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$400(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-wide v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->val$current:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 175
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;->access$400(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingMusicControlView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 176
    return-void
.end method
