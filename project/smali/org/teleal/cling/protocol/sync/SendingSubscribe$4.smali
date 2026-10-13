.class Lorg/teleal/cling/protocol/sync/SendingSubscribe$4;
.super Ljava/lang/Object;
.source "SendingSubscribe.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/protocol/sync/SendingSubscribe;->executeSync()Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/protocol/sync/SendingSubscribe;

.field private final synthetic val$responseMessage:Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;


# direct methods
.method constructor <init>(Lorg/teleal/cling/protocol/sync/SendingSubscribe;Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe$4;->this$0:Lorg/teleal/cling/protocol/sync/SendingSubscribe;

    iput-object p2, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe$4;->val$responseMessage:Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe$4;->this$0:Lorg/teleal/cling/protocol/sync/SendingSubscribe;

    iget-object v1, v0, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe$4;->val$responseMessage:Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/gena/IncomingSubscribeResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v1, v0}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->fail(Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 119
    return-void
.end method
