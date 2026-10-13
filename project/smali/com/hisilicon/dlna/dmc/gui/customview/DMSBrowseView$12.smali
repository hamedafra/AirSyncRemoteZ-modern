.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$12;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 909
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$12;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    const/4 v6, 0x0

    .line 915
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    .line 916
    .local v2, "locate":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 917
    rem-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_0

    .line 918
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020002

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 916
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 920
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f020001

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 924
    :cond_1
    const v4, 0x7f020003

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 925
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$12;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    .line 926
    .local v1, "item":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v3

    .line 927
    .local v3, "object":Ljava/lang/Object;
    instance-of v4, v3, Lorg/teleal/cling/support/model/container/Container;

    if-eqz v4, :cond_3

    .line 928
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$12;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressShow()V

    .line 929
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$12;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    check-cast v3, Lorg/teleal/cling/support/model/container/Container;

    .end local v3    # "object":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/String;I)V

    .line 933
    :cond_2
    :goto_2
    return-void

    .line 930
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v4, v3, Lorg/teleal/cling/support/model/item/Item;

    if-eqz v4, :cond_2

    .line 931
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$12;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v4, v1, v6}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$800(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V

    goto :goto_2
.end method
