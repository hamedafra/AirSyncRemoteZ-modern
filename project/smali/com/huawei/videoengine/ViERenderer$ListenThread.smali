.class Lcom/huawei/videoengine/ViERenderer$ListenThread;
.super Ljava/lang/Thread;
.source "ViERenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/ViERenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListenThread"
.end annotation


# instance fields
.field icontext:Landroid/content/Context;

.field isFrontlast:Z

.field isFrontnow:Z

.field isRun:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 291
    iput-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontlast:Z

    .line 292
    iput-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontnow:Z

    .line 293
    iput-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isRun:Z

    .line 296
    iput-object p1, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->icontext:Landroid/content/Context;

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isRun:Z

    .line 298
    return-void
.end method


# virtual methods
.method public Stop()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isRun:Z

    .line 303
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 307
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isRun:Z

    if-nez v1, :cond_1

    .line 323
    return-void

    .line 310
    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_1
    iget-object v1, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->icontext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/videoengine/ViERenderer;->isAppOnForeground2(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontnow:Z

    .line 316
    iget-boolean v1, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontlast:Z

    iget-boolean v2, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontnow:Z

    if-eq v1, v2, :cond_0

    .line 318
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "the app is on front "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontnow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-boolean v1, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontnow:Z

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontlast:Z

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
