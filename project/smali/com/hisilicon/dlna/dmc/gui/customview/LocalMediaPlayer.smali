.class public Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "LocalMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;
    }
.end annotation


# static fields
.field public static surface_height:I

.field public static surface_width:I

.field public static video_height:I

.field public static video_width:I


# instance fields
.field private m_surfaceHolder:Landroid/view/SurfaceHolder;

.field private viewChange:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->m_surfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public scaleContent()V
    .locals 7

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->getVideoWidth()I

    move-result v5

    sput v5, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->video_width:I

    .line 53
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->getVideoHeight()I

    move-result v5

    sput v5, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->video_height:I

    .line 54
    sget v5, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->surface_width:I

    if-eqz v5, :cond_0

    sget v5, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->surface_height:I

    if-eqz v5, :cond_0

    sget v5, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->video_width:I

    if-eqz v5, :cond_0

    sget v5, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->video_height:I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->m_surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v5, :cond_0

    .line 55
    sget v5, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->video_width:I

    int-to-float v5, v5

    sget v6, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->surface_width:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 56
    .local v2, "scale_width":F
    sget v5, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->video_height:I

    int-to-float v5, v5

    sget v6, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->surface_height:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 57
    .local v1, "scale_height":F
    cmpl-float v5, v2, v1

    if-lez v5, :cond_1

    move v0, v2

    .line 58
    .local v0, "max_scale":F
    :goto_0
    sget v5, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->video_width:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v4, v5

    .line 59
    .local v4, "target_width":I
    sget v5, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->video_height:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v3, v5

    .line 60
    .local v3, "target_height":I
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->m_surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v4, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 62
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->viewChange:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;

    if-eqz v5, :cond_0

    .line 63
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->viewChange:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;

    invoke-interface {v5, v4, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;->change(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "max_scale":F
    .end local v1    # "scale_height":F
    .end local v2    # "scale_width":F
    .end local v3    # "target_height":I
    .end local v4    # "target_width":I
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "scale_height":F
    .restart local v2    # "scale_width":F
    :cond_1
    move v0, v1

    .line 57
    goto :goto_0

    .line 65
    .end local v1    # "scale_height":F
    .end local v2    # "scale_width":F
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 17
    :try_start_0
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->m_surfaceHolder:Landroid/view/SurfaceHolder;

    .line 27
    return-void

    .line 18
    :catch_0
    move-exception v1

    .line 19
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    const/4 v2, 0x0

    :try_start_1
    invoke-super {p0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 22
    :catch_1
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;)V
    .locals 3
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .param p2, "viewChange"    # Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;

    .prologue
    .line 31
    :try_start_0
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->viewChange:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;

    .line 41
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->m_surfaceHolder:Landroid/view/SurfaceHolder;

    .line 42
    return-void

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    const/4 v2, 0x0

    :try_start_1
    invoke-super {p0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 36
    :catch_1
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    .line 47
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->scaleContent()V

    .line 48
    return-void
.end method
