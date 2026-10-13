.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$20;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->removeDMS(Lorg/teleal/cling/model/meta/Device;)V
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
    .line 1774
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$20;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$20;->val$device:Lorg/teleal/cling/model/meta/Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$20;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    move-result-object v1

    monitor-enter v1

    .line 1779
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$20;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$20;->val$device:Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->remove(Ljava/lang/Object;)V

    .line 1780
    monitor-exit v1

    .line 1781
    return-void

    .line 1780
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
