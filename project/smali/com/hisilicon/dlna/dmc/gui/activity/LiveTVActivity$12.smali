.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$12;
.super Ljava/lang/Object;
.source "LiveTVActivity.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;


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
    .line 583
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$12;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDMRChanged()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public onDMSChanged()V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public onDeviceAdded(Lorg/teleal/cling/model/meta/Device;)V
    .locals 2
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 588
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "schemas-upnp-org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaServer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$12;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$2500(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lorg/teleal/cling/model/meta/Device;)V

    .line 593
    :cond_0
    return-void
.end method

.method public onDeviceRemoved(Lorg/teleal/cling/model/meta/Device;)V
    .locals 2
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 598
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "schemas-upnp-org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaServer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$12;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$2600(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lorg/teleal/cling/model/meta/Device;)V

    .line 603
    :cond_0
    return-void
.end method

.method public onDeviceUpdate(Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 618
    return-void
.end method
