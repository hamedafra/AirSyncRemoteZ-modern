.class Lorg/teleal/cling/registry/LocalItems$1;
.super Ljava/lang/Object;
.source "LocalItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/registry/LocalItems;->remove(Lorg/teleal/cling/model/meta/LocalDevice;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/registry/LocalItems;

.field private final synthetic val$incomingSubscription:Lorg/teleal/cling/registry/RegistryItem;


# direct methods
.method constructor <init>(Lorg/teleal/cling/registry/LocalItems;Lorg/teleal/cling/registry/RegistryItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/registry/LocalItems$1;->this$0:Lorg/teleal/cling/registry/LocalItems;

    iput-object p2, p0, Lorg/teleal/cling/registry/LocalItems$1;->val$incomingSubscription:Lorg/teleal/cling/registry/RegistryItem;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/teleal/cling/registry/LocalItems$1;->val$incomingSubscription:Lorg/teleal/cling/registry/RegistryItem;

    invoke-virtual {v0}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/gena/LocalGENASubscription;

    sget-object v1, Lorg/teleal/cling/model/gena/CancelReason;->DEVICE_WAS_REMOVED:Lorg/teleal/cling/model/gena/CancelReason;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->end(Lorg/teleal/cling/model/gena/CancelReason;)V

    .line 130
    return-void
.end method
