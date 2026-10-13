.class public Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;
.super Ljava/lang/Object;
.source "RemoteMouse.java"


# static fields
.field public static final MOUSE_ACTION_MOVE:S = 0x100s

.field public static final MOUSE_LEFT_DOUBLE_CLICK:S = 0x302s

.field public static final MOUSE_LEFT_DOWN:S = 0x303s

.field public static final MOUSE_LEFT_DOWN_MOVE:S = 0x305s

.field public static final MOUSE_LEFT_SINGLE_CLICK:S = 0x301s

.field public static final MOUSE_LEFT_UP:S = 0x304s

.field public static final MOUSE_RGIHT_DOWN_MOVE:S = 0x205s

.field public static final MOUSE_RIGHT_DOUBLE_CLICK:S = 0x202s

.field public static final MOUSE_RIGHT_DOWN:S = 0x203s

.field public static final MOUSE_RIGHT_SINGLE_CLICK:S = 0x201s

.field public static final MOUSE_RIGHT_UP:S = 0x204s

.field public static final MOUSE_WHEEL:S = 0x306s

.field public static final MOUSE_WHEEL_DOWN:I = 0x0

.field private static final MOUSE_WHEEL_DOWN_VALUE:F = -10.0f

.field public static final MOUSE_WHEEL_UP:I = 0x2

.field private static final MOUSE_WHEEL_UP_VALUE:F = 10.0f


# instance fields
.field private mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

.field private mRequest:Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;

.field private mSocket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 1
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;

    .line 119
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mSocket:Ljava/net/DatagramSocket;

    .line 129
    if-nez p1, :cond_0

    .line 131
    const-string v0, "device info is null in remote mouse."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    goto :goto_0
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mSocket:Ljava/net/DatagramSocket;

    .line 146
    :cond_0
    return-void
.end method

.method protected resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 4
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    const/4 v3, 0x0

    .line 154
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 156
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;

    const/16 v2, 0x100

    invoke-direct {v1, v2, v3, v3}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;-><init>(SFF)V

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mSocket:Ljava/net/DatagramSocket;

    if-nez v1, :cond_2

    .line 165
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_2
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    :try_start_1
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mSocket:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 178
    :catch_1
    move-exception v0

    .line 180
    .restart local v0    # "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendMouseClickEvent(I)V
    .locals 4
    .param p1, "event_type"    # I

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    if-nez v0, :cond_0

    .line 220
    const-string v0, "mDevice is null"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 224
    :cond_0
    const/16 v0, 0x201

    if-eq p1, v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;

    int-to-short v1, p1

    invoke-virtual {v0, v1, v2, v2}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->setData(SFF)V

    .line 228
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mSocket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    const-string v3, "HI_UPNP_VAR_VinpuServerURI"

    .line 229
    invoke-virtual {v2, v3}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getService(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->getServicePort()I

    move-result v2

    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;

    .line 228
    invoke-static {v0, v1, v2, v3}, Lcom/hisilicon/multiscreen/protocol/utils/UDPClient;->send(Ljava/net/DatagramSocket;Ljava/lang/String;ILcom/hisilicon/multiscreen/protocol/message/Request;)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getRemoteControlCenter()Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteKeyboard()Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    move-result-object v0

    const/16 v1, 0x9e

    .line 235
    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0
.end method

.method public sendMouseMoveEvent(IFF)V
    .locals 4
    .param p1, "event_type"    # I
    .param p2, "sendX"    # F
    .param p3, "sendY"    # F

    .prologue
    .line 198
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    if-nez v0, :cond_0

    .line 200
    const-string v0, "mDevice is null"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;

    int-to-short v1, p1

    invoke-virtual {v0, v1, p2, p3}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->setData(SFF)V

    .line 205
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mSocket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    const-string v3, "HI_UPNP_VAR_VinpuServerURI"

    .line 206
    invoke-virtual {v2, v3}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getService(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->getServicePort()I

    move-result v2

    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;

    .line 205
    invoke-static {v0, v1, v2, v3}, Lcom/hisilicon/multiscreen/protocol/utils/UDPClient;->send(Ljava/net/DatagramSocket;Ljava/lang/String;ILcom/hisilicon/multiscreen/protocol/message/Request;)V

    goto :goto_0
.end method

.method public sendMouseWheelEvent(I)V
    .locals 4
    .param p1, "WheelEvent"    # I

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    if-nez v0, :cond_0

    .line 249
    const-string v0, "mDevice is null"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;

    const/16 v1, 0x306

    invoke-virtual {v0, v1, v2, v2}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->setData(SFF)V

    .line 255
    if-nez p1, :cond_2

    .line 257
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;

    const/high16 v1, -0x3ee00000    # -10.0f

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->setDx(F)V

    .line 264
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mSocket:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    const-string v3, "HI_UPNP_VAR_VinpuServerURI"

    .line 265
    invoke-virtual {v2, v3}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getService(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->getServicePort()I

    move-result v2

    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;

    .line 264
    invoke-static {v0, v1, v2, v3}, Lcom/hisilicon/multiscreen/protocol/utils/UDPClient;->send(Ljava/net/DatagramSocket;Ljava/lang/String;ILcom/hisilicon/multiscreen/protocol/message/Request;)V

    goto :goto_0

    .line 259
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->mRequest:Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->setDx(F)V

    goto :goto_1
.end method
