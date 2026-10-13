.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$6;
.super Ljava/lang/Object;
.source "DMSOtherBrowseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 406
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 411
    const v3, 0x7f020003

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 412
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 413
    .local v0, "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 414
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Lorg/teleal/cling/support/model/container/Container;

    if-eqz v3, :cond_1

    .line 415
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    move-object v3, v1

    check-cast v3, Lorg/teleal/cling/support/model/container/Container;

    invoke-virtual {v3}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1402(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Ljava/lang/String;)Ljava/lang/String;

    move-object v3, v1

    .line 416
    check-cast v3, Lorg/teleal/cling/support/model/container/Container;

    invoke-virtual {v3}, Lorg/teleal/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1400(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1600(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1700(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V

    .line 424
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    check-cast v1, Lorg/teleal/cling/support/model/container/Container;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1800(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Ljava/lang/String;I)V

    .line 429
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 425
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v3, v1, Lorg/teleal/cling/support/model/item/Item;

    if-eqz v3, :cond_0

    .line 426
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3, v0, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V

    goto :goto_0
.end method
