.class Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;
.super Ljava/lang/Object;
.source "Picture_New_View.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 220
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$1100(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$600(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->getFolders()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 221
    if-ge p2, v1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$1100(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    if-le p2, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$1100(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v1, 0x1

    .line 200
    packed-switch p2, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->setState(Ljava/lang/Boolean;)V

    .line 203
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->notifyDataSetChanged()V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->setState(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 211
    :pswitch_2
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->setState(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
