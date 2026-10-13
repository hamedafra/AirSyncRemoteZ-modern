.class abstract Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;
.super Ljava/lang/Thread;
.source "MirrorStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/mirror/MirrorStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Receiver"
.end annotation


# instance fields
.field private final mFrame:Ljava/io/ByteArrayOutputStream;

.field private mFrameBroken:Z

.field private mFrameLen:I

.field private mFrameTs:I

.field private mFrameType:I

.field private mInFrame:Z

.field private mLastSeq:I

.field private final mPort:I

.field volatile mRunning:Z

.field private mSocket:Ljava/net/DatagramSocket;

.field sLastArrival:J


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 523
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 509
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mRunning:Z

    .line 512
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/high16 v0, 0x40000

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrame:Ljava/io/ByteArrayOutputStream;

    .line 518
    const/4 p1, -0x1

    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mLastSeq:I

    .line 524
    iput p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mPort:I

    .line 525
    return-void
.end method

.method private handleDatagram([BI)V
    .locals 8

    .line 609
    const/16 v0, 0xc

    if-ge p2, v0, :cond_0

    .line 610
    return-void

    .line 612
    :cond_0
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 613
    const/4 v2, 0x1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0x80

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 614
    :goto_0
    iget v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mLastSeq:I

    if-ltz v5, :cond_4

    iget v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mLastSeq:I

    add-int/2addr v5, v2

    const v6, 0xffff

    and-int/2addr v5, v6

    if-eq v1, v5, :cond_4

    .line 615
    iget v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mLastSeq:I

    sub-int v5, v1, v5

    sub-int/2addr v5, v2

    and-int/2addr v5, v6

    .line 616
    const/16 v6, 0x3e8

    if-le v5, v6, :cond_2

    .line 617
    const/4 v5, 0x1

    .line 619
    :cond_2
    iget-boolean v6, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mInFrame:Z

    .line 620
    iget-boolean v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mInFrame:Z

    if-eqz v7, :cond_3

    .line 621
    iput-boolean v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameBroken:Z

    .line 622
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->looksLikeFrameStart([BI)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 624
    iput-boolean v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mInFrame:Z

    .line 625
    iget v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameType:I

    invoke-virtual {p0, v7}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->onBrokenFrame(I)V

    .line 628
    :cond_3
    invoke-virtual {p0, v5, v6}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->onDatagramsLost(IZ)V

    .line 630
    :cond_4
    iput v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mLastSeq:I

    .line 631
    iget-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mInFrame:Z

    if-nez v1, :cond_b

    .line 632
    const/16 v1, 0x18

    if-ge p2, v1, :cond_5

    .line 633
    return-void

    .line 635
    :cond_5
    invoke-static {p1, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->le32([BI)I

    move-result v0

    iput v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameType:I

    .line 636
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->le32([BI)I

    move-result v0

    iput v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameTs:I

    .line 637
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->le32([BI)I

    move-result v0

    iput v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameLen:I

    .line 638
    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameType:I

    if-eq v0, v2, :cond_7

    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameType:I

    const/4 v5, 0x5

    if-eq v0, v5, :cond_7

    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameType:I

    const/4 v5, 0x7

    if-eq v0, v5, :cond_7

    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameType:I

    const/16 v5, 0xa

    if-ne v0, v5, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v0, 0x1

    .line 639
    :goto_2
    if-eqz v0, :cond_9

    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameLen:I

    if-lez v0, :cond_9

    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameLen:I

    const/high16 v5, 0x800000

    if-le v0, v5, :cond_8

    goto :goto_3

    .line 649
    :cond_8
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrame:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 650
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrame:Ljava/io/ByteArrayOutputStream;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 651
    iput-boolean v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mInFrame:Z

    .line 652
    iput-boolean v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameBroken:Z

    .line 653
    goto :goto_4

    .line 641
    :cond_9
    :goto_3
    const/4 p1, -0x1

    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameType:I

    .line 642
    xor-int/lit8 p2, v3, 0x1

    iput-boolean p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mInFrame:Z

    .line 643
    iput-boolean v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameBroken:Z

    .line 644
    if-eqz v3, :cond_a

    .line 645
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->onBrokenFrame(I)V

    .line 647
    :cond_a
    return-void

    .line 654
    :cond_b
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrame:Ljava/io/ByteArrayOutputStream;

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, v0, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 656
    :goto_4
    if-eqz v3, :cond_d

    .line 657
    iput-boolean v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mInFrame:Z

    .line 658
    iget-boolean p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameBroken:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrame:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameLen:I

    if-lt p1, p2, :cond_c

    .line 659
    iget p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameType:I

    iget p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameTs:I

    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrame:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameLen:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->onFrame(II[BI)V

    goto :goto_5

    .line 661
    :cond_c
    iget p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameType:I

    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->onBrokenFrame(I)V

    .line 663
    :goto_5
    iput-boolean v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameBroken:Z

    .line 665
    :cond_d
    return-void
.end method

.method private looksLikeFrameStart([BI)Z
    .locals 1

    .line 605
    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mFrameTs:I

    invoke-static {p1, p2, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->access$100([BII)Z

    move-result p1

    return p1
.end method


# virtual methods
.method onBrokenFrame(I)V
    .locals 0

    .line 539
    return-void
.end method

.method onDatagramsLost(IZ)V
    .locals 0

    .line 535
    return-void
.end method

.method abstract onFrame(II[BI)V
.end method

.method abstract onIdle()V
.end method

.method abstract release()V
.end method

.method public run()V
    .locals 13

    .line 560
    const-string v0, " finished"

    const-string v1, "MirrorStream"

    :try_start_0
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->threadPriority()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    goto :goto_0

    .line 561
    :catchall_0
    move-exception v2

    .line 563
    :goto_0
    const/high16 v2, 0x10000

    new-array v3, v2, [B

    .line 564
    new-instance v4, Ljava/net/DatagramPacket;

    invoke-direct {v4, v3, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 566
    :try_start_1
    new-instance v5, Ljava/net/DatagramSocket;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mSocket:Ljava/net/DatagramSocket;

    .line 567
    iget-object v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mSocket:Ljava/net/DatagramSocket;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 568
    iget-object v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mSocket:Ljava/net/DatagramSocket;

    const/high16 v7, 0x400000

    invoke-virtual {v5, v7}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 569
    iget-object v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mSocket:Ljava/net/DatagramSocket;

    new-instance v7, Ljava/net/InetSocketAddress;

    iget v8, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mPort:I

    invoke-direct {v7, v8}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v5, v7}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 570
    iget-object v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mSocket:Ljava/net/DatagramSocket;

    const/16 v7, 0x14

    invoke-virtual {v5, v7}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " listening on UDP "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mPort:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_1
    iget-boolean v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mRunning:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_2

    .line 574
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 575
    iget-object v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 579
    nop

    .line 580
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 581
    iget-wide v9, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->sLastArrival:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-eqz v5, :cond_1

    .line 582
    iget-wide v9, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->sLastArrival:J

    sub-long v9, v7, v9

    .line 583
    const-wide/32 v11, 0x3938700

    cmp-long v5, v9, v11

    if-ltz v5, :cond_1

    .line 584
    sget-object v5, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    const-wide/32 v11, 0xf4240

    div-long/2addr v9, v11

    long-to-int v10, v9

    iget v9, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mPort:I

    const/16 v11, 0x22ba

    if-ne v9, v11, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v5, v10, v9}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->onGap(IZ)V

    .line 587
    :cond_1
    iput-wide v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->sLastArrival:J

    .line 588
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-direct {p0, v3, v5}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->handleDatagram([BI)V

    .line 589
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->onIdle()V

    .line 590
    goto :goto_1

    .line 576
    :catch_0
    move-exception v5

    .line 577
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->onIdle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 578
    goto :goto_1

    .line 596
    :cond_2
    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_3

    .line 597
    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 599
    :cond_3
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->release()V

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 596
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 591
    :catch_1
    move-exception v2

    .line 592
    :try_start_4
    iget-boolean v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mRunning:Z

    if-eqz v3, :cond_4

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stopped"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 596
    :cond_4
    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_5

    .line 597
    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 599
    :cond_5
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->release()V

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    nop

    .line 602
    return-void

    .line 596
    :goto_4
    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v3, :cond_6

    .line 597
    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 599
    :cond_6
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->release()V

    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    throw v2
.end method

.method shutdown()V
    .locals 2

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mRunning:Z

    .line 547
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->mSocket:Ljava/net/DatagramSocket;

    .line 548
    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 552
    :cond_0
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 555
    :goto_0
    return-void
.end method

.method threadPriority()I
    .locals 1

    .line 542
    const/4 v0, -0x4

    return v0
.end method
