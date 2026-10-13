.class public interface abstract Lorg/teleal/cling/UpnpServiceConfiguration;
.super Ljava/lang/Object;
.source "UpnpServiceConfiguration.java"


# virtual methods
.method public abstract createDatagramIO(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/spi/DatagramIO;
.end method

.method public abstract createMulticastReceiver(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/spi/MulticastReceiver;
.end method

.method public abstract createNetworkAddressFactory()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
.end method

.method public abstract createStreamClient()Lorg/teleal/cling/transport/spi/StreamClient;
.end method

.method public abstract createStreamServer(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/spi/StreamServer;
.end method

.method public abstract getAsyncProtocolExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getDatagramIOExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getDatagramProcessor()Lorg/teleal/cling/transport/spi/DatagramProcessor;
.end method

.method public abstract getDeviceDescriptorBinderUDA10()Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;
.end method

.method public abstract getExclusiveServiceTypes()[Lorg/teleal/cling/model/types/ServiceType;
.end method

.method public abstract getGenaEventProcessor()Lorg/teleal/cling/transport/spi/GENAEventProcessor;
.end method

.method public abstract getMulticastReceiverExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getNamespace()Lorg/teleal/cling/model/Namespace;
.end method

.method public abstract getRegistryListenerExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getRegistryMaintenanceIntervalMillis()I
.end method

.method public abstract getServiceDescriptorBinderUDA10()Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;
.end method

.method public abstract getSoapActionProcessor()Lorg/teleal/cling/transport/spi/SOAPActionProcessor;
.end method

.method public abstract getStreamServerExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract getSyncProtocolExecutor()Ljava/util/concurrent/Executor;
.end method

.method public abstract shutdown()V
.end method
