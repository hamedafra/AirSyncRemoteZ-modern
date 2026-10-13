.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$SwipeCallbackImpl;
.super Ljava/lang/Object;
.source "PlayingImageActivity.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/SwipeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V
    .locals 0

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$SwipeCallbackImpl;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$1;

    .prologue
    .line 1110
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$SwipeCallbackImpl;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V

    return-void
.end method


# virtual methods
.method public onTap()V
    .locals 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$SwipeCallbackImpl;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->toggleItemInfo()V

    .line 1125
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$SwipeCallbackImpl;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$100(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$SwipeCallbackImpl;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->onTab(Z)V

    .line 1126
    return-void
.end method

.method public swipeToNext()V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$SwipeCallbackImpl;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->doNext()V

    .line 1115
    return-void
.end method

.method public swipeToPrevious()V
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$SwipeCallbackImpl;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->doPrev()V

    .line 1120
    return-void
.end method
