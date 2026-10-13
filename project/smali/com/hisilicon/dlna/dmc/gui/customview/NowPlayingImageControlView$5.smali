.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$5;
.super Ljava/lang/Object;
.source "NowPlayingImageControlView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v2

    .line 194
    .local v2, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v2, :cond_0

    .line 195
    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;

    .end local v2    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-direct {v2}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;-><init>()V

    .line 196
    .restart local v2    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V

    .line 197
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$000(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->getItemList()Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, "list":Ljava/util/List;
    invoke-interface {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setItems(Ljava/util/List;)V

    .line 201
    .end local v1    # "list":Ljava/util/List;
    :cond_0
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$000(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    .line 202
    .local v0, "item":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    instance-of v3, v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-eqz v3, :cond_1

    .line 203
    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .end local v0    # "item":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    invoke-interface {v2, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setCurrentItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)I

    .line 204
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$400(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V

    .line 206
    :cond_1
    return-void
.end method
