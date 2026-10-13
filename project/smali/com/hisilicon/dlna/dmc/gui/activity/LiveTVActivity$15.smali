.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$15;
.super Ljava/lang/Object;
.source "LiveTVActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 670
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 675
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    .line 676
    .local v0, "item":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/teleal/cling/model/meta/Device;

    if-eqz v4, :cond_1

    .line 677
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v2

    .line 678
    .local v2, "udn":Lorg/teleal/cling/model/types/UDN;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMS(Lorg/teleal/cling/model/types/UDN;)V

    .line 680
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/meta/Device;

    invoke-static {v5, v4}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$2800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lorg/teleal/cling/model/meta/Device;)V

    .line 696
    .end local v2    # "udn":Lorg/teleal/cling/model/types/UDN;
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DIDLObject;

    .line 684
    .local v1, "object":Lorg/teleal/cling/support/model/DIDLObject;
    instance-of v4, v1, Lorg/teleal/cling/support/model/container/Container;

    if-eqz v4, :cond_2

    .line 685
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$2000(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 686
    :cond_2
    instance-of v4, v1, Lorg/teleal/cling/support/model/item/Item;

    if-eqz v4, :cond_0

    .line 687
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 688
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v6}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$2900(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$3000(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Ljava/lang/String;ILcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor$DMSProcessorListner;)V

    goto :goto_0

    .line 690
    :cond_3
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getItemList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$2300(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Ljava/util/List;)V

    .line 691
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v4, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$2400(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
