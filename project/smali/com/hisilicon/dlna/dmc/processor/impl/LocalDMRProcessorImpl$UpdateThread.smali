.class Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;
.super Ljava/lang/Thread;
.source "LocalDMRProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field private running:Z

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;


# direct methods
.method public constructor <init>(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->running:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->running:Z

    .line 62
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 71
    :cond_0
    iget-boolean v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->running:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    if-eqz v5, :cond_2

    .line 73
    :try_start_0
    sget-object v5, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    sget-object v5, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->getCurrentPosition()I

    move-result v5

    div-int/lit16 v0, v5, 0x3e8

    .line 75
    .local v0, "currentPosition":I
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-static {v5, v0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$002(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;I)I

    .line 76
    sget-object v5, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->getDuration()I

    move-result v5

    div-int/lit16 v1, v5, 0x3e8

    .line 78
    .local v1, "duration":I
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    int-to-long v6, v0

    int-to-long v8, v1

    invoke-static {v5, v6, v7, v8, v9}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$100(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;JJ)V

    .line 79
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$202(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;I)I

    .line 81
    .end local v0    # "currentPosition":I
    .end local v1    # "duration":I
    :cond_1
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$200(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 96
    :goto_0
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    :goto_1
    :try_start_2
    iget-boolean v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->running:Z

    if-nez v5, :cond_0

    .line 122
    :cond_2
    :goto_2
    return-void

    .line 83
    :pswitch_0
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$300(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 84
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$400(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v3

    .line 103
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    iput-boolean v10, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->running:Z

    .line 105
    sget-object v5, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    if-eqz v5, :cond_3

    .line 107
    :try_start_3
    sget-object v5, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->reset()V

    .line 108
    sget-object v5, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    sput-object v11, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    .line 115
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$600(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V

    .line 116
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v5

    invoke-interface {v5}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v4

    .line 117
    .local v4, "m_playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v4, :cond_2

    .line 118
    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->next()V

    goto :goto_2

    .line 87
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "m_playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    :pswitch_1
    :try_start_4
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$300(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 88
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$500(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$300(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 92
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$600(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V

    goto :goto_0

    .line 97
    :catch_1
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 109
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 112
    sput-object v11, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    goto :goto_3

    :catchall_0
    move-exception v5

    sput-object v11, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    throw v5

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->running:Z

    .line 66
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->interrupt()V

    .line 67
    return-void
.end method
