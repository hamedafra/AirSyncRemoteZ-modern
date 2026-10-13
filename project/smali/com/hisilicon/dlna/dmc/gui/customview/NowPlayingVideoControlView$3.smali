.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$3;
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
    .line 120
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    .line 125
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 126
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$400(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->play()V

    goto :goto_0

    .line 133
    :pswitch_1
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->pause()V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
