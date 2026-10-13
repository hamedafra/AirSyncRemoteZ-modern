.class public Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;
.super Ljava/lang/Object;
.source "RemoteControlCenter.java"


# instance fields
.field private mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

.field private mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

.field private mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

.field private mRemoteMedia:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;

.field private mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

.field private mSensor:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

.field private mTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 1
    .param p1, "device"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 13
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    .line 15
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    .line 17
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    .line 19
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mSensor:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    .line 21
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteMedia:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;

    .line 23
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    .line 32
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 33
    return-void
.end method

.method private destroyKeyboard()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->destroy()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    .line 207
    :cond_0
    return-void
.end method

.method private destroyMouse()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->destroy()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    .line 233
    :cond_0
    return-void
.end method

.method private destroyRemoteMedia()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteMedia:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteMedia:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;->destroy()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteMedia:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;

    .line 259
    :cond_0
    return-void
.end method

.method private destroyRemoteSpeech()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->destroy()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    .line 272
    :cond_0
    return-void
.end method

.method private destroySensor()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mSensor:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mSensor:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->destroy()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mSensor:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    .line 246
    :cond_0
    return-void
.end method

.method private destroyTouch()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->destroy()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->destroyKeyboard()V

    .line 187
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->destroyTouch()V

    .line 188
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->destroyMouse()V

    .line 189
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->destroySensor()V

    .line 190
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->destroyRemoteMedia()V

    .line 191
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->destroyRemoteSpeech()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 194
    return-void
.end method

.method public getDeviceIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteKeyboard()Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;-><init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    return-object v0
.end method

.method public getRemoteMedia()Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteMedia:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;-><init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteMedia:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteMedia:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;

    return-object v0
.end method

.method public getRemoteMouse()Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;-><init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mMouse:Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    return-object v0
.end method

.method public getRemoteSensor()Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mSensor:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;-><init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mSensor:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mSensor:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    return-object v0
.end method

.method public getRemoteSpeechControl()Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;-><init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    return-object v0
.end method

.method public getRemoteTouch()Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;-><init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 1
    .param p1, "device"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->mHiDevice:Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .line 43
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteKeyboard()Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    .line 44
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteTouch()Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    .line 45
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteMouse()Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMouse;->resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    .line 46
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteSensor()Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    .line 47
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteSpeechControl()Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    .line 48
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteMedia()Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteMedia;->resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    .line 49
    return-void
.end method
