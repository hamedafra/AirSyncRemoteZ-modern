.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$4;
.super Ljava/lang/Object;
.source "LiveTVActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->rootLiveTVBrowse()V
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
    .line 440
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$4;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 444
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$4;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1300(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "LIVETV"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 446
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$4;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->UNKOWN:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1702(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .line 448
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$4;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$2000(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Ljava/lang/String;I)V

    .line 453
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$4;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->VOID:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1702(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .line 451
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$4;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$400(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    goto :goto_0
.end method
