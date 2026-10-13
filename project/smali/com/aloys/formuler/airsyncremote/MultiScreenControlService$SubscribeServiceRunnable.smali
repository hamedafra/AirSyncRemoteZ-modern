.class Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;
.super Ljava/lang/Object;
.source "MultiScreenControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscribeServiceRunnable"
.end annotation


# instance fields
.field private isOK:Z

.field private subscribeTime:I

.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;


# direct methods
.method public constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V
    .locals 2

    .prologue
    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 1301
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->isOK:Z

    .line 1298
    iput v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->subscribeTime:I

    .line 1302
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->isOK:Z

    .line 1303
    iput v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->subscribeTime:I

    .line 1304
    return-void
.end method

.method private threadSleep()V
    .locals 2

    .prologue
    .line 1328
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :goto_0
    return-void

    .line 1330
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$1300(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->isOK:Z

    .line 1312
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->subscribeTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->subscribeTime:I

    .line 1313
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->isOK:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->subscribeTime:I

    if-gtz v0, :cond_2

    .line 1321
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of SubscribeServiceRunnable, result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->isOK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1322
    return-void

    .line 1317
    :cond_2
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->threadSleep()V

    .line 1319
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$SubscribeServiceRunnable;->isOK:Z

    if-eqz v0, :cond_0

    goto :goto_0
.end method
