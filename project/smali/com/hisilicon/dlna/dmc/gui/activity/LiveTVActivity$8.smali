.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$8;
.super Ljava/lang/Object;
.source "LiveTVActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadImage()V
    .locals 4

    .prologue
    .line 232
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 233
    .local v1, "start":I
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v0

    .line 234
    .local v0, "end":I
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 237
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v2

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v2, v1, v3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->setLoadLimit(II)V

    .line 238
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->unlock()V

    .line 239
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v0, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$900(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v0, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1000(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$8;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 218
    packed-switch p2, :pswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 221
    :pswitch_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->lock()V

    goto :goto_0

    .line 224
    :pswitch_1
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$8;->loadImage()V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
