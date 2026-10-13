.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$10;
.super Ljava/lang/Object;
.source "PlayingImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->beginLoadPre()V
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
    .line 626
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$1600(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    .line 631
    return-void
.end method
