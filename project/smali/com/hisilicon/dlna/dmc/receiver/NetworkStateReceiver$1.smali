.class Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$1;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$1;->this$0:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$1;->this$0:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    iget v1, v1, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->DISABLE_STATE_TIMEOUT:I

    if-ge v0, v1, :cond_1

    .line 49
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 50
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$1;->this$0:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->access$000(Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$1;->this$0:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    iget v1, v1, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->DISABLE_STATE_TIMEOUT:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$1;->this$0:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->access$100(Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;)Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$1;->this$0:Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;->access$100(Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver;)Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$1;->val$context:Landroid/content/Context;

    const v3, 0x7f080052

    .line 54
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-interface {v1, v2}, Lcom/hisilicon/dlna/dmc/receiver/NetworkStateReceiver$RouterStateListener;->onRouterError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 62
    :cond_1
    return-void
.end method
