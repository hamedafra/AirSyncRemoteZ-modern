.class public Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;
.super Ljava/lang/Object;
.source "RemoteMedia.java"


# instance fields
.field private mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

.field private mRemotePushing:Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 18
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;->mRemotePushing:Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;

    .line 29
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 30
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;-><init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;->mRemotePushing:Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;

    .line 31
    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public playMedia(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 83
    :try_start_0
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;-><init>()V

    .line 84
    .local v1, "head":Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;
    const/16 v3, 0x305

    invoke-virtual {v1, v3}, Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;->setType(I)V

    .line 86
    new-instance v2, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;

    invoke-direct {v2}, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;-><init>()V

    .line 87
    .local v2, "msg":Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;
    invoke-virtual {v2, v1}, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;->setHead(Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;)V

    .line 88
    invoke-virtual {v2, p1}, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;->setMediaType(I)V

    .line 89
    invoke-virtual {v2, p2}, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;->setUrl(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;->mRemotePushing:Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;

    invoke-virtual {v3, v2}, Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;->pushing(Lcom/hisilicon/multiscreen/protocol/message/PushMessage;)Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "head":Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;
    .end local v2    # "msg":Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 1
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;->mDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 47
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;->mRemotePushing:Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemotePushing;->resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    .line 48
    return-void
.end method
