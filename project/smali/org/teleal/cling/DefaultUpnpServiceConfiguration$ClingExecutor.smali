.class public Lorg/teleal/cling/DefaultUpnpServiceConfiguration$ClingExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DefaultUpnpServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/DefaultUpnpServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClingExecutor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Lorg/teleal/cling/DefaultUpnpServiceConfiguration$ClingThreadFactory;

    invoke-direct {v0}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration$ClingThreadFactory;-><init>()V

    .line 270
    new-instance v1, Lorg/teleal/cling/DefaultUpnpServiceConfiguration$ClingExecutor$1;

    invoke-direct {v1}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration$ClingExecutor$1;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration$ClingExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 280
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 10
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "rejectedHandler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .prologue
    .line 284
    const/4 v2, 0x0

    .line 285
    const v3, 0x7fffffff

    .line 286
    const-wide/16 v4, 0x3c

    .line 287
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 288
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v1, p0

    move-object v8, p1

    move-object v9, p2

    .line 290
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 292
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 296
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 297
    if-eqz p2, :cond_0

    .line 299
    invoke-static {}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread terminated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " abruptly with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lorg/teleal/cling/DefaultUpnpServiceConfiguration;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Root cause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 302
    :cond_0
    return-void
.end method
