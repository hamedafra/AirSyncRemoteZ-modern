.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$MyDeviceListener;
.super Ljava/lang/Object;
.source "DMSBrowseActivity.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDeviceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$MyDeviceListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$1;

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$MyDeviceListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;)V

    return-void
.end method

.method private addSTBDMR(Lorg/teleal/cling/model/meta/Device;)V
    .locals 3
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 421
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMR()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 422
    .local v0, "dmrDevice":Lorg/teleal/cling/model/meta/Device;
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isSTBDMR(Lorg/teleal/cling/model/meta/Device;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isSTBDMR(Lorg/teleal/cling/model/meta/Device;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    .line 428
    .local v1, "udn":Lorg/teleal/cling/model/types/UDN;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->stbOnline(Lorg/teleal/cling/model/types/UDN;)V

    goto :goto_0
.end method

.method private updateSTBDMR(Lorg/teleal/cling/model/meta/Device;)V
    .locals 3
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 433
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMR()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 434
    .local v0, "dmrDevice":Lorg/teleal/cling/model/meta/Device;
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isSTBDMR(Lorg/teleal/cling/model/meta/Device;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isSTBDMR(Lorg/teleal/cling/model/meta/Device;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    .line 440
    .local v1, "udn":Lorg/teleal/cling/model/types/UDN;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->stbOnline(Lorg/teleal/cling/model/types/UDN;)V

    goto :goto_0
.end method


# virtual methods
.method public onDMRChanged()V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public onDMSChanged()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public onDeviceAdded(Lorg/teleal/cling/model/meta/Device;)V
    .locals 3
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 381
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------Come into MyDeviceListener->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "schemas-upnp-org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRenderer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--Come into DMR device add->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$MyDeviceListener;->addSTBDMR(Lorg/teleal/cling/model/meta/Device;)V

    .line 388
    :cond_0
    return-void
.end method

.method public onDeviceRemoved(Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 395
    return-void
.end method

.method public onDeviceUpdate(Lorg/teleal/cling/model/meta/Device;)V
    .locals 3
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 412
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "schemas-upnp-org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/DeviceType;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRenderer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--Come into DMR device onDeviceUpdate->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$MyDeviceListener;->updateSTBDMR(Lorg/teleal/cling/model/meta/Device;)V

    .line 418
    :cond_0
    return-void
.end method
