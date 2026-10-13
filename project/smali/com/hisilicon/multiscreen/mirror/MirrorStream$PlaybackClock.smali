.class final Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;
.super Ljava/lang/Object;
.source "MirrorStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/mirror/MirrorStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlaybackClock"
.end annotation


# instance fields
.field private mAudioAtNs:J

.field private mAudioPts:D

.field private mAudioSeenMs:J

.field private mAudioValid:Z

.field private mBigGapWindowStart:J

.field private mBigGaps:I

.field private mDecided:Z

.field private volatile mDelayMs:I

.field private mFirstArrivalMs:J

.field private mForegroundDelayMs:I

.field private mMaxGapMs:I

.field private mMode:I

.field private mOffsetCheckedMs:J

.field private mOffsetMs:J


# direct methods
.method constructor <init>()V
    .locals 4

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mMode:I

    .line 347
    const/16 v0, 0x96

    iput v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    .line 349
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mFirstArrivalMs:J

    .line 354
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mOffsetMs:J

    .line 360
    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioSeenMs:J

    .line 380
    const/4 v0, -0x1

    iput v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mForegroundDelayMs:I

    return-void
.end method

.method private raise(ILjava/lang/String;)V
    .locals 2

    .line 496
    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    if-gt p1, v0, :cond_0

    .line 497
    return-void

    .line 499
    :cond_0
    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smooth auto: delay -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ms ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stat(Ljava/lang/String;)V

    .line 501
    return-void
.end method


# virtual methods
.method declared-synchronized audioMaster()Z
    .locals 5

    monitor-enter p0

    .line 428
    :try_start_0
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioValid:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioAtNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x17d78400

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 428
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method delayMs()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    return v0
.end method

.method declared-synchronized invalidateAudio()V
    .locals 1

    monitor-enter p0

    .line 424
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 423
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized nowPts()D
    .locals 7

    monitor-enter p0

    .line 433
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 434
    iget-boolean v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioValid:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioAtNs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x17d78400

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 435
    iget-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioPts:D

    iget-wide v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioAtNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v4

    long-to-double v0, v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v4

    add-double/2addr v2, v0

    monitor-exit p0

    return-wide v2

    .line 437
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mOffsetMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 438
    monitor-exit p0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 440
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mOffsetMs:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    monitor-exit p0

    return-wide v0

    .line 432
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method declared-synchronized onAudioArrival()V
    .locals 2

    monitor-enter p0

    .line 444
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioSeenMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 443
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized onGap(IZ)V
    .locals 8

    monitor-enter p0

    .line 453
    :try_start_0
    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mMode:I

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mFirstArrivalMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 457
    const-wide/16 v4, 0x3e8

    if-nez p2, :cond_1

    iget-wide v6, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioSeenMs:J

    cmp-long p2, v6, v2

    if-ltz p2, :cond_1

    iget-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioSeenMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v2, v0, v2

    cmp-long p2, v2, v4

    if-gez p2, :cond_1

    .line 458
    monitor-exit p0

    return-void

    .line 460
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mFirstArrivalMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v2, v0, v2

    cmp-long p2, v2, v4

    if-gez p2, :cond_2

    .line 461
    monitor-exit p0

    return-void

    .line 463
    :cond_2
    :try_start_2
    iget-boolean p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDecided:Z

    if-nez p2, :cond_3

    .line 464
    iget p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mMaxGapMs:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mMaxGapMs:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    .line 468
    :cond_3
    :try_start_3
    iget p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    add-int/lit8 p2, p2, -0x28

    if-le p1, p2, :cond_5

    iget p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    const/16 v2, 0x1c2

    if-ge p2, v2, :cond_5

    .line 469
    iget-wide v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mBigGapWindowStart:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x4e20

    const/4 p2, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    .line 470
    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mBigGapWindowStart:J

    .line 471
    iput p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mBigGaps:I

    .line 473
    :cond_4
    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mBigGaps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mBigGaps:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    .line 474
    add-int/lit8 p1, p1, 0x64

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const-string v0, "gaps keep exceeding the buffer"

    invoke-direct {p0, p1, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->raise(ILjava/lang/String;)V

    .line 475
    iput p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mBigGaps:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 478
    :cond_5
    monitor-exit p0

    return-void

    .line 454
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 452
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method declared-synchronized onVideoArrival(J)V
    .locals 7

    monitor-enter p0

    .line 403
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 404
    iget-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mFirstArrivalMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 405
    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mFirstArrivalMs:J

    .line 407
    :cond_0
    sub-long p1, v0, p1

    .line 408
    iget-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mOffsetMs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iget-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mOffsetMs:J

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    iget-wide p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mOffsetCheckedMs:J

    sub-long p1, v0, p1

    const-wide/16 v2, 0x7d0

    cmp-long v4, p1, v2

    if-lez v4, :cond_3

    .line 412
    iget-wide p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mOffsetMs:J

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mOffsetMs:J

    .line 413
    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mOffsetCheckedMs:J

    goto :goto_1

    .line 409
    :cond_2
    :goto_0
    iput-wide p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mOffsetMs:J

    .line 410
    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mOffsetCheckedMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 402
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized reset(I)V
    .locals 6

    monitor-enter p0

    .line 363
    :try_start_0
    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mMode:I

    .line 364
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v1, 0x12c

    goto :goto_0

    :cond_0
    const/16 v1, 0x96

    :goto_0
    iput v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    .line 365
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDecided:Z

    .line 366
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mFirstArrivalMs:J

    .line 367
    iput v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mMaxGapMs:I

    .line 368
    iput v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mBigGaps:I

    .line 369
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mOffsetMs:J

    .line 370
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioValid:Z

    .line 371
    iput-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioSeenMs:J

    .line 372
    const/4 v0, -0x1

    iput v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mForegroundDelayMs:I

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smooth mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->access$000(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", delay "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stat(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized setAudioPosition(DJ)V
    .locals 0

    monitor-enter p0

    .line 418
    :try_start_0
    iput-wide p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioPts:D

    .line 419
    iput-wide p3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioAtNs:J

    .line 420
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mAudioValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    .line 417
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized setBackground(Z)V
    .locals 1

    monitor-enter p0

    .line 388
    const/16 v0, 0x12c

    if-eqz p1, :cond_0

    .line 389
    :try_start_0
    iget p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mMode:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    if-ge p1, v0, :cond_2

    .line 390
    iget p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mForegroundDelayMs:I

    .line 391
    const-string p1, "background"

    invoke-direct {p0, v0, p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->raise(ILjava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_0
    iget p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mForegroundDelayMs:I

    if-ltz p1, :cond_2

    .line 394
    iget p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    if-ne p1, v0, :cond_1

    .line 395
    iget p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mForegroundDelayMs:I

    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    .line 396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "smooth auto: delay -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ms (foreground again)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stat(Ljava/lang/String;)V

    .line 398
    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mForegroundDelayMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 387
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized tick()V
    .locals 5

    monitor-enter p0

    .line 482
    :try_start_0
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDecided:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mFirstArrivalMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_1

    .line 485
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mFirstArrivalMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDecided:Z

    .line 487
    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mMaxGapMs:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 488
    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mMaxGapMs:I

    add-int/lit8 v0, v0, 0x50

    const/16 v1, 0x1c2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0xc8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max gap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mMaxGapMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms in first seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->raise(ILjava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smooth auto: network steady (max gap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mMaxGapMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms), keeping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->mDelayMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stat(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 483
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 481
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
