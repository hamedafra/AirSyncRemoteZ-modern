.class Lorg/teleal/cling/protocol/sync/SendingSubscribe$2;
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


# direct methods
.method constructor <init>(Lorg/teleal/cling/protocol/sync/SendingSubscribe;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe$2;->this$0:Lorg/teleal/cling/protocol/sync/SendingSubscribe;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/teleal/cling/protocol/sync/SendingSubscribe$2;->this$0:Lorg/teleal/cling/protocol/sync/SendingSubscribe;

    iget-object v0, v0, Lorg/teleal/cling/protocol/sync/SendingSubscribe;->subscription:Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->fail(Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 96
    return-void
.end method
