.class public Lorg/teleal/cling/registry/DefaultRegistryListener;
.super Ljava/lang/Object;
.source "DefaultRegistryListener.java"

# interfaces
.implements Lorg/teleal/cling/registry/RegistryListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterShutdown()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public beforeShutdown(Lorg/teleal/cling/registry/Registry;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;

    .prologue
    .line 98
    return-void
.end method

.method public deviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 90
    return-void
.end method

.method public deviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 94
    return-void
.end method

.method public localDeviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->deviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V

    .line 76
    return-void
.end method

.method public localDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->deviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V

    .line 86
    return-void
.end method

.method public remoteDeviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->deviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V

    .line 52
    return-void
.end method

.method public remoteDeviceDiscoveryFailed(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/RemoteDevice;
    .param p3, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 42
    return-void
.end method

.method public remoteDeviceDiscoveryStarted(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    .line 38
    return-void
.end method

.method public remoteDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/registry/DefaultRegistryListener;->deviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/Device;)V

    .line 66
    return-void
.end method

.method public remoteDeviceUpdated(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/Registry;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    .line 56
    return-void
.end method
