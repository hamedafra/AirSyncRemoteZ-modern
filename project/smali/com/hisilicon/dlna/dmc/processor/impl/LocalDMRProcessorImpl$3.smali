.class Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$3;
.super Ljava/lang/Object;
.source "LocalDMRProcessorImpl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$3;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 298
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    if-eqz v1, :cond_0

    .line 299
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->reset()V

    .line 300
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->release()V

    .line 301
    const/4 v1, 0x0

    sput-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    .line 302
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$3;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->setRunning(Z)V

    .line 305
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v0

    .line 306
    .local v0, "m_playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v0, :cond_1

    .line 307
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->next()V

    .line 309
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
