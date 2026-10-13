.class public Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;
.super Lorg/cybergarage/upnp/DeviceList;
.source "MultiScreenDeviceList.java"


# static fields
.field private static final serialVersionUID:J = 0x2605549a7a33621fL


# instance fields
.field private mutex:Lorg/cybergarage/util/Mutex;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/cybergarage/upnp/DeviceList;-><init>()V

    .line 17
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->mutex:Lorg/cybergarage/util/Mutex;

    return-void
.end method


# virtual methods
.method public lock()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 22
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 27
    return-void
.end method
