.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;
.super Landroid/os/Handler;
.source "NowPlayingVideoControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# static fields
.field public static final PAUSE:I = 0x1

.field public static final PLAY:I = 0x3

.field public static final STOP:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$1;

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v2, 0x7f0200a5

    .line 316
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 317
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$1100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$1100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 330
    :pswitch_2
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->access$1100(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView$UIHandler;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingVideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
