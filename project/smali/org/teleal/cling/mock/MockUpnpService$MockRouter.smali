.class public Lorg/teleal/cling/mock/MockUpnpService$MockRouter;
.super Ljava/lang/Object;
.source "MockUpnpService.java"

# interfaces
.implements Lorg/teleal/cling/transport/Router;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/mock/MockUpnpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MockRouter"
.end annotation


# instance fields
.field counter:I

.field final synthetic this$0:Lorg/teleal/cling/mock/MockUpnpService;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/mock/MockUpnpService;)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->counter:I

    return-void
.end method


# virtual methods
.method public broadcast([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 270
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    invoke-static {v0}, Lorg/teleal/cling/mock/MockUpnpService;->access$4(Lorg/teleal/cling/mock/MockUpnpService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public getActiveStreamServers(Ljava/net/InetAddress;)Ljava/util/List;
    .locals 6
    .param p1, "preferredAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/NetworkAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lorg/teleal/cling/model/NetworkAddress;

    const/4 v2, 0x0

    .line 235
    new-instance v3, Lorg/teleal/cling/model/NetworkAddress;

    .line 236
    const-string v4, "127.0.0.1"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 237
    const/4 v5, 0x0

    .line 235
    invoke-direct {v3, v4, v5}, Lorg/teleal/cling/model/NetworkAddress;-><init>(Ljava/net/InetAddress;I)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    iget-object v0, v0, Lorg/teleal/cling/mock/MockUpnpService;->configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

    return-object v0
.end method

.method public getNetworkAddressFactory()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    iget-object v0, v0, Lorg/teleal/cling/mock/MockUpnpService;->networkAddressFactory:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    return-object v0
.end method

.method public getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    iget-object v0, v0, Lorg/teleal/cling/mock/MockUpnpService;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    return-object v0
.end method

.method public getStreamClient()Lorg/teleal/cling/transport/spi/StreamClient;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public received(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    .locals 1
    .param p1, "msg"    # Lorg/teleal/cling/model/message/IncomingDatagramMessage;

    .prologue
    .line 250
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    invoke-static {v0}, Lorg/teleal/cling/mock/MockUpnpService;->access$0(Lorg/teleal/cling/mock/MockUpnpService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public received(Lorg/teleal/cling/transport/spi/UpnpStream;)V
    .locals 1
    .param p1, "stream"    # Lorg/teleal/cling/transport/spi/UpnpStream;

    .prologue
    .line 254
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    invoke-static {v0}, Lorg/teleal/cling/mock/MockUpnpService;->access$1(Lorg/teleal/cling/mock/MockUpnpService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public send(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 2
    .param p1, "msg"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    .line 262
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    invoke-static {v0}, Lorg/teleal/cling/mock/MockUpnpService;->access$3(Lorg/teleal/cling/mock/MockUpnpService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->counter:I

    .line 264
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    invoke-virtual {v0}, Lorg/teleal/cling/mock/MockUpnpService;->getStreamResponseMessages()[Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    invoke-virtual {v0}, Lorg/teleal/cling/mock/MockUpnpService;->getStreamResponseMessages()[Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0

    iget v1, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->counter:I

    aget-object v0, v0, v1

    .line 264
    :goto_0
    return-object v0

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    invoke-virtual {v0, p1}, Lorg/teleal/cling/mock/MockUpnpService;->getStreamResponseMessage(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V
    .locals 1
    .param p1, "msg"    # Lorg/teleal/cling/model/message/OutgoingDatagramMessage;

    .prologue
    .line 258
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    invoke-static {v0}, Lorg/teleal/cling/mock/MockUpnpService;->access$2(Lorg/teleal/cling/mock/MockUpnpService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method
