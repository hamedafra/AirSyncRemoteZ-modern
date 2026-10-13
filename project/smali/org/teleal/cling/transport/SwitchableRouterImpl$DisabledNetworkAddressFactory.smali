.class Lorg/teleal/cling/transport/SwitchableRouterImpl$DisabledNetworkAddressFactory;
.super Ljava/lang/Object;
.source "SwitchableRouterImpl.java"

# interfaces
.implements Lorg/teleal/cling/transport/spi/NetworkAddressFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/transport/SwitchableRouterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisabledNetworkAddressFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/transport/SwitchableRouterImpl;


# direct methods
.method constructor <init>(Lorg/teleal/cling/transport/SwitchableRouterImpl;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lorg/teleal/cling/transport/SwitchableRouterImpl$DisabledNetworkAddressFactory;->this$0:Lorg/teleal/cling/transport/SwitchableRouterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindAddresses()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public getBroadcastAddress(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 1
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHardwareAddress(Ljava/net/InetAddress;)[B
    .locals 1
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 258
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getLocalAddress(Ljava/net/NetworkInterface;ZLjava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 1
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;
    .param p2, "isIPv6"    # Z
    .param p3, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMulticastGroup()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMulticastPort()I
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkInterfaces()[Ljava/net/NetworkInterface;
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public getStreamListenPort()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method
