.class public interface abstract Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;
.super Ljava/lang/Object;
.source "UpnpProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DevicesListener"
.end annotation


# virtual methods
.method public abstract onDMRChanged()V
.end method

.method public abstract onDMSChanged()V
.end method

.method public abstract onDeviceAdded(Lorg/teleal/cling/model/meta/Device;)V
.end method

.method public abstract onDeviceRemoved(Lorg/teleal/cling/model/meta/Device;)V
.end method

.method public abstract onDeviceUpdate(Lorg/teleal/cling/model/meta/Device;)V
.end method
