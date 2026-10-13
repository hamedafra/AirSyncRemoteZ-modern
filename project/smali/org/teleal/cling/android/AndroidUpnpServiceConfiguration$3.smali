.class Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration$3;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;
.source "AndroidUpnpServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->createDefaultExecutor()Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;


# direct methods
.method constructor <init>(Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration$3;->this$0:Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;

    .line 156
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "threadPoolExecutor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 161
    invoke-static {}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread pool saturated, discarding execution of \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', consider raising the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string v2, "maximum pool or queue size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 166
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 167
    return-void
.end method
