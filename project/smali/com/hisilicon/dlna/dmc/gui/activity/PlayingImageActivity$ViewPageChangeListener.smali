.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPageChangeListener;
.super Ljava/lang/Object;
.source "PlayingImageActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPageChangeListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 206
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 210
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 214
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v1

    .line 215
    .local v1, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v1, :cond_0

    .line 218
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPageChangeListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$400(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)I

    move-result v3

    .line 219
    .local v3, "temp":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPageChangeListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v4, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$402(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;I)I

    .line 221
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPageChangeListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;I)I

    move-result v4

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPageChangeListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v5, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 223
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPageChangeListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$600(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)I

    move-result v0

    .line 225
    .local v0, "nextItem":I
    invoke-interface {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setCurrentItem(I)I

    .line 235
    .end local v0    # "nextItem":I
    .end local v3    # "temp":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPageChangeListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$100(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->onGoneThumb()V

    .line 236
    return-void

    .line 229
    .restart local v3    # "temp":I
    :cond_1
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$ViewPageChangeListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)I

    move-result v2

    .line 231
    .local v2, "prevItem":I
    invoke-interface {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setCurrentItem(I)I

    goto :goto_0
.end method
