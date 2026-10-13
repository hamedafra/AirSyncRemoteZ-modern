.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;
.super Ljava/lang/Object;
.source "NowPlayingVideoControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->onUpdatePosition(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;

.field final synthetic val$current:J

.field final synthetic val$currentText:Ljava/lang/String;

.field final synthetic val$max:J

.field final synthetic val$maxText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->val$currentText:Ljava/lang/String;

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->val$maxText:Ljava/lang/String;

    iput-wide p4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->val$max:J

    iput-wide p6, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->val$current:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 209
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$700(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->val$currentText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$800(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$900(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->val$maxText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-wide v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->val$max:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 213
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-wide v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->val$current:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 214
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->invalidate()V

    .line 215
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    .line 216
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 217
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    move-result-object v1

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->getMaxVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setMax(I)V

    .line 220
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;

    move-result-object v1

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->getVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/widget/VerticalSeekBar;->setProgress(I)V

    .line 222
    :cond_0
    return-void
.end method
