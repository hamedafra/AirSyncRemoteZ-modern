.class public Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;
.super Ljava/lang/Object;
.source "RemoteTouch.java"


# instance fields
.field private mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

.field private mSocket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 1
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 23
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->mSocket:Ljava/net/DatagramSocket;

    .line 33
    if-nez p1, :cond_0

    .line 35
    const-string v0, "device info is null in remote touch."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->mSocket:Ljava/net/DatagramSocket;

    .line 54
    :cond_0
    return-void
.end method

.method protected resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 64
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->mSocket:Ljava/net/DatagramSocket;

    if-nez v1, :cond_1

    .line 68
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->mSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :try_start_1
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->mSocket:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendMultiTouchEvent(Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;)V
    .locals 5
    .param p1, "mtInfo"    # Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    .prologue
    .line 96
    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "ip":Ljava/lang/String;
    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    const-string v4, "HI_UPNP_VAR_VinpuServerURI"

    invoke-virtual {v3, v4}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getService(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v2

    .line 98
    .local v2, "service":Lcom/hisilicon/multiscreen/protocol/ServiceInfo;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->getServicePort()I

    move-result v1

    .line 105
    .local v1, "port":I
    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->mSocket:Ljava/net/DatagramSocket;

    invoke-static {v3, v0, v1, p1}, Lcom/hisilicon/multiscreen/protocol/utils/UDPClient;->send(Ljava/net/DatagramSocket;Ljava/lang/String;ILcom/hisilicon/multiscreen/protocol/message/Request;)V

    goto :goto_0
.end method
