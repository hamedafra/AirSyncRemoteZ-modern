.class public Lorg/teleal/cling/registry/RegistryMaintainer;
.super Ljava/lang/Object;
.source "RegistryMaintainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private final registry:Lorg/teleal/cling/registry/RegistryImpl;

.field private final sleepIntervalMillis:I

.field private volatile stopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/teleal/cling/registry/RegistryMaintainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/registry/RegistryImpl;I)V
    .locals 1
    .param p1, "registry"    # Lorg/teleal/cling/registry/RegistryImpl;
    .param p2, "sleepIntervalMillis"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/teleal/cling/registry/RegistryMaintainer;->stopped:Z

    .line 37
    iput-object p1, p0, Lorg/teleal/cling/registry/RegistryMaintainer;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    .line 38
    iput p2, p0, Lorg/teleal/cling/registry/RegistryMaintainer;->sleepIntervalMillis:I

    .line 39
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/teleal/cling/registry/RegistryMaintainer;->stopped:Z

    .line 48
    sget-object v1, Lorg/teleal/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Running registry maintenance loop every milliseconds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/teleal/cling/registry/RegistryMaintainer;->sleepIntervalMillis:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 49
    :goto_0
    iget-boolean v1, p0, Lorg/teleal/cling/registry/RegistryMaintainer;->stopped:Z

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lorg/teleal/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    const-string v2, "Stopped status on thread received, ending maintenance loop"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 60
    return-void

    .line 52
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryMaintainer;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryImpl;->maintain()V

    .line 53
    iget v1, p0, Lorg/teleal/cling/registry/RegistryMaintainer;->sleepIntervalMillis:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lorg/teleal/cling/registry/RegistryMaintainer;->log:Ljava/util/logging/Logger;

    const-string v1, "Setting stopped status on thread"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/teleal/cling/registry/RegistryMaintainer;->stopped:Z

    .line 44
    return-void
.end method
