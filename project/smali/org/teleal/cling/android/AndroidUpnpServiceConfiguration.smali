.class public Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;
.super Lorg/teleal/cling/DefaultUpnpServiceConfiguration;
.source "AndroidUpnpServiceConfiguration.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final connectivityManager:Landroid/net/ConnectivityManager;

.field protected final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V
    .locals 1
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;I)V
    .locals 2
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p3, "streamListenPort"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;-><init>(IZ)V

    .line 86
    iput-object p1, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 87
    iput-object p2, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 90
    const-string v0, "org.xml.sax.driver"

    const-string v1, "org.xmlpull.v1.sax2.Driver"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    return-void
.end method

.method static synthetic access$0()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected createDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 8

    .prologue
    .line 147
    new-instance v0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration$2;

    const/16 v2, 0x8

    const/16 v3, 0x10

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x200

    invoke-direct {v7, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration$2;-><init>(Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 156
    .local v0, "defaultExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    new-instance v1, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration$3;

    invoke-direct {v1, p0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration$3;-><init>(Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;)V

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 171
    return-object v0
.end method

.method protected createDeviceDescriptorBinderUDA10()Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;

    invoke-direct {v0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;-><init>()V

    return-object v0
.end method

.method protected createNetworkAddressFactory(I)Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
    .locals 3
    .param p1, "streamListenPort"    # I

    .prologue
    .line 95
    new-instance v0, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;

    iget-object v1, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/android/AndroidNetworkAddressFactory;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V

    return-object v0
.end method

.method protected createServiceDescriptorBinderUDA10()Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;

    invoke-direct {v0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;-><init>()V

    return-object v0
.end method

.method public createStreamClient()Lorg/teleal/cling/transport/spi/StreamClient;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;

    new-instance v1, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration$1;

    invoke-direct {v1, p0}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration$1;-><init>(Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;)V

    invoke-direct {v0, v1}, Lorg/teleal/cling/transport/impl/apache/StreamClientImpl;-><init>(Lorg/teleal/cling/transport/impl/apache/StreamClientConfigurationImpl;)V

    return-object v0
.end method

.method public createStreamServer(Lorg/teleal/cling/transport/spi/NetworkAddressFactory;)Lorg/teleal/cling/transport/spi/StreamServer;
    .locals 2
    .param p1, "networkAddressFactory"    # Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    .prologue
    .line 100
    new-instance v0, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;

    invoke-interface {p1}, Lorg/teleal/cling/transport/spi/NetworkAddressFactory;->getStreamListenPort()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;-><init>(I)V

    .line 101
    .local v0, "streamServerConfiguration":Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;
    new-instance v1, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;

    invoke-direct {v1, v0}, Lorg/teleal/cling/transport/impl/apache/StreamServerImpl;-><init>(Lorg/teleal/cling/transport/impl/apache/StreamServerConfigurationImpl;)V

    return-object v1
.end method

.method public getRegistryMaintenanceIntervalMillis()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0xbb8

    return v0
.end method
