.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$19;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->addDMS(Lorg/teleal/cling/model/meta/Device;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

.field final synthetic val$device:Lorg/teleal/cling/model/meta/Device;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$19;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$19;->val$device:Lorg/teleal/cling/model/meta/Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$19;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    move-result-object v1

    monitor-enter v1

    .line 1714
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$19;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$19;->val$device:Lorg/teleal/cling/model/meta/Device;

    invoke-static {v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$5400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lorg/teleal/cling/model/meta/Device;)V

    .line 1715
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$19;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$19;->val$device:Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getDMSToastName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1716
    monitor-exit v1

    .line 1717
    return-void

    .line 1716
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
