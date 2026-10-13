.class public interface abstract Lorg/teleal/cling/registry/RegistryListener;
.super Ljava/lang/Object;
.source "RegistryListener.java"


# virtual methods
.method public abstract afterShutdown()V
.end method

.method public abstract beforeShutdown(Lorg/teleal/cling/registry/Registry;)V
.end method

.method public abstract localDeviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V
.end method

.method public abstract localDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V
.end method

.method public abstract remoteDeviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
.end method

.method public abstract remoteDeviceDiscoveryFailed(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
.end method

.method public abstract remoteDeviceDiscoveryStarted(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
.end method

.method public abstract remoteDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
.end method

.method public abstract remoteDeviceUpdated(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V
.end method
