.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$9;
.super Ljava/lang/Object;
.source "PlayingVideoActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V

    .line 533
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V

    .line 528
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x0

    .line 518
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 519
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    instance-of v2, v0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 520
    check-cast v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    .line 521
    .local v1, "localDMR":Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
    invoke-virtual {v1, v3, v3}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->setHolder(Landroid/view/SurfaceHolder;Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;)V

    .line 523
    .end local v1    # "localDMR":Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
    :cond_0
    return-void
.end method
