.class Lorg/teleal/cling/protocol/sync/ReceivingSubscribe$1;
.super Lorg/teleal/cling/model/gena/LocalGENASubscription;
.source "ReceivingSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->processNewSubscription(Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/message/gena/IncomingSubscribeRequestMessage;)Lorg/teleal/cling/model/message/gena/OutgoingSubscribeResponseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;


# direct methods
.method constructor <init>(Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0
    .param p2, "$anonymous0"    # Lorg/teleal/cling/model/meta/LocalService;
    .param p3, "$anonymous1"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    .local p4, "$anonymous2":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    iput-object p1, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe$1;->this$0:Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;

    .line 138
    invoke-direct {p0, p2, p3, p4}, Lorg/teleal/cling/model/gena/LocalGENASubscription;-><init>(Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public ended(Lorg/teleal/cling/model/gena/CancelReason;)V
    .locals 0
    .param p1, "reason"    # Lorg/teleal/cling/model/gena/CancelReason;

    .prologue
    .line 143
    return-void
.end method

.method public established()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public eventReceived()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe$1;->this$0:Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;

    invoke-virtual {v0}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpService;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/teleal/cling/UpnpServiceConfiguration;->getSyncProtocolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe$1;->this$0:Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;

    invoke-virtual {v1}, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpService;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/teleal/cling/protocol/ProtocolFactory;->createSendingEvent(Lorg/teleal/cling/model/gena/LocalGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingEvent;

    move-result-object v1

    .line 147
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
