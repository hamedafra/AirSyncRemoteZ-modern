.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3$1;
.super Ljava/lang/Object;
.source "LiveTVActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;)V
    .locals 0
    .param p1, "this$2"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10$3;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1900(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080033

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 430
    return-void
.end method
