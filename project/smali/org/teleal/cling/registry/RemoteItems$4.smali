.class Lorg/teleal/cling/registry/RemoteItems$4;
.super Ljava/lang/Object;
.source "RemoteItems.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/registry/RemoteItems;->remove(Lorg/teleal/cling/model/meta/RemoteDevice;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/registry/RemoteItems;

.field private final synthetic val$listener:Lorg/teleal/cling/registry/RegistryListener;

.field private final synthetic val$registeredDevice:Lorg/teleal/cling/model/meta/RemoteDevice;


# direct methods
.method constructor <init>(Lorg/teleal/cling/registry/RemoteItems;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/registry/RemoteItems$4;->this$0:Lorg/teleal/cling/registry/RemoteItems;

    iput-object p2, p0, Lorg/teleal/cling/registry/RemoteItems$4;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/teleal/cling/registry/RemoteItems$4;->val$registeredDevice:Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lorg/teleal/cling/registry/RemoteItems$4;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/teleal/cling/registry/RemoteItems$4;->this$0:Lorg/teleal/cling/registry/RemoteItems;

    iget-object v1, v1, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object v2, p0, Lorg/teleal/cling/registry/RemoteItems$4;->val$registeredDevice:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-interface {v0, v1, v2}, Lorg/teleal/cling/registry/RegistryListener;->remoteDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    .line 215
    return-void
.end method
