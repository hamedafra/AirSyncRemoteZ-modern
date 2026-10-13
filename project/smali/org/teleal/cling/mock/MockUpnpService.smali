.class public Lorg/teleal/cling/mock/MockUpnpService;
.super Ljava/lang/Object;
.source "MockUpnpService.java"

# interfaces
.implements Lorg/teleal/cling/UpnpService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;,
        Lorg/teleal/cling/mock/MockUpnpService$MockRouter;
    }
.end annotation


# instance fields
.field private broadcastedBytes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field protected final configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

.field protected final controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

.field private incomingDatagramMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/message/IncomingDatagramMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected final networkAddressFactory:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

.field private outgoingDatagramMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/message/OutgoingDatagramMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected final protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

.field private receivedUpnpStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/transport/spi/UpnpStream;",
            ">;"
        }
    .end annotation
.end field

.field protected final registry:Lorg/teleal/cling/registry/Registry;

.field protected final router:Lorg/teleal/cling/transport/Router;

.field private sentStreamRequestMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/message/StreamRequestMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0, v0, v0}, Lorg/teleal/cling/mock/MockUpnpService;-><init>(ZZZ)V

    .line 91
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "sendsAlive"    # Z
    .param p2, "maintainsRegistry"    # Z

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/mock/MockUpnpService;-><init>(ZZZ)V

    .line 98
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 4
    .param p1, "sendsAlive"    # Z
    .param p2, "maintainsRegistry"    # Z
    .param p3, "multiThreaded"    # Z

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->incomingDatagramMessages:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->outgoingDatagramMessages:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->receivedUpnpStreams:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->sentStreamRequestMessages:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->broadcastedBytes:Ljava/util/List;

    .line 102
    new-instance v0, Lorg/teleal/cling/mock/MockUpnpService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p3}, Lorg/teleal/cling/mock/MockUpnpService$1;-><init>(Lorg/teleal/cling/mock/MockUpnpService;ZZZ)V

    iput-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

    .line 146
    invoke-virtual {p0, p0, p1}, Lorg/teleal/cling/mock/MockUpnpService;->createProtocolFactory(Lorg/teleal/cling/UpnpService;Z)Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    .line 148
    new-instance v0, Lorg/teleal/cling/mock/MockUpnpService$2;

    invoke-direct {v0, p0, p0, p2}, Lorg/teleal/cling/mock/MockUpnpService$2;-><init>(Lorg/teleal/cling/mock/MockUpnpService;Lorg/teleal/cling/UpnpService;Z)V

    iput-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->registry:Lorg/teleal/cling/registry/Registry;

    .line 155
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->createNetworkAddressFactory()Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->networkAddressFactory:Lorg/teleal/cling/transport/spi/NetworkAddressFactory;

    .line 157
    invoke-virtual {p0}, Lorg/teleal/cling/mock/MockUpnpService;->createRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->router:Lorg/teleal/cling/transport/Router;

    .line 159
    new-instance v0, Lorg/teleal/cling/controlpoint/ControlPointImpl;

    iget-object v1, p0, Lorg/teleal/cling/mock/MockUpnpService;->configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

    iget-object v2, p0, Lorg/teleal/cling/mock/MockUpnpService;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    iget-object v3, p0, Lorg/teleal/cling/mock/MockUpnpService;->registry:Lorg/teleal/cling/registry/Registry;

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/controlpoint/ControlPointImpl;-><init>(Lorg/teleal/cling/UpnpServiceConfiguration;Lorg/teleal/cling/protocol/ProtocolFactory;Lorg/teleal/cling/registry/Registry;)V

    iput-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    .line 160
    return-void
.end method

.method static synthetic access$0(Lorg/teleal/cling/mock/MockUpnpService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->incomingDatagramMessages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lorg/teleal/cling/mock/MockUpnpService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->receivedUpnpStreams:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lorg/teleal/cling/mock/MockUpnpService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->outgoingDatagramMessages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lorg/teleal/cling/mock/MockUpnpService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->sentStreamRequestMessages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lorg/teleal/cling/mock/MockUpnpService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->broadcastedBytes:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected createProtocolFactory(Lorg/teleal/cling/UpnpService;Z)Lorg/teleal/cling/protocol/ProtocolFactory;
    .locals 1
    .param p1, "service"    # Lorg/teleal/cling/UpnpService;
    .param p2, "sendsAlive"    # Z

    .prologue
    .line 163
    new-instance v0, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;-><init>(Lorg/teleal/cling/UpnpService;Z)V

    return-object v0
.end method

.method protected createRouter()Lorg/teleal/cling/transport/Router;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;

    invoke-direct {v0, p0}, Lorg/teleal/cling/mock/MockUpnpService$MockRouter;-><init>(Lorg/teleal/cling/mock/MockUpnpService;)V

    return-object v0
.end method

.method public getBroadcastedBytes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->broadcastedBytes:Ljava/util/List;

    return-object v0
.end method

.method public getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->configuration:Lorg/teleal/cling/UpnpServiceConfiguration;

    return-object v0
.end method

.method public getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    return-object v0
.end method

.method public getIncomingDatagramMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/message/IncomingDatagramMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->incomingDatagramMessages:Ljava/util/List;

    return-object v0
.end method

.method public getOutgoingDatagramMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/message/OutgoingDatagramMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->outgoingDatagramMessages:Ljava/util/List;

    return-object v0
.end method

.method public getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->protocolFactory:Lorg/teleal/cling/protocol/ProtocolFactory;

    return-object v0
.end method

.method public getReceivedUpnpStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/transport/spi/UpnpStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->receivedUpnpStreams:Ljava/util/List;

    return-object v0
.end method

.method public getRegistry()Lorg/teleal/cling/registry/Registry;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->registry:Lorg/teleal/cling/registry/Registry;

    return-object v0
.end method

.method public getRouter()Lorg/teleal/cling/transport/Router;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->router:Lorg/teleal/cling/transport/Router;

    return-object v0
.end method

.method public getSentStreamRequestMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/message/StreamRequestMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService;->sentStreamRequestMessages:Ljava/util/List;

    return-object v0
.end method

.method public getStreamResponseMessage(Lorg/teleal/cling/model/message/StreamRequestMessage;)Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 1
    .param p1, "request"    # Lorg/teleal/cling/model/message/StreamRequestMessage;

    .prologue
    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStreamResponseMessages()[Lorg/teleal/cling/model/message/StreamResponseMessage;
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/teleal/cling/mock/MockUpnpService;->getRouter()Lorg/teleal/cling/transport/Router;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/transport/Router;->shutdown()V

    .line 296
    invoke-virtual {p0}, Lorg/teleal/cling/mock/MockUpnpService;->getRegistry()Lorg/teleal/cling/registry/Registry;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/registry/Registry;->shutdown()V

    .line 297
    invoke-virtual {p0}, Lorg/teleal/cling/mock/MockUpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->shutdown()V

    .line 298
    return-void
.end method
