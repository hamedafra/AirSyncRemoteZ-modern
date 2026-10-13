.class Lorg/teleal/cling/protocol/sync/SendingRenewal$2;
.super Ljava/lang/Object;
.source "SendingRenewal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/protocol/sync/SendingRenewal;->executeSync()Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/protocol/sync/SendingRenewal;

.field private final synthetic val$responseMessage:Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;


# direct methods
.method constructor <init>(Lorg/teleal/cling/protocol/sync/SendingRenewal;Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/protocol/sync/SendingRenewal$2;->this$0:Lorg/teleal/cling/protocol/sync/SendingRenewal;

    iput-object p2, p0, Lorg/teleal/cling/protocol/sync/SendingRenewal$2;->val$responseMessage:Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingRenewal$2;->this$0:Lorg/teleal/cling/protocol/sync/SendingRenewal;

    iget-object v1, v0, Lorg/teleal/cling/protocol/sync/SendingRenewal;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    sget-object v2, Lorg/teleal/cling/model/gena/CancelReason;->RENEWAL_FAILED:Lorg/teleal/cling/model/gena/CancelReason;

    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingRenewal$2;->val$responseMessage:Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v1, v2, v0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->end(Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 80
    return-void
.end method
