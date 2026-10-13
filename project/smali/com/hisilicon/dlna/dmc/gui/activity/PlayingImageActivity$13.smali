.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;
.super Ljava/lang/Object;
.source "PlayingImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$2300(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1084
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$1900(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Lcom/hisilicon/dlna/dmc/utility/Cache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/utility/Cache;->clear()V

    .line 1085
    return-void
.end method
