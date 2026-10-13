.class Lorg/teleal/cling/protocol/sync/SendingRenewal$1;
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


# direct methods
.method constructor <init>(Lorg/teleal/cling/protocol/sync/SendingRenewal;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/protocol/sync/SendingRenewal$1;->this$0:Lorg/teleal/cling/protocol/sync/SendingRenewal;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingRenewal$1;->this$0:Lorg/teleal/cling/protocol/sync/SendingRenewal;

    iget-object v0, v0, Lorg/teleal/cling/protocol/sync/SendingRenewal;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    sget-object v1, Lorg/teleal/cling/model/gena/CancelReason;->RENEWAL_FAILED:Lorg/teleal/cling/model/gena/CancelReason;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->end(Lorg/teleal/cling/model/gena/CancelReason;Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 65
    return-void
.end method
