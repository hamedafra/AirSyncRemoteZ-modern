.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$18;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;


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
    .line 1670
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$18;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDMRChanged()V
    .locals 0

    .prologue
    .line 1698
    return-void
.end method

.method public onDMSChanged()V
    .locals 0

    .prologue
    .line 1694
    return-void
.end method

.method public onDeviceAdded(Lorg/teleal/cling/model/meta/Device;)V
    .locals 2
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 1675
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "schemas-upnp-org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1676
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaServer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$18;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$5200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lorg/teleal/cling/model/meta/Device;)V

    .line 1680
    :cond_0
    return-void
.end method

.method public onDeviceRemoved(Lorg/teleal/cling/model/meta/Device;)V
    .locals 2
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 1685
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "schemas-upnp-org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1686
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaServer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$18;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$5300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lorg/teleal/cling/model/meta/Device;)V

    .line 1690
    :cond_0
    return-void
.end method

.method public onDeviceUpdate(Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 1704
    return-void
.end method
