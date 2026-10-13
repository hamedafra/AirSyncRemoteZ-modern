.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$1;
.super Ljava/lang/Object;
.source "DMSOtherBrowseActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v0, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$000(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v0, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 137
    packed-switch p2, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 140
    :pswitch_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->lock()V

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->loadImage()V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
