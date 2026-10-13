.class Lorg/teleal/cling/mock/MockUpnpService$2;
.super Lorg/teleal/cling/registry/RegistryImpl;
.source "MockUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/mock/MockUpnpService;-><init>(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/mock/MockUpnpService;

.field private final synthetic val$maintainsRegistry:Z


# direct methods
.method constructor <init>(Lorg/teleal/cling/mock/MockUpnpService;Lorg/teleal/cling/UpnpService;Z)V
    .locals 0
    .param p2, "$anonymous0"    # Lorg/teleal/cling/UpnpService;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/mock/MockUpnpService$2;->this$0:Lorg/teleal/cling/mock/MockUpnpService;

    iput-boolean p3, p0, Lorg/teleal/cling/mock/MockUpnpService$2;->val$maintainsRegistry:Z

    .line 148
    invoke-direct {p0, p2}, Lorg/teleal/cling/registry/RegistryImpl;-><init>(Lorg/teleal/cling/UpnpService;)V

    return-void
.end method


# virtual methods
.method protected createRegistryMaintainer()Lorg/teleal/cling/registry/RegistryMaintainer;
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lorg/teleal/cling/mock/MockUpnpService$2;->val$maintainsRegistry:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/teleal/cling/registry/RegistryImpl;->createRegistryMaintainer()Lorg/teleal/cling/registry/RegistryMaintainer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
