.class final Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;
.super Ljava/lang/Thread;
.source "MirrorStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DecodeThread"
.end annotation


# instance fields
.field private mCodec:Landroid/media/MediaCodec;

.field private mCodecSurface:Landroid/view/Surface;

.field private final mHeld:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hisilicon/multiscreen/mirror/MirrorStream$Held;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIdle:Z

.field private final mInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mLastShownNs:J

.field private mNeedKey:Z

.field private mPps:[B

.field private volatile mRun:Z

.field private mSps:[B

.field final synthetic this$0:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 804
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    .line 805
    const-string p1, "MirrorVideoDecode"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 793
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mRun:Z

    .line 797
    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mNeedKey:Z

    .line 798
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mHeld:Ljava/util/ArrayList;

    .line 800
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mLastShownNs:J

    .line 802
    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mIdle:Z

    .line 806
    return-void
.end method

.method private configure([B[B)V
    .locals 10

    .line 955
    const-string v0, " "

    const-string v1, "video/avc"

    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->releaseCodec()V

    .line 956
    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$SpsParser;->size([B)[I

    move-result-object v2

    .line 957
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    aget v4, v2, v3

    goto :goto_0

    :cond_0
    const/16 v4, 0x500

    .line 958
    :goto_0
    const/4 v5, 0x1

    if-eqz v2, :cond_1

    aget v2, v2, v5

    goto :goto_1

    :cond_1
    const/16 v2, 0x2d0

    .line 960
    :goto_1
    :try_start_0
    invoke-static {v1, v4, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v6

    .line 961
    const-string v7, "csd-0"

    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->access$400([B)[B

    move-result-object v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 962
    const-string v7, "csd-1"

    invoke-static {p2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->access$400([B)[B

    move-result-object v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 963
    const-string v7, "max-input-size"

    mul-int v8, v4, v2

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    const/high16 v9, 0x100000

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 964
    const-string v7, "low-latency"

    invoke-virtual {v6, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 965
    const-string v7, "priority"

    invoke-virtual {v6, v7, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 966
    iput-boolean v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mIdle:Z

    .line 967
    iget-object v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-static {v7}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->access$200(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)Landroid/view/Surface;

    move-result-object v7

    .line 968
    if-nez v7, :cond_2

    .line 969
    iput-boolean v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mIdle:Z

    .line 970
    return-void

    .line 972
    :cond_2
    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    .line 973
    iput-object v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodecSurface:Landroid/view/Surface;

    .line 974
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 975
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v5}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 976
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decoder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (SDK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stat(Ljava/lang/String;)V

    .line 979
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mSps:[B

    .line 980
    iput-object p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mPps:[B

    .line 981
    iput-boolean v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mNeedKey:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    goto :goto_2

    .line 982
    :catch_0
    move-exception p1

    .line 983
    const-string p2, "MirrorStream"

    const-string v0, "cannot start H.264 decoder"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->releaseCodec()V

    .line 986
    :goto_2
    return-void
.end method

.method private drainAndRender()Z
    .locals 12

    .line 910
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 911
    return v1

    .line 913
    :cond_0
    const/4 v0, 0x0

    .line 915
    :goto_0
    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 916
    const/4 v3, 0x1

    if-ltz v2, :cond_1

    .line 917
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mHeld:Ljava/util/ArrayList;

    new-instance v4, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Held;

    iget-object v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-direct {v4, v2, v5, v6}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Held;-><init>(IJ)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 919
    :cond_1
    const/4 v4, -0x2

    if-ne v2, v4, :cond_2

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MirrorStream"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 921
    :cond_2
    const/4 v4, -0x3

    if-eq v2, v4, :cond_8

    .line 922
    nop

    .line 925
    :goto_1
    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mHeld:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 926
    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mHeld:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Held;

    .line 927
    sget-object v4, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->nowPts()D

    move-result-wide v4

    .line 928
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 929
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 930
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    iget v2, v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Held;->index:I

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 931
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mHeld:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 932
    iput-wide v6, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mLastShownNs:J

    .line 933
    nop

    .line 934
    const/4 v0, 0x1

    goto :goto_1

    .line 936
    :cond_3
    iget-wide v8, v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Held;->pts:J

    long-to-double v8, v8

    sub-double/2addr v8, v4

    .line 937
    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    cmpl-double v10, v8, v4

    if-lez v10, :cond_4

    iget-object v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mHeld:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_4

    .line 938
    goto :goto_4

    .line 940
    :cond_4
    iget-wide v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mLastShownNs:J

    sub-long v4, v6, v4

    const-wide/32 v10, 0x11e1a300

    cmp-long v0, v4, v10

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 941
    :goto_2
    const-wide/high16 v4, -0x3fa2000000000000L    # -120.0

    cmpg-double v10, v8, v4

    if-gez v10, :cond_6

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mHeld:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_6

    .line 942
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    iget v2, v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Held;->index:I

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_3

    .line 944
    :cond_6
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double v4, v4, v8

    double-to-long v4, v4

    add-long/2addr v4, v6

    .line 945
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    iget v2, v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Held;->index:I

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 946
    iput-wide v6, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mLastShownNs:J

    .line 948
    :goto_3
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mHeld:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 949
    nop

    .line 950
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 951
    :cond_7
    :goto_4
    return v0

    .line 924
    :cond_8
    :goto_5
    goto/16 :goto_0
.end method

.method private feed()Z
    .locals 13

    .line 865
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->access$300(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;

    .line 866
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 867
    return v1

    .line 869
    :cond_0
    iget-object v2, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->data:[B

    iget v3, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->len:I

    const/4 v4, 0x7

    invoke-static {v2, v3, v4}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->findNal([BII)[B

    move-result-object v2

    .line 870
    iget-object v3, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->data:[B

    iget v5, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->len:I

    const/16 v6, 0x8

    invoke-static {v3, v5, v6}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->findNal([BII)[B

    move-result-object v3

    .line 871
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mSps:[B

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mPps:[B

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 872
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->configure([B[B)V

    .line 874
    :cond_2
    iget v2, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->type:I

    const/4 v3, 0x1

    if-eq v2, v4, :cond_9

    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    if-nez v2, :cond_3

    goto/16 :goto_1

    .line 878
    :cond_3
    iget-boolean v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mNeedKey:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->key:Z

    if-nez v2, :cond_4

    .line 879
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->access$300(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    .line 880
    return v3

    .line 882
    :cond_4
    sget-object v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->nowPts()D

    move-result-wide v4

    .line 884
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_5

    iget-wide v6, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->pts:J

    long-to-double v6, v6

    sub-double/2addr v6, v4

    const-wide v4, 0x4062c00000000000L    # 150.0

    cmpg-double v2, v6, v4

    if-gtz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 885
    :goto_0
    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-static {v2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->access$300(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    const/16 v4, 0x3c

    if-ge v2, v4, :cond_6

    .line 886
    return v1

    .line 888
    :cond_6
    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    .line 889
    if-gez v7, :cond_7

    .line 890
    return v1

    .line 892
    :cond_7
    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v7}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 893
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 894
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    iget v5, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->len:I

    if-ge v4, v5, :cond_8

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame larger than input buffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->len:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MirrorStream"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v6, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 897
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->access$300(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    .line 898
    iput-boolean v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mNeedKey:Z

    .line 899
    return v3

    .line 901
    :cond_8
    iget-object v4, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->data:[B

    iget v5, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->len:I

    invoke-virtual {v2, v4, v1, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 902
    iget-object v6, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    iget v9, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->len:I

    iget-wide v4, v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Frame;->pts:J

    const-wide/16 v10, 0x3e8

    mul-long v10, v10, v4

    const/4 v12, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 903
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->access$300(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    .line 904
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mNeedKey:Z

    .line 905
    return v3

    .line 875
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->access$300(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    .line 876
    return v3
.end method

.method private releaseCodec()V
    .locals 2

    .line 989
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mHeld:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 990
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 992
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    goto :goto_0

    .line 993
    :catch_0
    move-exception v0

    .line 996
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 998
    goto :goto_1

    .line 997
    :catch_1
    move-exception v0

    .line 999
    :goto_1
    iput-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    .line 1001
    :cond_0
    iput-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodecSurface:Landroid/view/Surface;

    .line 1002
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mIdle:Z

    .line 1003
    iput-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mSps:[B

    .line 1004
    iput-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mPps:[B

    .line 1005
    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mNeedKey:Z

    .line 1006
    return-void
.end method


# virtual methods
.method awaitReleased()V
    .locals 5

    .line 819
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 820
    :goto_0
    iget-boolean v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mIdle:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 822
    const-wide/16 v2, 0x2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    return-void

    .line 827
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 832
    const/4 v0, -0x4

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    goto :goto_0

    .line 833
    :catchall_0
    move-exception v0

    .line 836
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mRun:Z

    if-eqz v0, :cond_3

    .line 837
    nop

    .line 838
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mCodecSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->access$200(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)Landroid/view/Surface;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 839
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->releaseCodec()V

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->access$200(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;->access$300(Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 843
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 844
    goto :goto_0

    .line 847
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->feed()Z

    move-result v1

    or-int/2addr v0, v1

    .line 848
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->drainAndRender()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    or-int/2addr v0, v1

    .line 852
    goto :goto_1

    .line 849
    :catch_0
    move-exception v1

    .line 850
    :try_start_3
    const-string v2, "MirrorStream"

    const-string v3, "video decoder error, resetting"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 851
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->releaseCodec()V

    .line 853
    :goto_1
    if-nez v0, :cond_2

    .line 854
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 856
    :cond_2
    goto :goto_0

    .line 859
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->releaseCodec()V

    .line 860
    throw v0

    .line 857
    :catch_1
    move-exception v0

    .line 859
    :cond_3
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->releaseCodec()V

    .line 860
    nop

    .line 861
    return-void
.end method

.method shutdown()V
    .locals 2

    .line 809
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->mRun:Z

    .line 810
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->interrupt()V

    .line 812
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$VideoReceiver$DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    goto :goto_0

    .line 813
    :catch_0
    move-exception v0

    .line 815
    :goto_0
    return-void
.end method
