.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;
.super Ljava/lang/Object;
.source "LiveTVActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->rootFloorBrowse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->access$1600(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;)V

    .line 418
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->FAILURE:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1700(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->access$1800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;)V

    .line 420
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->access$1600(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;)V

    .line 423
    :cond_0
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->FAILURE:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1700(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 424
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1900(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 433
    :cond_1
    return-void
.end method
