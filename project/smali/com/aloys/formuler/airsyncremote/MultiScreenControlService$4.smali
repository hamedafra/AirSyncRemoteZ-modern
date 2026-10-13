.class Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$4;
.super Ljava/lang/Object;
.source "MultiScreenControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTimes:I

.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$4;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private threadSleep(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1249
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    :goto_0
    return-void

    .line 1251
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1231
    const/4 v0, 0x3

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$4;->mTimes:I

    .line 1234
    :cond_0
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    :goto_0
    return-void

    .line 1238
    :cond_1
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$4;->mTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$4;->mTimes:I

    .line 1239
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$4;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$1200(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V

    .line 1240
    const-wide/16 v0, 0x1f40

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$4;->threadSleep(J)V

    .line 1242
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$4;->mTimes:I

    if-gtz v0, :cond_0

    goto :goto_0
.end method
