.class Lorg/teleal/cling/mock/MockUpnpService$1$2;
.super Ljava/lang/Object;
.source "MockUpnpService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/mock/MockUpnpService$1;->getRegistryMaintainerExecutor()Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/teleal/cling/mock/MockUpnpService$1;


# direct methods
.method constructor <init>(Lorg/teleal/cling/mock/MockUpnpService$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/mock/MockUpnpService$1$2;->this$1:Lorg/teleal/cling/mock/MockUpnpService$1;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method
