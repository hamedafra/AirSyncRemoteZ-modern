.class public interface abstract Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;
.super Ljava/lang/Object;
.source "UpnpProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;,
        Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;
    }
.end annotation


# virtual methods
.method public abstract addDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V
.end method

.method public abstract addDevicesListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;)V
.end method

.method public abstract addPlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V
.end method

.method public abstract addSystemListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;)V
.end method

.method public abstract bindUpnpService()V
.end method

.method public abstract getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;
.end method

.method public abstract getCurrentDMR()Lorg/teleal/cling/model/meta/Device;
.end method

.method public abstract getCurrentDMS()Lorg/teleal/cling/model/meta/Device;
.end method

.method public abstract getDMRList()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
.end method

.method public abstract getDMSDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/meta/Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDMSList()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;
.end method

.method public abstract getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
.end method

.method public abstract getRegistry()Lorg/teleal/cling/registry/Registry;
.end method

.method public abstract refreshDevice(Lorg/teleal/cling/model/types/UDN;)V
.end method

.method public abstract refreshDevicesList()V
.end method

.method public abstract removeAllRemoteDevices()V
.end method

.method public abstract removeDMRListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V
.end method

.method public abstract removeDevicesListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;)V
.end method

.method public abstract removePlaylistListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V
.end method

.method public abstract removeSystemListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;)V
.end method

.method public abstract setCurrentDMR(Lorg/teleal/cling/model/types/UDN;)V
.end method

.method public abstract setCurrentDMS(Lorg/teleal/cling/model/types/UDN;)V
.end method

.method public abstract setDMSDevice(Lorg/teleal/cling/model/meta/Device;)V
.end method

.method public abstract setDMSExproted(Z)V
.end method

.method public abstract setLiveTV(Lorg/teleal/cling/model/types/UDN;)V
.end method

.method public abstract setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V
.end method

.method public abstract stbOnline(Lorg/teleal/cling/model/types/UDN;)V
.end method

.method public abstract stopLoading()V
.end method

.method public abstract unbindUpnpService()V
.end method

.method public abstract updateOrCreateShareAMContent()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation
.end method

.method public abstract updateOrCreateShareContent()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaInitException;
        }
    .end annotation
.end method
