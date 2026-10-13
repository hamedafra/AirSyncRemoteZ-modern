.class Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;
.super Lorg/teleal/cling/model/gena/LocalGENASubscription;
.source "SubscriptionCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/controlpoint/SubscriptionCallback;->establishLocalSubscription(Lorg/teleal/cling/model/meta/LocalService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;


# direct methods
.method constructor <init>(Lorg/teleal/cling/controlpoint/SubscriptionCallback;Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V
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
    iput-object p1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    .line 141
    invoke-direct {p0, p2, p3, p4}, Lorg/teleal/cling/model/gena/LocalGENASubscription;-><init>(Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public ended(Lorg/teleal/cling/model/gena/CancelReason;)V
    .locals 3
    .param p1, "reason"    # Lorg/teleal/cling/model/gena/CancelReason;

    .prologue
    .line 158
    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)V

    .line 160
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->ended(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 158
    monitor-exit v1

    .line 162
    return-void

    .line 158
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
    .line 151
    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)V

    .line 153
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->established(Lorg/teleal/cling/model/gena/GENASubscription;)V

    .line 151
    monitor-exit v1

    .line 155
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public eventReceived()V
    .locals 4

    .prologue
    .line 165
    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 166
    :try_start_0
    sget-object v0, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Local service state updated, notifying callback, sequence is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->getCurrentSequence()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    invoke-virtual {v0, p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->eventReceived(Lorg/teleal/cling/model/gena/GENASubscription;)V

    .line 168
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->incrementSequence()V

    .line 165
    monitor-exit v1

    .line 170
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public failed(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 144
    iget-object v1, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->setSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)V

    .line 146
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/SubscriptionCallback$1;->this$0:Lorg/teleal/cling/controlpoint/SubscriptionCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1}, Lorg/teleal/cling/controlpoint/SubscriptionCallback;->failed(Lorg/teleal/cling/model/gena/GENASubscription;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/Exception;)V

    .line 144
    monitor-exit v1

    .line 148
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
