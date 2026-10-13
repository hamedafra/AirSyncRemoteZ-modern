.class public Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;
.super Ljava/lang/Object;
.source "RemotePushing.java"


# static fields
.field private static final SOCKET_CONNECT_TIME_OUT:I = 0x1f4


# instance fields
.field private mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 1
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 46
    if-nez p1, :cond_0

    .line 48
    const-string v0, "device info is null in remote pushing."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;->resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public pushing(Lcom/hisilicon/multiscreen/protocol/message/PushMessage;)Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
    .locals 11
    .param p1, "msg"    # Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 79
    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-virtual {v9}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "servIp":Ljava/lang/String;
    new-instance v7, Ljava/net/Socket;

    invoke-direct {v7}, Ljava/net/Socket;-><init>()V

    .line 82
    .local v7, "socket":Ljava/net/Socket;
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    const-string v10, "pushserver"

    .line 84
    invoke-virtual {v9, v10}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getService(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->getServicePort()I

    move-result v9

    invoke-direct {v4, v6, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 87
    .local v4, "remoteAddr":Ljava/net/SocketAddress;
    const/16 v9, 0x1f4

    :try_start_0
    invoke-virtual {v7, v4, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    .local v3, "out":Ljava/io/DataOutputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 105
    .local v2, "in":Ljava/io/DataInputStream;
    invoke-virtual {p1, v3}, Lcom/hisilicon/multiscreen/protocol/message/PushMessage;->sendOutputMsg(Ljava/io/DataOutputStream;)V

    .line 108
    const/4 v5, 0x0

    .line 109
    .local v5, "response":Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;-><init>()V

    .line 110
    .local v1, "head":Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;
    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;->readInputMsg(Ljava/io/DataInputStream;)V

    .line 111
    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;->getType()I

    move-result v8

    .line 112
    .local v8, "type":I
    packed-switch v8, :pswitch_data_0

    .line 125
    new-instance v5, Lcom/hisilicon/multiscreen/protocol/message/DefaultResponseMessage;

    .end local v5    # "response":Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
    invoke-direct {v5}, Lcom/hisilicon/multiscreen/protocol/message/DefaultResponseMessage;-><init>()V

    .line 126
    .restart local v5    # "response":Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
    invoke-virtual {v5, v2}, Lcom/hisilicon/multiscreen/protocol/message/PushMessage;->readBody(Ljava/io/DataInputStream;)V

    .line 131
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 132
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 133
    invoke-virtual {v7}, Ljava/net/Socket;->close()V

    .line 135
    .end local v1    # "head":Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .end local v5    # "response":Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
    .end local v8    # "type":I
    :goto_1
    return-object v5

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/net/Socket;->close()V

    .line 92
    const-string v9, "Illegal Argument Exception."

    invoke-static {v9}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/net/Socket;->close()V

    .line 98
    const-string v9, "IO Exception"

    invoke-static {v9}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "head":Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "response":Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
    .restart local v8    # "type":I
    :pswitch_0
    new-instance v5, Lcom/hisilicon/multiscreen/protocol/message/AppListResponseMessage;

    .end local v5    # "response":Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
    invoke-direct {v5}, Lcom/hisilicon/multiscreen/protocol/message/AppListResponseMessage;-><init>()V

    .line 117
    .restart local v5    # "response":Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
    invoke-virtual {v5, v1}, Lcom/hisilicon/multiscreen/protocol/message/PushMessage;->setHead(Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;)V

    .line 118
    invoke-virtual {v5, v2}, Lcom/hisilicon/multiscreen/protocol/message/PushMessage;->readBody(Ljava/io/DataInputStream;)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x303
        :pswitch_0
    .end packed-switch
.end method

.method protected resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 0
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 65
    return-void
.end method
