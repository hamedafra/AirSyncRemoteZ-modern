.class Lorg/teleal/cling/registry/RegistryImpl$1;
.super Ljava/lang/Object;
.source "RegistryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/registry/RegistryImpl;->notifyDiscoveryStart(Lorg/teleal/cling/model/meta/RemoteDevice;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/registry/RegistryImpl;

.field private final synthetic val$device:Lorg/teleal/cling/model/meta/RemoteDevice;

.field private final synthetic val$listener:Lorg/teleal/cling/registry/RegistryListener;


# direct methods
.method constructor <init>(Lorg/teleal/cling/registry/RegistryImpl;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/registry/RegistryImpl$1;->this$0:Lorg/teleal/cling/registry/RegistryImpl;

    iput-object p2, p0, Lorg/teleal/cling/registry/RegistryImpl$1;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iput-object p3, p0, Lorg/teleal/cling/registry/RegistryImpl$1;->val$device:Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryImpl$1;->val$listener:Lorg/teleal/cling/registry/RegistryListener;

    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryImpl$1;->this$0:Lorg/teleal/cling/registry/RegistryImpl;

    iget-object v2, p0, Lorg/teleal/cling/registry/RegistryImpl$1;->val$device:Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-interface {v0, v1, v2}, Lorg/teleal/cling/registry/RegistryListener;->remoteDeviceDiscoveryStarted(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    .line 130
    return-void
.end method
