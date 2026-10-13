.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12$1;
.super Ljava/lang/Object;
.source "PlayingImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12;->onMiddleEndEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12;

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->onPushClick(Landroid/view/View;)V

    .line 1024
    return-void
.end method
