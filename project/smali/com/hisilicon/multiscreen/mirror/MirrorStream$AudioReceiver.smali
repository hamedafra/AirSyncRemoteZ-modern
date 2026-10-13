.class final Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;
.super Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;
.source "MirrorStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/mirror/MirrorStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AudioReceiver"
.end annotation


# static fields
.field private static final AAC_FRAME:I = 0x400

.field private static final RATES:[I


# instance fields
.field private mBasePts:D

.field private mBytesPerFrame:I

.field private mChannels:I

.field private mCodec:Landroid/media/MediaCodec;

.field private mConfig:I

.field private mFadeInFrames:I

.field private final mInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mLastAudioNs:J

.field private mLastDelay:I

.field private mLastHead:J

.field private mLastHeadChangeNs:J

.field private mLastPcm:[B

.field private mLastPcmFrames:I

.field private mMuted:Z

.field private mPcm:[B

.field private mPeakFrames:J

.field private mPeakWindowStartNs:J

.field private mPendingSilence:J

.field private mPlaying:Z

.field private mRate:I

.field private mSilence:[B

.field private mTrack:Landroid/media/AudioTrack;

.field private mTrimPendingFrames:J

.field private final mTs:Landroid/media/AudioTimestamp;

.field private mUnderrunsSeen:I

.field private mWrittenFrames:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1070
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->RATES:[I

    return-void

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    .line 1101
    const-string v0, "MirrorAudio"

    const/16 v1, 0x22ba

    invoke-direct {p0, v0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$Receiver;-><init>(Ljava/lang/String;I)V

    .line 1075
    const/4 v0, -0x1

    iput v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mConfig:I

    .line 1076
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1077
    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPcm:[B

    .line 1078
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mSilence:[B

    .line 1079
    const v1, 0xbb80

    iput v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    .line 1080
    const/4 v1, 0x2

    iput v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mChannels:I

    .line 1081
    const/4 v1, 0x4

    iput v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBytesPerFrame:I

    .line 1085
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    iput-wide v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBasePts:D

    .line 1088
    new-instance v1, Landroid/media/AudioTimestamp;

    invoke-direct {v1}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTs:Landroid/media/AudioTimestamp;

    .line 1090
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastHead:J

    .line 1093
    iput-wide v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPeakFrames:J

    .line 1096
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastPcm:[B

    .line 1102
    return-void
.end method

.method private closeTrack()V
    .locals 1

    .line 1440
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 1442
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    goto :goto_0

    .line 1443
    :catch_0
    move-exception v0

    .line 1445
    :goto_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 1446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    .line 1448
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPlaying:Z

    .line 1449
    return-void
.end method

.method private conceal(J)V
    .locals 11

    .line 1271
    long-to-int p2, p1

    .line 1272
    iget p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBytesPerFrame:I

    mul-int p1, p1, p2

    .line 1273
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mSilence:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 1274
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mSilence:[B

    .line 1276
    :cond_0
    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastPcmFrames:I

    .line 1277
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1278
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mSilence:[B

    invoke-static {v0, v1, p1, v1}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_3

    .line 1280
    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_4

    .line 1281
    mul-int/lit8 v3, v0, 0x2

    rem-int v3, p1, v3

    .line 1282
    if-ge v3, v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_2
    sub-int v4, v3, v0

    :goto_1
    iget v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBytesPerFrame:I

    mul-int v4, v4, v3

    .line 1283
    add-int/lit8 v3, p1, 0x1

    int-to-float v5, v3

    int-to-float v6, p2

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v5

    .line 1284
    const/4 v5, 0x0

    :goto_2
    iget v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mChannels:I

    if-ge v5, v7, :cond_3

    .line 1285
    mul-int/lit8 v7, v5, 0x2

    add-int v8, v4, v7

    .line 1286
    iget-object v9, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastPcm:[B

    aget-byte v9, v9, v8

    and-int/lit16 v9, v9, 0xff

    iget-object v10, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastPcm:[B

    add-int/2addr v8, v2

    aget-byte v8, v10, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v9

    int-to-short v8, v8

    int-to-float v8, v8

    mul-float v8, v8, v6

    float-to-int v8, v8

    .line 1287
    iget v9, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBytesPerFrame:I

    mul-int v9, v9, p1

    add-int/2addr v9, v7

    .line 1288
    iget-object v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mSilence:[B

    int-to-byte v10, v8

    aput-byte v10, v7, v9

    .line 1289
    iget-object v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mSilence:[B

    add-int/2addr v9, v2

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v7, v9

    .line 1284
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1280
    :cond_3
    move p1, v3

    goto :goto_0

    .line 1293
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mSilence:[B

    invoke-direct {p0, p1, p2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->writeFrames([BI)V

    .line 1294
    iget p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    div-int/lit16 p1, p1, 0xc8

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mFadeInFrames:I

    .line 1295
    return-void
.end method

.method private configure(III)V
    .locals 4

    .line 1148
    const-string v0, "audio/mp4a-latm"

    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->releaseCodec()V

    .line 1149
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->RATES:[I

    aget v1, v1, p2

    .line 1151
    :try_start_0
    invoke-static {v0, v1, p3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 1152
    shl-int/lit8 p1, p1, 0x3

    shr-int/lit8 v2, p2, 0x1

    or-int/2addr p1, v2

    int-to-byte p1, p1

    const/4 v2, 0x1

    and-int/2addr p2, v2

    shl-int/lit8 p2, p2, 0x7

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p2, p3

    int-to-byte p2, p2

    const/4 p3, 0x2

    new-array p3, p3, [B

    const/4 v3, 0x0

    aput-byte p1, p3, v3

    aput-byte p2, p3, v2

    .line 1153
    const-string p1, "csd-0"

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1154
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    .line 1155
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2, p2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1156
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    goto :goto_0

    .line 1157
    :catch_0
    move-exception p1

    .line 1158
    const-string p2, "MirrorStream"

    const-string p3, "cannot start AAC decoder"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1159
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->releaseCodec()V

    .line 1161
    :goto_0
    return-void
.end method

.method private controlLevel()V
    .locals 9

    .line 1375
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1376
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->levelFrames()J

    move-result-wide v2

    .line 1377
    iget-boolean v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPlaying:Z

    const-wide/16 v5, -0x1

    if-nez v4, :cond_0

    .line 1378
    iput-wide v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPeakFrames:J

    .line 1379
    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPeakWindowStartNs:J

    .line 1380
    return-void

    .line 1382
    :cond_0
    iget-wide v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPeakFrames:J

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPeakFrames:J

    .line 1383
    iget-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPeakWindowStartNs:J

    sub-long v2, v0, v2

    const-wide/32 v7, 0x3b9aca00

    cmp-long v4, v2, v7

    if-gez v4, :cond_1

    .line 1384
    return-void

    .line 1386
    :cond_1
    sget-object v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->delayMs()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    int-to-long v7, v4

    mul-long v2, v2, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v2, v7

    .line 1387
    iget-wide v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPeakFrames:J

    sub-long/2addr v2, v7

    .line 1388
    iget v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    mul-int/lit8 v4, v4, 0x1e

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v7, v4

    cmp-long v4, v2, v7

    if-lez v4, :cond_2

    .line 1389
    iget v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    mul-int/lit8 v4, v4, 0xf

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v7, v4

    sub-long/2addr v2, v7

    iget v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    mul-int/lit8 v4, v4, 0x19

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v7, v4

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->conceal(J)V

    goto :goto_0

    .line 1390
    :cond_2
    neg-long v2, v2

    iget v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    mul-int/lit8 v4, v4, 0x50

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v7, v4

    cmp-long v4, v2, v7

    if-lez v4, :cond_3

    .line 1391
    const-wide/16 v2, 0x400

    iput-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrimPendingFrames:J

    .line 1393
    :cond_3
    :goto_0
    iput-wide v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPeakFrames:J

    .line 1394
    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPeakWindowStartNs:J

    .line 1395
    return-void
.end method

.method private decode([BIIJ)V
    .locals 10

    .line 1165
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    .line 1166
    if-ltz v4, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1168
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1169
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1170
    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1172
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->drain()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    goto :goto_0

    .line 1173
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1174
    const-string p2, "MirrorStream"

    const-string p3, "audio decode error, resetting decoder"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1175
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->releaseCodec()V

    .line 1176
    const/4 p1, -0x1

    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mConfig:I

    .line 1178
    :goto_0
    return-void
.end method

.method private drain()V
    .locals 8

    .line 1182
    nop

    :goto_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 1183
    if-ltz v0, :cond_2

    .line 1184
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 1185
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1186
    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPcm:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ge v3, v4, :cond_0

    .line 1187
    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPcm:[B

    .line 1189
    :cond_0
    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1190
    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPcm:[B

    iget-object v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v3, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1191
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPcm:[B

    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v4, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->play([BID)V

    .line 1193
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_2

    .line 1194
    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 1195
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 1196
    const-string v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "channel-count"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->openTrack(II)V

    goto :goto_1

    .line 1197
    :cond_3
    const/4 v1, -0x3

    if-eq v0, v1, :cond_4

    .line 1198
    return-void

    .line 1197
    :cond_4
    :goto_1
    nop

    .line 1200
    :goto_2
    goto :goto_0
.end method

.method private fadeIn([BI)V
    .locals 9

    .line 1298
    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mFadeInFrames:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1299
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1300
    add-int/lit8 v2, v1, 0x1

    int-to-float v3, v2

    add-int/lit8 v4, p2, 0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1301
    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mChannels:I

    if-ge v4, v5, :cond_0

    .line 1302
    iget v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBytesPerFrame:I

    mul-int v5, v5, v1

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    .line 1303
    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v8, p1, v7

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    int-to-short v6, v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    .line 1304
    int-to-byte v8, v6

    aput-byte v8, p1, v5

    .line 1305
    shr-int/lit8 v5, v6, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v7

    .line 1301
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1299
    :cond_0
    move v1, v2

    goto :goto_0

    .line 1308
    :cond_1
    iput v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mFadeInFrames:I

    .line 1309
    return-void
.end method

.method private levelFrames()J
    .locals 6

    .line 1254
    iget-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mWrittenFrames:J

    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private maybeStart(J)V
    .locals 3

    .line 1355
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->delayMs()I

    move-result v0

    .line 1356
    iget-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPlaying:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastDelay:I

    add-int/lit8 v1, v1, 0x14

    if-le v0, v1, :cond_0

    .line 1358
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 1359
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPlaying:Z

    .line 1360
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->invalidateAudio()V

    .line 1362
    :cond_0
    iput v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastDelay:I

    .line 1363
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPlaying:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->levelFrames()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    .line 1364
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V

    .line 1365
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPlaying:Z

    .line 1367
    :cond_1
    return-void
.end method

.method private openTrack(II)V
    .locals 10

    .line 1204
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->closeTrack()V

    .line 1205
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v1, 0x4

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    const/16 v5, 0xc

    .line 1206
    :goto_0
    const/4 v1, 0x2

    invoke-static {p1, v5, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    .line 1207
    const-string v9, "MirrorStream"

    if-gtz v2, :cond_1

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported audio format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return-void

    .line 1211
    :cond_1
    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    .line 1212
    iput p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mChannels:I

    .line 1213
    mul-int/lit8 v3, p2, 0x2

    iput v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBytesPerFrame:I

    .line 1215
    mul-int/lit8 v2, v2, 0x2

    mul-int/lit16 v1, p1, 0x2ee

    div-int/lit16 v1, v1, 0x3e8

    iget v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBytesPerFrame:I

    mul-int v1, v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1217
    :try_start_0
    new-instance v2, Landroid/media/AudioTrack;

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x3

    move v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    .line 1219
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1f

    if-lt p1, v1, :cond_2

    .line 1223
    :try_start_1
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    div-int/lit8 v1, v4, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->setStartThresholdInFrames(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    goto :goto_1

    .line 1224
    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1225
    :try_start_2
    const-string v0, "setStartThresholdInFrames failed"

    invoke-static {v9, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mWrittenFrames:J

    .line 1229
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPlaying:Z

    .line 1230
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBasePts:D

    .line 1231
    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPendingSilence:J

    .line 1232
    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mUnderrunsSeen:I

    .line 1233
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPeakFrames:J

    .line 1234
    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrimPendingFrames:J

    .line 1235
    sget-object p1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->delayMs()I

    move-result p1

    iput p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastDelay:I

    .line 1236
    iput-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastHead:J

    .line 1237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "audio track "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "Hz x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " capacity "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-long v0, v7

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBytesPerFrame:I

    mul-int p2, p2, v4

    int-to-long v2, p2

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->stat(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1241
    goto :goto_2

    .line 1238
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1239
    const-string p2, "cannot open audio track"

    invoke-static {v9, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1240
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    .line 1242
    :goto_2
    return-void
.end method

.method private play([BID)V
    .locals 10

    .line 1312
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 1313
    return-void

    .line 1315
    :cond_0
    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBytesPerFrame:I

    div-int v0, p2, v0

    .line 1316
    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->delayMs()I

    move-result v1

    int-to-long v1, v1

    iget v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    int-to-long v3, v3

    mul-long v1, v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1317
    iget-wide v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPendingSilence:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 1318
    iget-wide v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPendingSilence:J

    iget v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    div-int/lit8 v7, v7, 0x2

    int-to-long v7, v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->conceal(J)V

    .line 1319
    iput-wide v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPendingSilence:J

    .line 1323
    :cond_1
    iget-boolean v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPlaying:Z

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrimPendingFrames:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_2

    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->levelFrames()J

    move-result-wide v3

    iget v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    mul-int/lit16 v7, v7, 0xfa

    div-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v7, v1

    cmp-long v9, v3, v7

    if-lez v9, :cond_3

    .line 1324
    :cond_2
    iget-wide p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrimPendingFrames:J

    int-to-long p3, v0

    sub-long/2addr p1, p3

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrimPendingFrames:J

    .line 1325
    return-void

    .line 1327
    :cond_3
    iget-wide v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mWrittenFrames:J

    .line 1328
    iget v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mFadeInFrames:I

    if-lez v5, :cond_4

    .line 1329
    invoke-direct {p0, p1, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->fadeIn([BI)V

    .line 1331
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->writeFrames([BI)V

    .line 1332
    iget-object v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastPcm:[B

    array-length v5, v5

    if-ge v5, p2, :cond_5

    .line 1333
    new-array v5, p2, [B

    iput-object v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastPcm:[B

    .line 1335
    :cond_5
    iget-object v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastPcm:[B

    const/4 v6, 0x0

    invoke-static {p1, v6, v5, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1336
    iput v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastPcmFrames:I

    .line 1338
    long-to-double p1, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v3

    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    int-to-double v3, v0

    div-double/2addr p1, v3

    sub-double/2addr p3, p1

    .line 1339
    iget-wide p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBasePts:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_7

    iget-wide p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBasePts:D

    sub-double p1, p3, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v3, 0x407f400000000000L    # 500.0

    cmpl-double v0, p1, v3

    if-lez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-wide p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBasePts:D

    iget-wide v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBasePts:D

    sub-double/2addr p3, v3

    const-wide v3, 0x3f947ae147ae147bL    # 0.02

    mul-double p3, p3, v3

    add-double/2addr p3, p1

    :cond_7
    :goto_0
    iput-wide p3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBasePts:D

    .line 1340
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->sAudioEnabledApply()V

    .line 1341
    invoke-direct {p0, v1, v2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->maybeStart(J)V

    .line 1342
    return-void
.end method

.method private playedFrames()J
    .locals 8

    .line 1245
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1246
    iget-boolean v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPlaying:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTs:Landroid/media/AudioTimestamp;

    invoke-virtual {v2, v3}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1247
    iget-object v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTs:Landroid/media/AudioTimestamp;

    iget-wide v2, v2, Landroid/media/AudioTimestamp;->framePosition:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTs:Landroid/media/AudioTimestamp;

    iget-wide v6, v6, Landroid/media/AudioTimestamp;->nanoTime:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    int-to-long v6, v6

    mul-long v4, v4, v6

    const-wide/32 v6, 0x3b9aca00

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 1248
    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 1250
    :cond_0
    return-wide v0
.end method

.method private releaseCodec()V
    .locals 1

    .line 1426
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 1428
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    goto :goto_0

    .line 1429
    :catch_0
    move-exception v0

    .line 1432
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1434
    goto :goto_1

    .line 1433
    :catch_1
    move-exception v0

    .line 1435
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    .line 1437
    :cond_0
    return-void
.end method

.method private sAudioEnabledApply()V
    .locals 3

    .line 1347
    sget-boolean v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sAudioEnabled:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sPaused:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1348
    :goto_1
    iget-boolean v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mMuted:Z

    if-eq v0, v1, :cond_3

    .line 1349
    iget-object v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1350
    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mMuted:Z

    .line 1352
    :cond_3
    return-void
.end method

.method private writeFrames([BI)V
    .locals 3

    .line 1258
    iget v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBytesPerFrame:I

    mul-int p2, p2, v0

    .line 1259
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/media/AudioTrack;->write([BIII)I

    move-result p1

    .line 1260
    if-lez p1, :cond_0

    .line 1261
    iget-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mWrittenFrames:J

    iget p2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBytesPerFrame:I

    div-int/2addr p1, p2

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mWrittenFrames:J

    .line 1263
    :cond_0
    return-void
.end method


# virtual methods
.method onDatagramsLost(IZ)V
    .locals 4

    .line 1111
    const/16 p2, 0x64

    if-ge p1, p2, :cond_0

    .line 1112
    iget-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPendingSilence:J

    int-to-long p1, p1

    const-wide/16 v2, 0x400

    mul-long p1, p1, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPendingSilence:J

    .line 1114
    :cond_0
    return-void
.end method

.method onFrame(II[BI)V
    .locals 11

    .line 1118
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastAudioNs:J

    .line 1119
    sget-object p1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->onAudioArrival()V

    .line 1120
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1121
    :goto_0
    add-int/lit8 v1, v0, 0x7

    if-gt v1, p4, :cond_8

    .line 1122
    aget-byte v1, p3, v0

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p3, v1

    const/16 v4, 0xf0

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_0

    move-object v6, p3

    goto/16 :goto_5

    .line 1126
    :cond_0
    aget-byte v1, p3, v1

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1127
    :goto_1
    add-int/lit8 v4, v0, 0x2

    aget-byte v5, p3, v4

    and-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x6

    add-int/2addr v5, v3

    .line 1128
    aget-byte v6, p3, v4

    and-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    .line 1129
    aget-byte v4, p3, v4

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v0, 0x3

    aget-byte v7, p3, v4

    and-int/2addr v7, v2

    shr-int/lit8 v7, v7, 0x6

    or-int/2addr v3, v7

    .line 1130
    aget-byte v4, p3, v4

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0xb

    add-int/lit8 v7, v0, 0x4

    aget-byte v7, p3, v7

    and-int/2addr v7, v2

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v4, v7

    add-int/lit8 v7, v0, 0x5

    aget-byte v7, p3, v7

    and-int/2addr v2, v7

    shr-int/lit8 v2, v2, 0x5

    or-int/2addr v2, v4

    .line 1131
    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto :goto_2

    :cond_2
    const/16 v1, 0x9

    .line 1132
    :goto_2
    if-lt v2, v1, :cond_6

    add-int v4, v0, v2

    if-gt v4, p4, :cond_6

    sget-object v7, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->RATES:[I

    array-length v7, v7

    if-ge v6, v7, :cond_6

    if-nez v3, :cond_3

    goto :goto_4

    .line 1135
    :cond_3
    shl-int/lit8 v7, v5, 0x8

    shl-int/lit8 v8, v6, 0x4

    or-int/2addr v7, v8

    or-int/2addr v7, v3

    .line 1136
    iget v8, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mConfig:I

    if-eq v7, v8, :cond_4

    .line 1137
    invoke-direct {p0, v5, v6, v3}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->configure(III)V

    .line 1138
    iput v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mConfig:I

    .line 1140
    :cond_4
    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_5

    .line 1141
    add-int v7, v0, v1

    sub-int v8, v2, v1

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v9, v0, v2

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v5 .. v10}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->decode([BIIJ)V

    goto :goto_3

    .line 1140
    :cond_5
    move-object v6, p3

    .line 1143
    :goto_3
    nop

    .line 1144
    move v0, v4

    move-object p3, v6

    goto/16 :goto_0

    .line 1133
    :cond_6
    :goto_4
    return-void

    .line 1122
    :cond_7
    move-object v6, p3

    .line 1123
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 1124
    move-object p3, v6

    goto/16 :goto_0

    .line 1145
    :cond_8
    return-void
.end method

.method onIdle()V
    .locals 9

    .line 1399
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 1400
    return-void

    .line 1402
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->controlLevel()V

    .line 1403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 1404
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v0

    .line 1405
    iget v1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mUnderrunsSeen:I

    if-le v0, v1, :cond_1

    .line 1406
    iput v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mUnderrunsSeen:I

    .line 1407
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    sget-object v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->delayMs()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->onGap(IZ)V

    .line 1410
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1411
    iget-object v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 1412
    iget-wide v5, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastHead:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 1413
    iput-wide v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastHead:J

    .line 1414
    iput-wide v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastHeadChangeNs:J

    .line 1416
    :cond_2
    iget-boolean v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mPlaying:Z

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastHeadChangeNs:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0x8f0d180

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 1417
    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBasePts:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mLastAudioNs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x11e1a300

    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    .line 1418
    sget-object v2, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    iget-wide v3, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mBasePts:D

    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->playedFrames()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v7

    iget v7, p0, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->mRate:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->setAudioPosition(DJ)V

    goto :goto_1

    .line 1421
    :cond_4
    sget-object v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sClock:Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$PlaybackClock;->invalidateAudio()V

    .line 1423
    :goto_1
    return-void
.end method

.method release()V
    .locals 0

    .line 1453
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->releaseCodec()V

    .line 1454
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream$AudioReceiver;->closeTrack()V

    .line 1455
    return-void
.end method

.method threadPriority()I
    .locals 1

    .line 1106
    const/16 v0, -0x13

    return v0
.end method
