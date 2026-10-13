.class public interface abstract Lorg/teleal/cling/registry/Registry;
.super Ljava/lang/Object;
.source "Registry.java"


# virtual methods
.method public abstract addDevice(Lorg/teleal/cling/model/meta/LocalDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/registry/RegistrationException;
        }
    .end annotation
.end method

.method public abstract addDevice(Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/registry/RegistrationException;
        }
    .end annotation
.end method

.method public abstract addListener(Lorg/teleal/cling/registry/RegistryListener;)V
.end method

.method public abstract addLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)V
.end method

.method public abstract addRemoteSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
.end method

.method public abstract addResource(Lorg/teleal/cling/model/resource/Resource;)V
.end method

.method public abstract addResource(Lorg/teleal/cling/model/resource/Resource;I)V
.end method

.method public abstract getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;
.end method

.method public abstract getDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;
.end method

.method public abstract getDevices()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDevices(Lorg/teleal/cling/model/types/DeviceType;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/DeviceType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDevices(Lorg/teleal/cling/model/types/ServiceType;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/ServiceType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getListeners()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/registry/RegistryListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocalDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/LocalDevice;
.end method

.method public abstract getLocalDevices()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/LocalDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocalSubscription(Ljava/lang/String;)Lorg/teleal/cling/model/gena/LocalGENASubscription;
.end method

.method public abstract getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;
.end method

.method public abstract getRemoteDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/RemoteDevice;
.end method

.method public abstract getRemoteDevices()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/RemoteDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRemoteSubscription(Ljava/lang/String;)Lorg/teleal/cling/model/gena/RemoteGENASubscription;
.end method

.method public abstract getResource(Ljava/lang/Class;Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/teleal/cling/model/resource/Resource;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/net/URI;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getResource(Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getResources()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/resource/Resource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResources(Ljava/lang/Class;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/teleal/cling/model/resource/Resource;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getService(Lorg/teleal/cling/model/ServiceReference;)Lorg/teleal/cling/model/meta/Service;
.end method

.method public abstract getUpnpService()Lorg/teleal/cling/UpnpService;
.end method

.method public abstract isPaused()Z
.end method

.method public abstract lockRemoteSubscriptions()V
.end method

.method public abstract notifyDiscoveryFailure(Lorg/teleal/cling/model/meta/RemoteDevice;Ljava/lang/Exception;)V
.end method

.method public abstract notifyDiscoveryStart(Lorg/teleal/cling/model/meta/RemoteDevice;)Z
.end method

.method public abstract pause()V
.end method

.method public abstract removeAllLocalDevices()V
.end method

.method public abstract removeAllRemoteDevices()V
.end method

.method public abstract removeDevice(Lorg/teleal/cling/model/meta/LocalDevice;)Z
.end method

.method public abstract removeDevice(Lorg/teleal/cling/model/meta/RemoteDevice;)Z
.end method

.method public abstract removeDevice(Lorg/teleal/cling/model/types/UDN;)Z
.end method

.method public abstract removeListener(Lorg/teleal/cling/registry/RegistryListener;)V
.end method

.method public abstract removeLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Z
.end method

.method public abstract removeRemoteSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
.end method

.method public abstract removeResource(Lorg/teleal/cling/model/resource/Resource;)Z
.end method

.method public abstract resume()V
.end method

.method public abstract shutdown()V
.end method

.method public abstract unlockRemoteSubscriptions()V
.end method

.method public abstract update(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)Z
.end method

.method public abstract updateLocalSubscription(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Z
.end method

.method public abstract updateRemoteSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
.end method
