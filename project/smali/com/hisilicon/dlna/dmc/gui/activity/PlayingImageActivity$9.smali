.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$9;
.super Ljava/lang/Object;
.source "PlayingImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->beginLoadPreAndNext()V
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
    .line 604
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$1400(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    .line 610
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$9$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$9$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$9;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 619
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 620
    return-void
.end method
