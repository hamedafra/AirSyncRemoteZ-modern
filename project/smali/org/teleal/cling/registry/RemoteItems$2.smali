.class Lorg/teleal/cling/registry/RemoteItems$2;
.super Ljava/lang/Object;
.source "RemoteItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/registry/RemoteItems;->update(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/registry/RemoteItems;

.field private final synthetic val$item:Lorg/teleal/cling/registry/RegistryItem;

.field private final synthetic val$listener:Lorg/teleal/cling/registry/RegistryListener;


# direct methods
.method constructor <init>(Lorg/teleal/cling/registry/RemoteItems;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/registry/RegistryItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/registry/RemoteItems$2;->this$0:Lorg/teleal/cling/registry/RemoteItems;

    iput-object p2, p0, Lorg/teleal/cling/registry/RemoteItems$2;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/teleal/cling/registry/RemoteItems$2;->val$item:Lorg/teleal/cling/registry/RegistryItem;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lorg/teleal/cling/registry/RemoteItems$2;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iget-object v0, p0, Lorg/teleal/cling/registry/RemoteItems$2;->this$0:Lorg/teleal/cling/registry/RemoteItems;

    iget-object v2, v0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object v0, p0, Lorg/teleal/cling/registry/RemoteItems$2;->val$item:Lorg/teleal/cling/registry/RegistryItem;

    invoke-virtual {v0}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-interface {v1, v2, v0}, Lorg/teleal/cling/registry/RegistryListener;->remoteDeviceUpdated(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    .line 151
    return-void
.end method
