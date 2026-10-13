.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$7;
.super Ljava/lang/Object;
.source "PlayingImageActivity.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
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
    .line 425
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChanged(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V
    .locals 2
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .param p2, "changeMode"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$900(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    .line 430
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$1000(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->updateItemInfo()V

    .line 438
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/SwipeDetector;->setEnable(Z)V

    goto :goto_0
.end method
