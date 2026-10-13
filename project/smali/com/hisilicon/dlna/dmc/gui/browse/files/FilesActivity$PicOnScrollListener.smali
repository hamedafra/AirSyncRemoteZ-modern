.class Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$PicOnScrollListener;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$PicOnScrollListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 260
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v1, 0x1

    .line 237
    packed-switch p2, :pswitch_data_0

    .line 253
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->setState(Ljava/lang/Boolean;)V

    .line 240
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->notifyDataSetChanged()V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->setState(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$PicOnScrollListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->setState(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
