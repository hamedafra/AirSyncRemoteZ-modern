.class public Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;
.super Ljava/lang/Object;
.source "RemoteKeyboard.java"


# instance fields
.field private mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

.field private mRequest:Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;

.field private mSocket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 1
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 24
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;

    .line 26
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mSocket:Ljava/net/DatagramSocket;

    .line 36
    if-nez p1, :cond_0

    .line 38
    const-string v0, "device info is null in remote keyboard."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    goto :goto_0
.end method

.method private sendToVirtualDriver(IS)V
    .locals 5
    .param p1, "keycode"    # I
    .param p2, "updownState"    # S

    .prologue
    .line 413
    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    if-nez v3, :cond_1

    .line 415
    const-string v3, "mDevice is null"

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "ip":Ljava/lang/String;
    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    const-string v4, "HI_UPNP_VAR_VinpuServerURI"

    invoke-virtual {v3, v4}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getService(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v2

    .line 422
    .local v2, "service":Lcom/hisilicon/multiscreen/protocol/ServiceInfo;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 428
    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->getServicePort()I

    move-result v1

    .line 429
    .local v1, "port":I
    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;

    invoke-virtual {v3, p1, p2}, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->setData(II)V

    .line 430
    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mSocket:Ljava/net/DatagramSocket;

    iget-object v4, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;

    invoke-static {v3, v0, v1, v4}, Lcom/hisilicon/multiscreen/protocol/utils/UDPClient;->send(Ljava/net/DatagramSocket;Ljava/lang/String;ILcom/hisilicon/multiscreen/protocol/message/Request;)V

    goto :goto_0
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mSocket:Ljava/net/DatagramSocket;

    .line 56
    :cond_0
    return-void
.end method

.method protected resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 4
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 66
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;-><init>(II)V

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mSocket:Ljava/net/DatagramSocket;

    if-nez v1, :cond_2

    .line 75
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_2
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    :try_start_1
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->mSocket:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 90
    .restart local v0    # "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendDownAndUpKeyCode(I)V
    .locals 5
    .param p1, "keycode"    # I

    .prologue
    const/16 v4, 0x2a

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 121
    const/4 v0, -0x1

    .line 122
    .local v0, "key_value":I
    const/4 v1, 0x0

    .line 125
    .local v1, "shift_press":Z
    sparse-switch p1, :sswitch_data_0

    .line 385
    move v0, p1

    .line 389
    :goto_0
    if-ne v2, v1, :cond_0

    .line 391
    invoke-direct {p0, v4, v2}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendToVirtualDriver(IS)V

    .line 392
    invoke-direct {p0, v0, v2}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendToVirtualDriver(IS)V

    .line 393
    invoke-direct {p0, v0, v3}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendToVirtualDriver(IS)V

    .line 394
    invoke-direct {p0, v4, v3}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendToVirtualDriver(IS)V

    .line 401
    :goto_1
    return-void

    .line 128
    :sswitch_0
    const/16 v0, 0x1e

    .line 129
    const/4 v1, 0x1

    .line 130
    goto :goto_0

    .line 134
    :sswitch_1
    const/16 v0, 0x30

    .line 135
    const/4 v1, 0x1

    .line 136
    goto :goto_0

    .line 139
    :sswitch_2
    const/16 v0, 0x2e

    .line 140
    const/4 v1, 0x1

    .line 141
    goto :goto_0

    .line 144
    :sswitch_3
    const/16 v0, 0x20

    .line 145
    const/4 v1, 0x1

    .line 146
    goto :goto_0

    .line 149
    :sswitch_4
    const/16 v0, 0x12

    .line 150
    const/4 v1, 0x1

    .line 151
    goto :goto_0

    .line 154
    :sswitch_5
    const/16 v0, 0x21

    .line 155
    const/4 v1, 0x1

    .line 156
    goto :goto_0

    .line 159
    :sswitch_6
    const/16 v0, 0x22

    .line 160
    const/4 v1, 0x1

    .line 161
    goto :goto_0

    .line 164
    :sswitch_7
    const/16 v0, 0x23

    .line 165
    const/4 v1, 0x1

    .line 166
    goto :goto_0

    .line 169
    :sswitch_8
    const/16 v0, 0x17

    .line 170
    const/4 v1, 0x1

    .line 171
    goto :goto_0

    .line 174
    :sswitch_9
    const/16 v0, 0x24

    .line 175
    const/4 v1, 0x1

    .line 176
    goto :goto_0

    .line 179
    :sswitch_a
    const/16 v0, 0x25

    .line 180
    const/4 v1, 0x1

    .line 181
    goto :goto_0

    .line 184
    :sswitch_b
    const/16 v0, 0x26

    .line 185
    const/4 v1, 0x1

    .line 186
    goto :goto_0

    .line 189
    :sswitch_c
    const/16 v0, 0x32

    .line 190
    const/4 v1, 0x1

    .line 191
    goto :goto_0

    .line 194
    :sswitch_d
    const/16 v0, 0x31

    .line 195
    const/4 v1, 0x1

    .line 196
    goto :goto_0

    .line 199
    :sswitch_e
    const/16 v0, 0x18

    .line 200
    const/4 v1, 0x1

    .line 201
    goto :goto_0

    .line 204
    :sswitch_f
    const/16 v0, 0x19

    .line 205
    const/4 v1, 0x1

    .line 206
    goto :goto_0

    .line 209
    :sswitch_10
    const/16 v0, 0x10

    .line 210
    const/4 v1, 0x1

    .line 211
    goto :goto_0

    .line 214
    :sswitch_11
    const/16 v0, 0x13

    .line 215
    const/4 v1, 0x1

    .line 216
    goto :goto_0

    .line 219
    :sswitch_12
    const/16 v0, 0x1f

    .line 220
    const/4 v1, 0x1

    .line 221
    goto :goto_0

    .line 224
    :sswitch_13
    const/16 v0, 0x14

    .line 225
    const/4 v1, 0x1

    .line 226
    goto :goto_0

    .line 229
    :sswitch_14
    const/16 v0, 0x16

    .line 230
    const/4 v1, 0x1

    .line 231
    goto :goto_0

    .line 234
    :sswitch_15
    const/16 v0, 0x2f

    .line 235
    const/4 v1, 0x1

    .line 236
    goto :goto_0

    .line 239
    :sswitch_16
    const/16 v0, 0x11

    .line 240
    const/4 v1, 0x1

    .line 241
    goto :goto_0

    .line 244
    :sswitch_17
    const/16 v0, 0x2d

    .line 245
    const/4 v1, 0x1

    .line 246
    goto :goto_0

    .line 249
    :sswitch_18
    const/16 v0, 0x15

    .line 250
    const/4 v1, 0x1

    .line 251
    goto :goto_0

    .line 254
    :sswitch_19
    const/16 v0, 0x2c

    .line 255
    const/4 v1, 0x1

    .line 256
    goto :goto_0

    .line 260
    :sswitch_1a
    const/16 v0, 0x29

    .line 261
    const/4 v1, 0x1

    .line 262
    goto :goto_0

    .line 266
    :sswitch_1b
    const/4 v0, 0x2

    .line 267
    const/4 v1, 0x1

    .line 268
    goto :goto_0

    .line 272
    :sswitch_1c
    const/4 v0, 0x3

    .line 273
    const/4 v1, 0x1

    .line 274
    goto :goto_0

    .line 278
    :sswitch_1d
    const/4 v0, 0x4

    .line 279
    const/4 v1, 0x1

    .line 280
    goto/16 :goto_0

    .line 284
    :sswitch_1e
    const/4 v0, 0x5

    .line 285
    const/4 v1, 0x1

    .line 286
    goto/16 :goto_0

    .line 290
    :sswitch_1f
    const/4 v0, 0x6

    .line 291
    const/4 v1, 0x1

    .line 292
    goto/16 :goto_0

    .line 296
    :sswitch_20
    const/4 v0, 0x7

    .line 297
    const/4 v1, 0x1

    .line 298
    goto/16 :goto_0

    .line 302
    :sswitch_21
    const/16 v0, 0x8

    .line 303
    const/4 v1, 0x1

    .line 304
    goto/16 :goto_0

    .line 308
    :sswitch_22
    const/16 v0, 0x9

    .line 309
    const/4 v1, 0x1

    .line 310
    goto/16 :goto_0

    .line 314
    :sswitch_23
    const/16 v0, 0xa

    .line 315
    const/4 v1, 0x1

    .line 316
    goto/16 :goto_0

    .line 320
    :sswitch_24
    const/16 v0, 0xb

    .line 321
    const/4 v1, 0x1

    .line 322
    goto/16 :goto_0

    .line 326
    :sswitch_25
    const/16 v0, 0xc

    .line 327
    const/4 v1, 0x1

    .line 328
    goto/16 :goto_0

    .line 332
    :sswitch_26
    const/16 v0, 0xd

    .line 333
    const/4 v1, 0x1

    .line 334
    goto/16 :goto_0

    .line 338
    :sswitch_27
    const/16 v0, 0x35

    .line 339
    const/4 v1, 0x1

    .line 340
    goto/16 :goto_0

    .line 344
    :sswitch_28
    const/16 v0, 0x1a

    .line 345
    const/4 v1, 0x1

    .line 346
    goto/16 :goto_0

    .line 350
    :sswitch_29
    const/16 v0, 0x27

    .line 351
    const/4 v1, 0x1

    .line 352
    goto/16 :goto_0

    .line 356
    :sswitch_2a
    const/16 v0, 0x28

    .line 357
    const/4 v1, 0x1

    .line 358
    goto/16 :goto_0

    .line 362
    :sswitch_2b
    const/16 v0, 0x2b

    .line 363
    const/4 v1, 0x1

    .line 364
    goto/16 :goto_0

    .line 368
    :sswitch_2c
    const/16 v0, 0x1b

    .line 369
    const/4 v1, 0x1

    .line 370
    goto/16 :goto_0

    .line 374
    :sswitch_2d
    const/16 v0, 0x33

    .line 375
    const/4 v1, 0x1

    .line 376
    goto/16 :goto_0

    .line 380
    :sswitch_2e
    const/16 v0, 0x34

    .line 381
    const/4 v1, 0x1

    .line 382
    goto/16 :goto_0

    .line 398
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendToVirtualDriver(IS)V

    .line 399
    invoke-direct {p0, v0, v3}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendToVirtualDriver(IS)V

    goto/16 :goto_1

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        0x4e -> :sswitch_26
        0x78 -> :sswitch_27
        0xd8 -> :sswitch_10
        0xda -> :sswitch_4
        0xdb -> :sswitch_11
        0xdc -> :sswitch_13
        0xdd -> :sswitch_18
        0xde -> :sswitch_14
        0xdf -> :sswitch_8
        0xe0 -> :sswitch_e
        0xe1 -> :sswitch_f
        0xe6 -> :sswitch_0
        0xe7 -> :sswitch_12
        0xe8 -> :sswitch_3
        0xe9 -> :sswitch_5
        0xea -> :sswitch_6
        0xeb -> :sswitch_7
        0xec -> :sswitch_9
        0xed -> :sswitch_a
        0xee -> :sswitch_b
        0xf4 -> :sswitch_19
        0xf5 -> :sswitch_17
        0xf6 -> :sswitch_2
        0xf7 -> :sswitch_15
        0xf8 -> :sswitch_1
        0xf9 -> :sswitch_d
        0xfa -> :sswitch_c
        0x12e -> :sswitch_1b
        0x12f -> :sswitch_1c
        0x130 -> :sswitch_1d
        0x131 -> :sswitch_1e
        0x132 -> :sswitch_1f
        0x133 -> :sswitch_20
        0x134 -> :sswitch_21
        0x135 -> :sswitch_22
        0x136 -> :sswitch_23
        0x137 -> :sswitch_24
        0x138 -> :sswitch_25
        0x13d -> :sswitch_16
        0x146 -> :sswitch_28
        0x147 -> :sswitch_2c
        0x153 -> :sswitch_29
        0x154 -> :sswitch_2a
        0x155 -> :sswitch_1a
        0x157 -> :sswitch_2b
        0x15f -> :sswitch_2d
        0x160 -> :sswitch_2e
    .end sparse-switch
.end method

.method public sendDownOrUpKeyCode(IS)V
    .locals 1
    .param p1, "keycode"    # I
    .param p2, "event_type"    # S

    .prologue
    .line 106
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    .line 108
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendToVirtualDriver(IS)V

    .line 110
    :cond_1
    return-void
.end method
