.class Lorg/teleal/cling/mock/MockUpnpService$1;
.super Lorg/teleal/cling/DefaultUpnpServiceConfiguration;
.source "MockUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/mock/MockUpnpService;-><init>(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/mock/MockUpnpService;

.field private final synthetic val$maintainsRegistry:Z

.field private final synthetic val$multiThreaded:Z


# direct methods
.method constructor <init>(Lorg/teleal/cling/mock/MockUpnpService;ZZZ)V
    .locals 0
    .param p2, "$anonymous0"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/mock/MockUpnpService$1;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    iput-boolean p3, p0, Lorg/teleal/cling/mock/MockUpnpService$1;->val$maintainsRegistry:Z

    iput-boolean p4, p0, Lorg/teleal/cling/mock/MockUpnpService$1;->val$multiThreaded:Z

    .line 102
    invoke-direct {p0, p2}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected createDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/teleal/cling/mock/MockUpnpService$1;->val$multiThreaded:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-super {p0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 138
    :cond_0
    new-instance v0, Lorg/teleal/cling/mock/MockUpnpService$1$3;

    invoke-direct {v0, p0}, Lorg/teleal/cling/mock/MockUpnpService$1$3;-><init>(Lorg/teleal/cling/mock/MockUpnpService$1;)V

    goto :goto_0
.end method

.method protected createNetworkAddressFactory(I)Lorg/teleal/cling/transport/spi/NetworkAddressFactory;
    .locals 1
    .param p1, "streamListenPort"    # I

    .prologue
    .line 106
    new-instance v0, Lorg/teleal/cling/mock/MockUpnpService$1$1;

    invoke-direct {v0, p0, p1}, Lorg/teleal/cling/mock/MockUpnpService$1$1;-><init>(Lorg/teleal/cling/mock/MockUpnpService$1;I)V

    return-object v0
.end method

.method public getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/teleal/cling/mock/MockUpnpService$1;->val$maintainsRegistry:Z

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lorg/teleal/cling/mock/MockUpnpService$1$2;

    invoke-direct {v0, p0}, Lorg/teleal/cling/mock/MockUpnpService$1$2;-><init>(Lorg/teleal/cling/mock/MockUpnpService$1;)V

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/mock/MockUpnpService$1;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_0
.end method
