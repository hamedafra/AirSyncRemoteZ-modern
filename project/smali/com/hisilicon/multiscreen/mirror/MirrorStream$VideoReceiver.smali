.class final Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;
.super Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;
.source "MirrorStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/mirror/MirrorStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VideoReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;
    }
.end annotation


# static fields
.field private static final FEED_AHEAD_MS:I = 0x96

.field private static final LATE_MS:I = 0x78

.field private static final RENDER_AHEAD_MS:I = 0x28


# instance fields
.field private final mDecoder:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;

.field private final mQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSurface:Landroid/view/Surface;

.field private mWaitKey:Z


# direct methods
.method constructor <init>(Landroid/view/Surface;)V
    .locals 2

    .line 733
    const-string v0, "MirrorVideo"

    const/16 v1, 0x22b8

    invoke-direct {p0, v0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;-><init>(Ljava/lang/String;I)V

    .line 728
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v1, 0xf0

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 729
    new-instance v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;-><init>(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mDecoder:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mWaitKey:Z

    .line 734
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mSurface:Landroid/view/Surface;

    .line 735
    return-void
.end method

.method static synthetic access$200(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)Landroid/view/Surface;
    .locals 0

    .line 718
    iget-object p0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 0

    .line 718
    iget-object p0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object p0
.end method


# virtual methods
.method attach(Landroid/view/Surface;)V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 759
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mSurface:Landroid/view/Surface;

    .line 760
    return-void
.end method

.method detach()V
    .locals 1

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mSurface:Landroid/view/Surface;

    .line 752
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 753
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mDecoder:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->awaitReleased()V

    .line 754
    return-void
.end method

.method onFrame(II[BI)V
    .locals 11

    .line 764
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 765
    sget-object p2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {p2, v6, v7}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->onVideoArrival(J)V

    .line 766
    iget-object p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 767
    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mWaitKey:Z

    .line 768
    return-void

    .line 770
    :cond_0
    const/4 p2, 0x0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    invoke-static {p3, p4, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->hasNal([BII)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v10, 0x1

    .line 771
    :goto_1
    const/4 v1, 0x7

    if-eq p1, v1, :cond_4

    iget-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mWaitKey:Z

    if-eqz v1, :cond_4

    .line 772
    if-nez v10, :cond_3

    .line 773
    return-void

    .line 775
    :cond_3
    iput-boolean p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mWaitKey:Z

    .line 777
    :cond_4
    iget-object p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v4, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;

    move v5, p1

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;-><init>(IJ[BIZ)V

    invoke-virtual {p2, v4}, Ljava/util/concurrent/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 778
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 779
    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mWaitKey:Z

    .line 781
    :cond_5
    return-void
.end method

.method onIdle()V
    .locals 1

    .line 785
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->tick()V

    .line 786
    return-void
.end method

.method release()V
    .locals 0

    .line 790
    return-void
.end method

.method shutdown()V
    .locals 1

    .line 745
    invoke-super {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->shutdown()V

    .line 746
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mDecoder:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->shutdown()V

    .line 747
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    .line 739
    :try_start_0
    invoke-super {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->start()V

    .line 740
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->mDecoder:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    monitor-exit p0

    return-void

    .line 738
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
