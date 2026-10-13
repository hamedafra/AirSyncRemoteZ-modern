.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$9;
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
    .line 732
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

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
    .line 781
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 783
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/Device;

    .line 784
    .local v0, "item":Lorg/teleal/cling/model/meta/Device;
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    .line 785
    .local v1, "udn":Lorg/teleal/cling/model/types/UDN;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setCurrentDMS(Lorg/teleal/cling/model/types/UDN;)V

    .line 787
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->notifyDataSetChanged()V

    .line 789
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2800(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    .line 791
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->restore()V

    .line 793
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v2, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->deviceBrowse(Lorg/teleal/cling/model/meta/Device;)V

    .line 794
    return-void
.end method
