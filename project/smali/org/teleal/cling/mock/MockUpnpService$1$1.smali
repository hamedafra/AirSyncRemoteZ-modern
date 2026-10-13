.class Lorg/teleal/cling/mock/MockUpnpService$1$1;
.super Lorg/teleal/cling/transport/impl/NetworkAddressFactoryImpl;
.source "MockUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/mock/MockUpnpService$1;->createNetworkAddressFactory(I)Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/teleal/cling/mock/MockUpnpService$1;


# direct methods
.method constructor <init>(Lorg/teleal/cling/mock/MockUpnpService$1;I)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/transport/spi/InitializationException;
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/mock/MockUpnpService$1$1;->this$1:Lorg/teleal/cling/mock/MockUpnpService$1;

    .line 106
    invoke-direct {p0, p2}, Lorg/teleal/cling/transport/impl/NetworkAddressFactoryImpl;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected isUsableAddress(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)Z
    .locals 1
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p2, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 114
    invoke-virtual {p2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUsableNetworkInterface(Ljava/net/NetworkInterface;)Z
    .locals 1
    .param p1, "iface"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v0

    return v0
.end method
