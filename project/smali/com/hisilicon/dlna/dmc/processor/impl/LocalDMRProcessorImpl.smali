.class public Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
.super Ljava/lang/Object;
.source "LocalDMRProcessorImpl.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$SeekCompleteListener;,
        Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;
    }
.end annotation


# static fields
.field private static final SLEEP_INTERVAL:I = 0x3e8

.field private static final STATE_PAUSED:I = 0x2

.field private static final STATE_PLAYING:I = 0x0

.field private static final STATE_STOPED:I = 0x1

.field private static itemId:Ljava/lang/String;

.field public static m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;


# instance fields
.field private isSeeked:Z

.field private m_audioManager:Landroid/media/AudioManager;

.field private m_completeListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

.field private m_currentPosition:I

.field private m_currentState:I

.field private m_holder:Landroid/view/SurfaceHolder;

.field private m_listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_maxVolume:I

.field private m_onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private m_preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->itemId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_holder:Landroid/view/SurfaceHolder;

    .line 234
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$1;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 280
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$2;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$2;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_completeListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 294
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$3;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$3;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    .line 127
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-direct {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 128
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_audioManager:Landroid/media/AudioManager;

    .line 129
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_maxVolume:I

    .line 130
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;

    .line 131
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->start()V

    .line 132
    return-void
.end method

.method static synthetic access$002(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->fireUpdatePositionEvent(JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    .prologue
    .line 29
    iget v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentState:I

    return v0
.end method

.method static synthetic access$202(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentState:I

    return p1
.end method

.method static synthetic access$300(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->fireOnPlayingEvent()V

    return-void
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->fireOnPausedEvent()V

    return-void
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->fireOnStopedEvent()V

    return-void
.end method

.method static synthetic access$800(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->playingSeek(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->fireOnCompleteEvent()V

    return-void
.end method

.method private clearPlay()V
    .locals 2

    .prologue
    .line 384
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    if-eqz v1, :cond_0

    .line 388
    :try_start_0
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->reset()V

    .line 389
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->release()V

    .line 390
    const/4 v1, 0x0

    sput-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    .line 391
    const/4 v1, 0x1

    iput v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private fireOnCompleteEvent()V
    .locals 4

    .prologue
    .line 503
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 505
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onCompleted()V

    goto :goto_0

    .line 507
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    return-void
.end method

.method private fireOnPausedEvent()V
    .locals 4

    .prologue
    .line 511
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 513
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onPaused()V

    goto :goto_0

    .line 515
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    return-void
.end method

.method private fireOnPlayingEvent()V
    .locals 4

    .prologue
    .line 519
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 521
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onPlaying()V

    goto :goto_0

    .line 523
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    return-void
.end method

.method private fireOnStopedEvent()V
    .locals 4

    .prologue
    .line 495
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 497
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onStoped()V

    goto :goto_0

    .line 499
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    return-void
.end method

.method private fireUpdatePositionEvent(JJ)V
    .locals 5
    .param p1, "current"    # J
    .param p3, "max"    # J

    .prologue
    .line 487
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 489
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onUpdatePosition(JJ)V

    goto :goto_0

    .line 491
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    return-void
.end method

.method private playingSeek(Ljava/lang/String;)V
    .locals 4
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 330
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->seek(Ljava/lang/String;)V

    .line 337
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->isSeeked:Z

    .line 347
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setItemId(Ljava/lang/String;)V
    .locals 0
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 53
    sput-object p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->itemId:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public addListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .prologue
    .line 431
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->setRunning(Z)V

    .line 437
    monitor-exit v1

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 449
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 451
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->stop()V

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->isSeeked:Z

    .line 457
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->stopThread()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;

    .line 461
    :cond_0
    return-void

    .line 451
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    return-object v0
.end method

.method public getCurrentTrackURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/teleal/cling/support/model/DIDLObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getMaxVolume()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_maxVolume:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    const-string v0, "Local Player"

    return-object v0
.end method

.method public getVolume()I
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 351
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    :try_start_0
    iget v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentPosition:I

    if-eqz v1, :cond_0

    .line 354
    iget v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentPosition:I

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setPlayPosition(I)V

    .line 355
    :cond_0
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->pause()V

    .line 356
    const/4 v1, 0x2

    iput v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 316
    :try_start_0
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    if-eqz v1, :cond_0

    .line 317
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .prologue
    .line 442
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v1

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 444
    monitor-exit v1

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public seek(Ljava/lang/String;)V
    .locals 8
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 403
    :try_start_0
    invoke-static {p1}, Lorg/teleal/cling/model/ModelUtil;->fromTimeString(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v2, v4, v6

    .line 404
    .local v2, "miliSec":J
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    long-to-int v4, v2

    invoke-virtual {v1, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v2    # "miliSec":J
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setHolder(Landroid/view/SurfaceHolder;Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "playBack"    # Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_holder:Landroid/view/SurfaceHolder;

    .line 528
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    if-eqz v0, :cond_0

    .line 529
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer$ViewChange;)V

    .line 530
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->scaleContent()V

    .line 532
    :cond_0
    return-void
.end method

.method public setRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 475
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->stopThread()V

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;

    .line 480
    :cond_0
    if-eqz p1, :cond_1

    .line 481
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;

    .line 482
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$UpdateThread;->start()V

    .line 484
    :cond_1
    return-void
.end method

.method public setURIandPlay(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V
    .locals 7
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 136
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "---come into setURIandPlay---"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------Position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getPlayPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    if-nez p1, :cond_1

    .line 139
    iput-object v6, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 140
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->stop()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->itemId:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 145
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->itemId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->isRemotePlay()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 147
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->itemId:Ljava/lang/String;

    .line 148
    invoke-virtual {p1, v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setRemotePlay(Z)V

    .line 167
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v1, p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentState:I

    if-ne v1, v5, :cond_0

    .line 170
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----second way----"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 173
    invoke-virtual {p0, v5}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->setRunning(Z)V

    .line 175
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$4;->$SwitchMap$com$hisilicon$dlna$dmc$processor$model$PlaylistItem$Type:[I

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getType()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 186
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->stop()V

    .line 188
    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-direct {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;-><init>()V

    sput-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    .line 189
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 190
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 191
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_completeListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 192
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 193
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v1, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 194
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$SeekCompleteListener;

    invoke-direct {v2, p0, v6}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$SeekCompleteListener;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$1;)V

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 195
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    monitor-enter v2

    .line 199
    :try_start_0
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    if-eqz v1, :cond_4

    .line 201
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 202
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_4
    :goto_2
    :try_start_1
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 151
    :cond_5
    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setPlayPosition(I)V

    .line 152
    iput v4, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentPosition:I

    .line 153
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->itemId:Ljava/lang/String;

    goto/16 :goto_1

    .line 157
    :cond_6
    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setPlayPosition(I)V

    .line 158
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->itemId:Ljava/lang/String;

    goto/16 :goto_1

    .line 179
    :pswitch_0
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->stop()V

    goto/16 :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setVolume(I)V
    .locals 4
    .param p1, "newVolume"    # I

    .prologue
    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/16 v3, 0x10

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 364
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    if-eqz v1, :cond_1

    .line 368
    :try_start_0
    iget v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentPosition:I

    if-eqz v1, :cond_0

    .line 369
    iget v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentPosition:I

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setPlayPosition(I)V

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 371
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->reset()V

    .line 372
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;->release()V

    .line 373
    const/4 v1, 0x0

    sput-object v1, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_player:Lcom/hisilicon/dlna/dmc/gui/customview/LocalMediaPlayer;

    .line 374
    const/4 v1, 0x1

    iput v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->m_currentState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :cond_1
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
