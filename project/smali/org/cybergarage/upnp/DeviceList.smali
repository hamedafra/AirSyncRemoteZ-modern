.class public Lorg/cybergarage/upnp/DeviceList;
.super Ljava/util/Vector;
.source "DeviceList.java"


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "deviceList"


# instance fields
.field private mutex:Lorg/cybergarage/util/Mutex;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 55
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/DeviceList;->mutex:Lorg/cybergarage/util/Mutex;

    .line 36
    return-void
.end method


# virtual methods
.method public getDevice(I)Lorg/cybergarage/upnp/Device;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/DeviceList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Device;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/cybergarage/upnp/DeviceList;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 60
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/cybergarage/upnp/DeviceList;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 65
    return-void
.end method
