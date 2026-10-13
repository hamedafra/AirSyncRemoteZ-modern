.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$11;
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
    .line 891
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x0

    .line 896
    const v2, 0x7f020003

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 897
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    .line 898
    .local v0, "item":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 899
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lorg/teleal/cling/support/model/container/Container;

    if-eqz v2, :cond_1

    .line 900
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressShow()V

    .line 901
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    check-cast v1, Lorg/teleal/cling/support/model/container/Container;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/String;I)V

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 902
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Lorg/teleal/cling/support/model/item/Item;

    if-eqz v2, :cond_0

    .line 903
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v2, v0, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$800(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V

    goto :goto_0
.end method
