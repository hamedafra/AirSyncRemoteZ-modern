.class Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;
.super Lorg/teleal/cling/model/gena/RemoteGENASubscription;
.source "SubscriptionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/controlpoint/SubscriptionCallback;->establishRemoteSubscription(Lorg/teleal/cling/model/meta/RemoteService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;


# direct methods
.method constructor <init>(Lorg/teleal/cling/controlpoint/SubscriptionCallback;Lorg/teleal/cling/model/meta/RemoteService;I)V
    .locals 0
    .param p2, "$anonymous0"    # Lorg/teleal/cling/model/meta/RemoteService;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    .line 197
    invoke-direct {p0, p2, p3}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;-><init>(Lorg/teleal/cling/model/meta/RemoteService;I)V

    return-void
.end method


# virtual methods
.method public ended(Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 3
    .param p1, "reason"    # Lorg/teleal/cling/model/gena/CancelReason;
    .param p2, "responseStatus"    # Lorg/teleal/cling/model/message/UpnpResponse;

    .prologue
    .line 214
    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)V

    .line 216
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0, p1, p2}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->ended(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 214
    monitor-exit v1

    .line 218
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public established()V
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)V

    .line 209
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->established(Lorg/teleal/cling/model/gena/GENASubscription;)V

    .line 207
    monitor-exit v1

    .line 211
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public eventReceived()V
    .locals 2

    .prologue
    .line 221
    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->eventReceived(Lorg/teleal/cling/model/gena/GENASubscription;)V

    .line 221
    monitor-exit v1

    .line 224
    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public eventsMissed(I)V
    .locals 2
    .param p1, "numberOfMissedEvents"    # I

    .prologue
    .line 227
    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0, p1}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->eventsMissed(Lorg/teleal/cling/model/gena/GENASubscription;I)V

    .line 227
    monitor-exit v1

    .line 230
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public failed(Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 3
    .param p1, "responseStatus"    # Lorg/teleal/cling/model/message/UpnpResponse;

    .prologue
    .line 200
    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)V

    .line 202
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$2;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->failed(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V

    .line 200
    monitor-exit v1

    .line 204
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
