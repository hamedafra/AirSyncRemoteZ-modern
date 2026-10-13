.class Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;
.super Ljava/lang/Object;
.source "SendingUnsubscribe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->executeSync()Lorg/teleal/cling/model/message/StreamResponseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;

.field private final synthetic val$response:Lorg/teleal/cling/model/message/StreamResponseMessage;


# direct methods
.method constructor <init>(Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;Lorg/teleal/cling/model/message/StreamResponseMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;->this$0:Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;

    iput-object p2, p0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/teleal/cling/model/message/StreamResponseMessage;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/teleal/cling/model/message/StreamResponseMessage;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Unsubscribe failed, no response received"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;->this$0:Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;

    iget-object v0, v0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    sget-object v1, Lorg/teleal/cling/model/gena/CancelReason;->UNSUBSCRIBE_FAILED:Lorg/teleal/cling/model/gena/CancelReason;

    invoke-virtual {v0, v1, v3}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->end(Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 73
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/teleal/cling/model/message/StreamResponseMessage;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsubscribe failed, response was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/teleal/cling/model/message/StreamResponseMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;->this$0:Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;

    iget-object v1, v0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    sget-object v2, Lorg/teleal/cling/model/gena/CancelReason;->UNSUBSCRIBE_FAILED:Lorg/teleal/cling/model/gena/CancelReason;

    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/teleal/cling/model/message/StreamResponseMessage;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v1, v2, v0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->end(Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsubscribe successful, response was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/teleal/cling/model/message/StreamResponseMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;->this$0:Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;

    iget-object v1, v0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe$1;->val$response:Lorg/teleal/cling/model/message/StreamResponseMessage;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/StreamResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v1, v3, v0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->end(Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto :goto_0
.end method
