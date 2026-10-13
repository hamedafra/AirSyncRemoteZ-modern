.class public Lorg/teleal/common/util/Threads;
.super Ljava/lang/Object;
.source "Threads.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllThreads()[Ljava/lang/Thread;
    .locals 6

    .prologue
    .line 36
    invoke-static {}, Lorg/teleal/common/util/Threads;->getRootThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    .line 37
    .local v2, "root":Ljava/lang/ThreadGroup;
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v3

    .line 38
    .local v3, "thbean":Ljava/lang/management/ThreadMXBean;
    invoke-interface {v3}, Ljava/lang/management/ThreadMXBean;->getThreadCount()I

    move-result v1

    .line 39
    .local v1, "nAlloc":I
    const/4 v0, 0x0

    .line 42
    .local v0, "n":I
    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 43
    new-array v4, v1, [Ljava/lang/Thread;

    .line 44
    .local v4, "threads":[Ljava/lang/Thread;
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v0

    .line 45
    if-eq v0, v1, :cond_0

    .line 46
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Thread;

    return-object v5
.end method

.method public static getRootThreadGroup()Ljava/lang/ThreadGroup;
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    .line 30
    .local v1, "tg":Ljava/lang/ThreadGroup;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    .local v0, "ptg":Ljava/lang/ThreadGroup;
    if-eqz v0, :cond_0

    .line 31
    move-object v1, v0

    goto :goto_0

    .line 32
    :cond_0
    return-object v1
.end method

.method public static getThread(J)Ljava/lang/Thread;
    .locals 8
    .param p0, "id"    # J

    .prologue
    .line 50
    invoke-static {}, Lorg/teleal/common/util/Threads;->getAllThreads()[Ljava/lang/Thread;

    move-result-object v4

    .line 51
    .local v4, "threads":[Ljava/lang/Thread;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/Thread;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 52
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    cmp-long v5, v6, p0

    if-nez v5, :cond_0

    .line 54
    .end local v3    # "thread":Ljava/lang/Thread;
    :goto_1
    return-object v3

    .line 51
    .restart local v3    # "thread":Ljava/lang/Thread;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
