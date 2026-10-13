.class public Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
.super Ljava/lang/Object;
.source "RemoteDMRProcessorImpl.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;
    }
.end annotation


# static fields
.field private static final AUTO_NEXT_DELAY:I = 0x4

.field private static final MAX_VOLUME:I = 0x64

.field private static final SEEK_DELAY_INTERVAL:J = 0xc8L

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_INTERVAL:I = 0x3e8


# instance fields
.field private volatile imagePlay:Z

.field private isSeeked:Z

.field private m_autoNextPending:I

.field private m_avtransportService:Lorg/teleal/cling/model/meta/Service;

.field private m_checkGetPositionInfo:Z

.field private m_checkGetTransportInfo:Z

.field private m_checkGetVolumeInfo:Z

.field private m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

.field private m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

.field private m_currentPosition:I

.field private m_currentState:Lorg/teleal/cling/support/model/TransportState;

.field private m_currentVolume:I

.field private m_device:Lorg/teleal/cling/model/meta/Device;

.field private m_isBusy:Z

.field private m_listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_renderingControl:Lorg/teleal/cling/model/meta/Service;

.field private m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

.field private volatile mediaMiddleEnd:Z

.field private volatile mediaNext:Z

.field private volatile mediaPlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/controlpoint/ControlPoint;)V
    .locals 5
    .param p1, "dmr"    # Lorg/teleal/cling/model/meta/Device;
    .param p2, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    .line 55
    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_renderingControl:Lorg/teleal/cling/model/meta/Service;

    .line 63
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    .line 64
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->isSeeked:Z

    .line 65
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->imagePlay:Z

    .line 66
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->mediaPlay:Z

    .line 67
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->mediaNext:Z

    .line 68
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->mediaMiddleEnd:Z

    .line 69
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_checkGetPositionInfo:Z

    .line 70
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_checkGetTransportInfo:Z

    .line 71
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_checkGetVolumeInfo:Z

    .line 72
    const/4 v0, 0x4

    iput v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_autoNextPending:I

    .line 75
    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    .line 200
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_device:Lorg/teleal/cling/model/meta/Device;

    .line 201
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    .line 202
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_device:Lorg/teleal/cling/model/meta/Device;

    new-instance v1, Lorg/teleal/cling/model/types/ServiceType;

    const-string v2, "schemas-upnp-org"

    const-string v3, "AVTransport"

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/types/ServiceType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/meta/Device;->findService(Lorg/teleal/cling/model/types/ServiceType;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    .line 203
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_device:Lorg/teleal/cling/model/meta/Device;

    new-instance v1, Lorg/teleal/cling/model/types/ServiceType;

    const-string v2, "schemas-upnp-org"

    const-string v3, "RenderingControl"

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/types/ServiceType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/meta/Device;->findService(Lorg/teleal/cling/model/types/ServiceType;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_renderingControl:Lorg/teleal/cling/model/meta/Service;

    .line 204
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_renderingControl:Lorg/teleal/cling/model/meta/Service;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_renderingControl:Lorg/teleal/cling/model/meta/Service;

    const-string v1, "SetVolume"

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_renderingControl:Lorg/teleal/cling/model/meta/Service;

    const-string v1, "GetVolume"

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    iput-object v4, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_renderingControl:Lorg/teleal/cling/model/meta/Service;

    .line 206
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    .line 207
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-direct {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 208
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/model/meta/Service;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_checkGetPositionInfo:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->fireOnPausedEvent()V

    return-void
.end method

.method static synthetic access$102(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_checkGetPositionInfo:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->fireOnStopedEvent()V

    return-void
.end method

.method static synthetic access$1200(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->mediaNext:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->fireOnEndTrackEvent()V

    return-void
.end method

.method static synthetic access$1400(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->fireOnMiddleEndEvent()V

    return-void
.end method

.method static synthetic access$1500(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/model/meta/Service;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_renderingControl:Lorg/teleal/cling/model/meta/Service;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_checkGetVolumeInfo:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_checkGetVolumeInfo:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentVolume:I

    return p1
.end method

.method static synthetic access$1800(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->playingSeek(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    return p1
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # Lorg/teleal/cling/model/meta/Action;
    .param p2, "x2"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->fireOnFailEvent(Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->imagePlay:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->isSeeked:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->isSeeked:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->setUriAndPlay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->setAVTransportURIAndPlay(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->fireUpdatePositionEvent(JJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/controlpoint/ControlPoint;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_checkGetTransportInfo:Z

    return v0
.end method

.method static synthetic access$602(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_checkGetTransportInfo:Z

    return p1
.end method

.method static synthetic access$702(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/support/model/TransportState;)Lorg/teleal/cling/support/model/TransportState;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p1, "x1"    # Lorg/teleal/cling/support/model/TransportState;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentState:Lorg/teleal/cling/support/model/TransportState;

    return-object p1
.end method

.method static synthetic access$800(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->fireOnPlayingEvent()V

    return-void
.end method

.method private fireOnEndTrackEvent()V
    .locals 4

    .prologue
    .line 434
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 436
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onCompleted()V

    goto :goto_0

    .line 438
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    return-void
.end method

.method private fireOnErrorEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 486
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 488
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onErrorEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 490
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    return-void
.end method

.method private fireOnFailEvent(Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Lorg/teleal/cling/model/meta/Action;
    .param p2, "response"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 377
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onActionFail(Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    return-void
.end method

.method private fireOnMiddleEndEvent()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 459
    iget-boolean v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    if-eqz v5, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-boolean v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->mediaMiddleEnd:Z

    if-nez v5, :cond_0

    .line 465
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v5

    invoke-interface {v5}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v3

    .line 466
    .local v3, "m_playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-eqz v3, :cond_0

    .line 468
    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    .line 469
    .local v0, "currentItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getType()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    move-result-object v5

    sget-object v6, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getType()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    move-result-object v5

    sget-object v6, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    if-ne v5, v6, :cond_5

    :cond_2
    move v1, v4

    .line 474
    .local v1, "isImage":Z
    :goto_1
    iget-boolean v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->mediaPlay:Z

    if-nez v5, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    iget-boolean v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->imagePlay:Z

    if-nez v5, :cond_4

    if-nez v1, :cond_0

    .line 477
    :cond_4
    iput-boolean v4, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->mediaMiddleEnd:Z

    .line 478
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v5

    .line 479
    :try_start_0
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 480
    .local v2, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onMiddleEndEvent()V

    goto :goto_2

    .line 482
    .end local v2    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 472
    .end local v1    # "isImage":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 482
    .restart local v1    # "isImage":Z
    :cond_6
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private fireOnPausedEvent()V
    .locals 4

    .prologue
    .line 414
    iget-boolean v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    if-eqz v1, :cond_0

    .line 421
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 418
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onPaused()V

    goto :goto_1

    .line 420
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private fireOnPlayingEvent()V
    .locals 4

    .prologue
    .line 424
    iget-boolean v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    if-eqz v1, :cond_0

    .line 431
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 428
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onPlaying()V

    goto :goto_1

    .line 430
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private fireOnStopedEvent()V
    .locals 4

    .prologue
    .line 404
    iget-boolean v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    if-eqz v1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 408
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onStoped()V

    goto :goto_1

    .line 410
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private fireUpdatePositionEvent(JJ)V
    .locals 9
    .param p1, "current"    # J
    .param p3, "max"    # J

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x5

    const-wide/16 v4, 0x0

    .line 383
    iget-boolean v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    if-eqz v1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 386
    :cond_0
    cmp-long v1, p3, v4

    if-lez v1, :cond_1

    cmp-long v1, p3, v6

    if-lez v1, :cond_2

    :cond_1
    cmp-long v1, p3, v6

    if-lez v1, :cond_3

    sub-long v2, p3, p1

    cmp-long v1, v2, v6

    if-gtz v1, :cond_3

    .line 388
    :cond_2
    iput-boolean v8, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->mediaNext:Z

    .line 391
    :cond_3
    cmp-long v1, p3, v4

    if-lez v1, :cond_4

    cmp-long v1, p1, v4

    if-lez v1, :cond_4

    .line 393
    iput-boolean v8, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->mediaPlay:Z

    .line 396
    :cond_4
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .line 398
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;->onUpdatePosition(JJ)V

    goto :goto_1

    .line 400
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private playingSeek(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 299
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 300
    return-void
.end method

.method private setAVTransportURIAndPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "metaData"    # Ljava/lang/String;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$9;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$9;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    .line 684
    return-void
.end method

.method private setUriAndPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "metaData"    # Ljava/lang/String;

    .prologue
    .line 641
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    monitor-enter v2

    .line 642
    :try_start_0
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .local v0, "stop":Lorg/teleal/cling/support/avtransport/callback/Stop;
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    invoke-interface {v1, v0}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    .line 664
    monitor-exit v2

    .line 665
    return-void

    .line 664
    .end local v0    # "stop":Lorg/teleal/cling/support/avtransport/callback/Stop;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .prologue
    .line 358
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    if-nez v0, :cond_1

    .line 362
    const-string v0, "Cannot get service on this device"

    invoke-direct {p0, v0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->fireOnErrorEvent(Ljava/lang/String;)V

    .line 363
    :cond_1
    monitor-exit v1

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->stop()V

    .line 497
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->stopThread()V

    .line 500
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->isSeeked:Z

    .line 502
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v1

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 504
    monitor-exit v1

    .line 505
    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    return-object v0
.end method

.method public getCurrentTrackURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/teleal/cling/support/model/DIDLObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaxVolume()I
    .locals 1

    .prologue
    .line 559
    const/16 v0, 0x64

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_device:Lorg/teleal/cling/model/meta/Device;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_device:Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NULL"

    goto :goto_0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentVolume:I

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 305
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    if-nez v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    .line 308
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$3;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$3;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/model/meta/Service;)V

    .line 324
    .local v0, "pause":Lorg/teleal/cling/support/avtransport/callback/Pause;
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    invoke-interface {v1, v0}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    .line 217
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$1;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$1;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/model/meta/Service;)V

    .line 246
    .local v0, "play":Lorg/teleal/cling/support/avtransport/callback/Play;
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    invoke-interface {v1, v0}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;

    .prologue
    .line 368
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v1

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 370
    monitor-exit v1

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public seek(Ljava/lang/String;)V
    .locals 3
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 508
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    .line 510
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$5;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    sget-object v2, Lorg/teleal/cling/support/model/SeekMode;->REL_TIME:Lorg/teleal/cling/support/model/SeekMode;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$5;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/SeekMode;Ljava/lang/String;)V

    .line 528
    .local v0, "seek":Lorg/teleal/cling/support/avtransport/callback/Seek;
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    invoke-interface {v1, v0}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    .line 529
    return-void
.end method

.method public setRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 573
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->stopThread()V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    .line 578
    :cond_0
    if-eqz p1, :cond_1

    .line 579
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    .line 580
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_updateThread:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->start()V

    .line 582
    :cond_1
    return-void
.end method

.method public setURIandPlay(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V
    .locals 6
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 586
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "---come into setURIandPlay---"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 587
    iput-boolean v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->imagePlay:Z

    .line 588
    iput-boolean v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->mediaPlay:Z

    .line 589
    iput-boolean v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->mediaNext:Z

    .line 590
    iput-boolean v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->mediaMiddleEnd:Z

    .line 591
    iput v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_autoNextPending:I

    .line 592
    if-nez p1, :cond_1

    .line 593
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 594
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->stop()V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    invoke-virtual {p1, v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setRemotePlay(Z)V

    .line 613
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "url":Ljava/lang/String;
    iput v5, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_autoNextPending:I

    .line 615
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v1, p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentState:Lorg/teleal/cling/support/model/TransportState;

    sget-object v2, Lorg/teleal/cling/support/model/TransportState;->STOPPED:Lorg/teleal/cling/support/model/TransportState;

    if-ne v1, v2, :cond_0

    .line 621
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----remot start play----"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 622
    iput-boolean v4, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    .line 624
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentItem:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 625
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The metaData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getMetaData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 626
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The url12 is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$7;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 635
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setVolume(I)V
    .locals 6
    .param p1, "newVolume"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_renderingControl:Lorg/teleal/cling/model/meta/Service;

    if-eqz v0, :cond_0

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    .line 536
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$6;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_renderingControl:Lorg/teleal/cling/model/meta/Service;

    int-to-long v4, p1

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$6;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/model/meta/Service;J)V

    invoke-interface {v0, v1}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    .line 550
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 330
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    if-nez v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_isBusy:Z

    .line 334
    iget v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentPosition:I

    if-eqz v1, :cond_2

    .line 335
    iget v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_currentPosition:I

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setPlayPosition(I)V

    .line 337
    :cond_2
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$4;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_avtransportService:Lorg/teleal/cling/model/meta/Service;

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$4;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/model/meta/Service;)V

    .line 353
    .local v0, "stop":Lorg/teleal/cling/support/avtransport/callback/Stop;
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->m_controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    invoke-interface {v1, v0}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    goto :goto_0
.end method
