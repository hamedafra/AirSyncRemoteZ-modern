.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$8;
.super Ljava/lang/Object;
.source "PlayingVideoActivity.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->updateSurfaceView()V
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
    .line 493
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public change(II)V
    .locals 5
    .param p1, "target_width"    # I
    .param p2, "target_height"    # I

    .prologue
    .line 497
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$502(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;Z)Z

    .line 500
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    sget v1, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->surface_width:I

    sget v2, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->surface_height:I

    sget v3, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->video_width:I

    sget v4, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->video_height:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$600(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;IIII)V

    .line 503
    :cond_0
    return-void
.end method
