.class public Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;
.super Ljava/lang/Object;
.source "RemoteSensor.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x12

.field private static final FLOAT_LENGTH:I = 0x4

.field private static final SENSOR_MESSAGE_LENGTH:S = 0x12s

.field public static final SENSOR_TYPE_ACCELEROMETER:I = 0x1

.field public static final SENSOR_TYPE_GYROSCOPE:I = 0x4

.field public static final SENSOR_TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final SENSOR_TYPE_ORIENTATION:I = 0x3

.field public static final SENSOR_TYPE_TEMPERATURE:I = 0x7


# instance fields
.field private dataPacket:Ljava/net/DatagramPacket;

.field private mAddress:Ljava/net/InetAddress;

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

.field private mFloatBytes:[B

.field private mPort:I

.field private mSendMsg:[B

.field private mSocket:Ljava/net/DatagramSocket;

.field private mTransByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 4
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 65
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSocket:Ljava/net/DatagramSocket;

    .line 67
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->dataPacket:Ljava/net/DatagramPacket;

    .line 69
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mAddress:Ljava/net/InetAddress;

    .line 71
    const/16 v0, 0x2b0d

    iput v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mPort:I

    .line 73
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 75
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSendMsg:[B

    .line 82
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mTransByteBuffer:Ljava/nio/ByteBuffer;

    .line 84
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    .line 94
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 95
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSendMsg:[B

    .line 97
    if-nez p1, :cond_0

    .line 99
    const-string v0, "device info is null in remote sensor."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    goto :goto_0
.end method

.method private floatToByteL(F)[B
    .locals 8
    .param p1, "inputVal"    # F

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 375
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mTransByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 376
    .local v0, "floatBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 378
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mTransByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 379
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mTransByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 380
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    aget-byte v2, v1, v4

    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    aget-byte v3, v3, v7

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 381
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    aget-byte v2, v1, v7

    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 382
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    aget-byte v2, v1, v4

    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    aget-byte v3, v3, v7

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 383
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    aget-byte v2, v1, v5

    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    aget-byte v3, v3, v6

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 384
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    aget-byte v2, v1, v6

    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    aget-byte v3, v3, v5

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 385
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    aget-byte v2, v1, v5

    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    aget-byte v3, v3, v6

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 386
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mTransByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 388
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mFloatBytes:[B

    return-object v1
.end method

.method private getBytes(IFFF)[B
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "pointX"    # F
    .param p3, "pointY"    # F
    .param p4, "pointZ"    # F

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSendMsg:[B

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 247
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, p1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 248
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 249
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p2}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->floatToByteL(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 250
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->floatToByteL(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 251
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p4}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->floatToByteL(F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 255
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 257
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSendMsg:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 258
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSendMsg:[B

    return-object v0
.end method

.method private getDataInByteOrder(IFFF)[B
    .locals 8
    .param p1, "eventType"    # I
    .param p2, "pointX"    # F
    .param p3, "pointY"    # F
    .param p4, "pointZ"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x4

    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "index":I
    const/16 v4, 0x12

    new-array v2, v4, [B

    .line 276
    .local v2, "msgByte":[B
    new-array v3, v5, [B

    .line 278
    .local v3, "temp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 280
    aput-byte v7, v2, v1

    .line 281
    add-int/lit8 v1, v1, 0x1

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->intToByteL(I)[B

    move-result-object v3

    .line 285
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_1

    .line 287
    aget-byte v4, v3, v0

    aput-byte v4, v2, v1

    .line 288
    add-int/lit8 v1, v1, 0x1

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_2

    .line 292
    aput-byte v7, v2, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 296
    :cond_2
    invoke-direct {p0, p2}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->floatToByteL(F)[B

    move-result-object v3

    .line 297
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_3

    .line 299
    aget-byte v4, v3, v0

    aput-byte v4, v2, v1

    .line 300
    add-int/lit8 v1, v1, 0x1

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 302
    :cond_3
    invoke-direct {p0, p3}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->floatToByteL(F)[B

    move-result-object v3

    .line 303
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v5, :cond_4

    .line 305
    aget-byte v4, v3, v0

    aput-byte v4, v2, v1

    .line 306
    add-int/lit8 v1, v1, 0x1

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 308
    :cond_4
    invoke-direct {p0, p4}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->floatToByteL(F)[B

    move-result-object v3

    .line 309
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_5

    .line 311
    aget-byte v4, v3, v0

    aput-byte v4, v2, v1

    .line 312
    add-int/lit8 v1, v1, 0x1

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 314
    :cond_5
    return-object v2
.end method

.method private intToByteL(I)[B
    .locals 3
    .param p1, "intValue"    # I

    .prologue
    .line 345
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 346
    .local v0, "result":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 347
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 348
    const/4 v1, 0x2

    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 349
    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 350
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSocket:Ljava/net/DatagramSocket;

    .line 118
    :cond_0
    return-void
.end method

.method protected resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 7
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    const/16 v3, 0x12

    .line 126
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 127
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    const-string v2, "HI_UPNP_VAR_GsensorServerURI"

    invoke-virtual {v0, v2}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getService(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 129
    const-string v0, "gsensor service port is not obtained"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 140
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->dataPacket:Ljava/net/DatagramPacket;

    if-nez v0, :cond_2

    .line 149
    new-array v1, v3, [B

    .line 150
    .local v1, "msgByte":[B
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mAddress:Ljava/net/InetAddress;

    iget v5, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mPort:I

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->dataPacket:Ljava/net/DatagramPacket;

    .line 158
    .end local v1    # "msgByte":[B
    :goto_2
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSocket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_3

    .line 162
    :try_start_1
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSocket:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :cond_0
    :goto_3
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    const-string v2, "HI_UPNP_VAR_GsensorServerURI"

    invoke-virtual {v0, v2}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getService(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->getServicePort()I

    move-result v0

    iput v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mPort:I

    goto :goto_0

    .line 142
    :catch_0
    move-exception v6

    .line 144
    .local v6, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v6}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 154
    .end local v6    # "e":Ljava/net/UnknownHostException;
    :cond_2
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->dataPacket:Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 155
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->dataPacket:Ljava/net/DatagramPacket;

    iget v2, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mPort:I

    invoke-virtual {v0, v2}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_2

    .line 164
    :catch_1
    move-exception v6

    .line 166
    .local v6, "e":Ljava/net/SocketException;
    invoke-virtual {v6}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 169
    .end local v6    # "e":Ljava/net/SocketException;
    :cond_3
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :try_start_2
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSocket:Ljava/net/DatagramSocket;
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 175
    :catch_2
    move-exception v6

    .line 177
    .restart local v6    # "e":Ljava/net/SocketException;
    invoke-virtual {v6}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public sendSensorEvent(IFFF)V
    .locals 5
    .param p1, "sensorType"    # I
    .param p2, "sendX"    # F
    .param p3, "sendY"    # F
    .param p4, "sendZ"    # F

    .prologue
    .line 198
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mAddress:Ljava/net/InetAddress;

    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->getBytes(IFFF)[B

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSendMsg:[B

    .line 207
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->dataPacket:Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSendMsg:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSendMsg:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_2

    .line 213
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSocket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->dataPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    const-string v1, "mSocket is null."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 218
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->mSocket:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
