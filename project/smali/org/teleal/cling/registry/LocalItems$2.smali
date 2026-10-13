.class Lorg/teleal/cling/registry/LocalItems$2;
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

.field private final synthetic val$listener:Lorg/teleal/cling/registry/RegistryListener;

.field private final synthetic val$localDevice:Lorg/teleal/cling/model/meta/LocalDevice;


# direct methods
.method constructor <init>(Lorg/teleal/cling/registry/LocalItems;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/registry/LocalItems$2;->this$0:Lorg/teleal/cling/registry/LocalItems;

    iput-object p2, p0, Lorg/teleal/cling/registry/LocalItems$2;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/teleal/cling/registry/LocalItems$2;->val$localDevice:Lorg/teleal/cling/model/meta/LocalDevice;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lorg/teleal/cling/registry/LocalItems$2;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/teleal/cling/registry/LocalItems$2;->this$0:Lorg/teleal/cling/registry/LocalItems;

    iget-object v1, v1, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object v2, p0, Lorg/teleal/cling/registry/LocalItems$2;->val$localDevice:Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-interface {v0, v1, v2}, Lorg/teleal/cling/registry/RegistryListener;->localDeviceRemoved(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V

    .line 145
    return-void
.end method
