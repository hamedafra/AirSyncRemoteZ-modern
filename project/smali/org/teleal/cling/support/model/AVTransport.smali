.class public Lorg/teleal/cling/support/model/AVTransport;
.super Ljava/lang/Object;
.source "AVTransport.java"


# instance fields
.field protected deviceCapabilities:Lorg/teleal/cling/support/model/DeviceCapabilities;

.field protected final instanceID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

.field protected final lastChange:Lorg/teleal/cling/support/lastchange/LastChange;

.field protected mediaInfo:Lorg/teleal/cling/support/model/MediaInfo;

.field protected positionInfo:Lorg/teleal/cling/support/model/PositionInfo;

.field protected transportInfo:Lorg/teleal/cling/support/model/TransportInfo;

.field protected transportSettings:Lorg/teleal/cling/support/model/TransportSettings;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/support/lastchange/LastChange;Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 2
    .param p1, "instanceID"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "lastChange"    # Lorg/teleal/cling/support/lastchange/LastChange;
    .param p3, "possiblePlayMedium"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/teleal/cling/support/model/StorageMedium;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/support/model/AVTransport;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/support/lastchange/LastChange;[Lorg/teleal/cling/support/model/StorageMedium;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/support/lastchange/LastChange;[Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 1
    .param p1, "instanceID"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "lastChange"    # Lorg/teleal/cling/support/lastchange/LastChange;
    .param p3, "possiblePlayMedia"    # [Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/teleal/cling/support/model/AVTransport;->instanceID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 44
    iput-object p2, p0, Lorg/teleal/cling/support/model/AVTransport;->lastChange:Lorg/teleal/cling/support/lastchange/LastChange;

    .line 45
    new-instance v0, Lorg/teleal/cling/support/model/DeviceCapabilities;

    invoke-direct {v0, p3}, Lorg/teleal/cling/support/model/DeviceCapabilities;-><init>([Lorg/teleal/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/AVTransport;->setDeviceCapabilities(Lorg/teleal/cling/support/model/DeviceCapabilities;)V

    .line 46
    new-instance v0, Lorg/teleal/cling/support/model/MediaInfo;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/MediaInfo;-><init>()V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/AVTransport;->setMediaInfo(Lorg/teleal/cling/support/model/MediaInfo;)V

    .line 47
    new-instance v0, Lorg/teleal/cling/support/model/TransportInfo;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/TransportInfo;-><init>()V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/AVTransport;->setTransportInfo(Lorg/teleal/cling/support/model/TransportInfo;)V

    .line 48
    new-instance v0, Lorg/teleal/cling/support/model/PositionInfo;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/PositionInfo;-><init>()V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/AVTransport;->setPositionInfo(Lorg/teleal/cling/support/model/PositionInfo;)V

    .line 49
    new-instance v0, Lorg/teleal/cling/support/model/TransportSettings;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/TransportSettings;-><init>()V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/AVTransport;->setTransportSettings(Lorg/teleal/cling/support/model/TransportSettings;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getDeviceCapabilities()Lorg/teleal/cling/support/model/DeviceCapabilities;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/teleal/cling/support/model/AVTransport;->deviceCapabilities:Lorg/teleal/cling/support/model/DeviceCapabilities;

    return-object v0
.end method

.method public getInstanceId()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/teleal/cling/support/model/AVTransport;->instanceID:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getLastChange()Lorg/teleal/cling/support/lastchange/LastChange;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/teleal/cling/support/model/AVTransport;->lastChange:Lorg/teleal/cling/support/lastchange/LastChange;

    return-object v0
.end method

.method public getMediaInfo()Lorg/teleal/cling/support/model/MediaInfo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/teleal/cling/support/model/AVTransport;->mediaInfo:Lorg/teleal/cling/support/model/MediaInfo;

    return-object v0
.end method

.method public getPositionInfo()Lorg/teleal/cling/support/model/PositionInfo;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/teleal/cling/support/model/AVTransport;->positionInfo:Lorg/teleal/cling/support/model/PositionInfo;

    return-object v0
.end method

.method public getTransportInfo()Lorg/teleal/cling/support/model/TransportInfo;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/teleal/cling/support/model/AVTransport;->transportInfo:Lorg/teleal/cling/support/model/TransportInfo;

    return-object v0
.end method

.method public getTransportSettings()Lorg/teleal/cling/support/model/TransportSettings;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/teleal/cling/support/model/AVTransport;->transportSettings:Lorg/teleal/cling/support/model/TransportSettings;

    return-object v0
.end method

.method public setDeviceCapabilities(Lorg/teleal/cling/support/model/DeviceCapabilities;)V
    .locals 0
    .param p1, "deviceCapabilities"    # Lorg/teleal/cling/support/model/DeviceCapabilities;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/teleal/cling/support/model/AVTransport;->deviceCapabilities:Lorg/teleal/cling/support/model/DeviceCapabilities;

    .line 90
    return-void
.end method

.method public setMediaInfo(Lorg/teleal/cling/support/model/MediaInfo;)V
    .locals 0
    .param p1, "mediaInfo"    # Lorg/teleal/cling/support/model/MediaInfo;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/teleal/cling/support/model/AVTransport;->mediaInfo:Lorg/teleal/cling/support/model/MediaInfo;

    .line 66
    return-void
.end method

.method public setPositionInfo(Lorg/teleal/cling/support/model/PositionInfo;)V
    .locals 0
    .param p1, "positionInfo"    # Lorg/teleal/cling/support/model/PositionInfo;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/teleal/cling/support/model/AVTransport;->positionInfo:Lorg/teleal/cling/support/model/PositionInfo;

    .line 82
    return-void
.end method

.method public setTransportInfo(Lorg/teleal/cling/support/model/TransportInfo;)V
    .locals 0
    .param p1, "transportInfo"    # Lorg/teleal/cling/support/model/TransportInfo;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/teleal/cling/support/model/AVTransport;->transportInfo:Lorg/teleal/cling/support/model/TransportInfo;

    .line 74
    return-void
.end method

.method public setTransportSettings(Lorg/teleal/cling/support/model/TransportSettings;)V
    .locals 0
    .param p1, "transportSettings"    # Lorg/teleal/cling/support/model/TransportSettings;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/teleal/cling/support/model/AVTransport;->transportSettings:Lorg/teleal/cling/support/model/TransportSettings;

    .line 98
    return-void
.end method
