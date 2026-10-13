.class public Lcom/hisilicon/multiscreen/controller/DeviceDiscover;
.super Ljava/lang/Object;
.source "DeviceDiscover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/multiscreen/controller/DeviceDiscover$DeviceListComparator;
    }
.end annotation


# instance fields
.field private mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

.field private mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

.field private mOriginalList:Lorg/cybergarage/upnp/DeviceList;

.field private mStartControlPointRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 29
    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    .line 31
    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    .line 33
    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mStartControlPointRunnable:Ljava/lang/Runnable;

    .line 41
    invoke-static {}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getInstance()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .line 42
    new-instance v0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    .line 43
    new-instance v0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover$1;-><init>(Lcom/hisilicon/multiscreen/controller/DeviceDiscover;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mStartControlPointRunnable:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/multiscreen/controller/DeviceDiscover;)Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    return-object v0
.end method

.method private filterMultiScreenList()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->lock()V

    .line 228
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->clear()V

    .line 229
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->unlock()V

    .line 240
    return-void
.end method

.method private sortMultiScreenDeviceList(Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;)V
    .locals 1
    .param p1, "deviceList"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    .prologue
    .line 273
    new-instance v0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover$DeviceListComparator;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover$DeviceListComparator;-><init>(Lcom/hisilicon/multiscreen/controller/DeviceDiscover;)V

    .line 274
    .local v0, "devComparator":Lcom/hisilicon/multiscreen/controller/DeviceDiscover$DeviceListComparator;
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->lock()V

    .line 275
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 276
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->unlock()V

    .line 277
    return-void
.end method


# virtual methods
.method public clearAllList()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeAlldevice()V

    .line 141
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->clear()V

    .line 142
    return-void
.end method

.method public clearOriginalList()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeAlldevice()V

    .line 119
    return-void
.end method

.method public finalizeSearch()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->stopControl()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v0, "mControlPoint is null."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDeviceByIP(Ljava/net/InetAddress;)Lorg/cybergarage/upnp/Device;
    .locals 4
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 200
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "ipAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    iput-object v2, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    .line 202
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->lock()V

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->uri2Ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->unlock()V

    .line 212
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 218
    :goto_1
    return-object v2

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->unlock()V

    .line 218
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getDeviceByUUID(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    .line 173
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->lock()V

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->unlock()V

    .line 183
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 189
    :goto_1
    return-object v1

    .line 175
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->unlock()V

    .line 189
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDeviceList()Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    return-object v0
.end method

.method public initSearch()V
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mStartControlPointRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    .local v0, "localThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 58
    const-string v1, "initSearchThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    .end local v0    # "localThread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v1, "mControlPoint is null."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isOriginalListEmpty()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    .line 129
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mOriginalList:Lorg/cybergarage/upnp/DeviceList;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/DeviceList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public msearch()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    const-string v1, "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->search(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public reSearch()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->clearOriginalList()V

    .line 95
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->msearch()V

    .line 96
    return-void
.end method

.method public removeCannotAccessDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mControlPoint:Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeCannotAccessDevice(Lorg/cybergarage/upnp/Device;)V

    .line 156
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->msearch()V

    .line 157
    return-void
.end method

.method public removeDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 3
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->lock()V

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-virtual {v1, v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-virtual {v1, v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->remove(I)Ljava/lang/Object;

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->unlock()V

    .line 110
    return-void
.end method

.method public syncOrderingList()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->filterMultiScreenList()V

    .line 150
    iget-object v0, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->mDeviceList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->sortMultiScreenDeviceList(Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;)V

    .line 151
    return-void
.end method
