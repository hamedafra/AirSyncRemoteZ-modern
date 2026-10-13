.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9;
.super Ljava/lang/Object;
.source "LiveTVActivity.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged()V
    .locals 2

    .prologue
    .line 310
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 316
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 317
    return-void
.end method

.method public onRouterDisabledEvent()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public onRouterEnabledEvent()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public onRouterError(Ljava/lang/String;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 296
    return-void
.end method

.method public onStartComplete()V
    .locals 4

    .prologue
    .line 288
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->updateDMSDevice()V

    .line 290
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$600(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1200(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    return-void
.end method

.method public onStartFailed()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method
