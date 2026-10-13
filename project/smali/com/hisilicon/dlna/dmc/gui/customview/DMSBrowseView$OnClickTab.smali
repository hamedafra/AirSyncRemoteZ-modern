.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnClickTab"
.end annotation


# instance fields
.field private mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;)V
    .locals 1
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .param p2, "mediaType"    # Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->IMAGE:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    .line 457
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    .line 458
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->IMAGE:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    if-ne v0, v1, :cond_1

    .line 462
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    .line 468
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$500(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->toInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 469
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->VIDEO:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    if-ne v0, v1, :cond_2

    .line 464
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 465
    :cond_2
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->mediaType:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->MUSIC:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    if-ne v0, v1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$OnClickTab;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    goto :goto_0
.end method
