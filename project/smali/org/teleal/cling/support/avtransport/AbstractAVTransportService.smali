.class public abstract Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;
.super Ljava/lang/Object;
.source "AbstractAVTransportService.java"


# annotations
.annotation runtime Lorg/teleal/cling/binding/annotations/UpnpService;
    serviceId = .subannotation Lorg/teleal/cling/binding/annotations/UpnpServiceId;
        value = "AVTransport"
    .end subannotation
    serviceType = .subannotation Lorg/teleal/cling/binding/annotations/UpnpServiceType;
        value = "AVTransport"
        version = 0x1
    .end subannotation
    stringConvertibleTypes = {
        Lorg/teleal/cling/support/lastchange/LastChange;
    }
.end annotation

.annotation runtime Lorg/teleal/cling/binding/annotations/UpnpStateVariables;
    value = {
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/teleal/cling/support/model/TransportState;
            name = "TransportState"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/teleal/cling/support/model/TransportStatus;
            name = "TransportStatus"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/teleal/cling/support/model/StorageMedium;
            defaultValue = "NONE"
            name = "PlaybackStorageMedium"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/teleal/cling/support/model/StorageMedium;
            defaultValue = "NOT_IMPLEMENTED"
            name = "RecordStorageMedium"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NETWORK"
            name = "PossiblePlaybackStorageMedia"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NOT_IMPLEMENTED"
            name = "PossibleRecordStorageMedia"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/teleal/cling/support/model/PlayMode;
            defaultValue = "NORMAL"
            name = "CurrentPlayMode"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "1"
            name = "TransportPlaySpeed"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/teleal/cling/support/model/RecordMediumWriteStatus;
            defaultValue = "NOT_IMPLEMENTED"
            name = "RecordMediumWriteStatus"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/teleal/cling/support/model/RecordQualityMode;
            defaultValue = "NOT_IMPLEMENTED"
            name = "CurrentRecordQualityMode"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NOT_IMPLEMENTED"
            name = "PossibleRecordQualityModes"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "ui4"
            defaultValue = "0"
            name = "NumberOfTracks"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "ui4"
            defaultValue = "0"
            name = "CurrentTrack"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "CurrentTrackDuration"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "00:00:00"
            name = "CurrentMediaDuration"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NOT_IMPLEMENTED"
            name = "CurrentTrackMetaData"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "CurrentTrackURI"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "AVTransportURI"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NOT_IMPLEMENTED"
            name = "AVTransportURIMetaData"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NOT_IMPLEMENTED"
            name = "NextAVTransportURI"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            defaultValue = "NOT_IMPLEMENTED"
            name = "NextAVTransportURIMetaData"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "RelativeTimePosition"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "AbsoluteTimePosition"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "i4"
            defaultValue = "2147483647"
            name = "RelativeCounterPosition"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "i4"
            defaultValue = "2147483647"
            name = "AbsoluteCounterPosition"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "CurrentTransportActions"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/teleal/cling/support/model/SeekMode;
            name = "A_ARG_TYPE_SeekMode"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_SeekTarget"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "ui4"
            name = "A_ARG_TYPE_InstanceID"
            sendEvents = false
        .end subannotation
    }
.end annotation


# instance fields
.field private final lastChange:Lorg/teleal/cling/support/lastchange/LastChange;
    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
        eventMaximumRateMilliseconds = 0xc8
    .end annotation
.end field

.field protected final propertyChangeSupport:Ljava/beans/PropertyChangeSupport;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 200
    new-instance v0, Lorg/teleal/cling/support/lastchange/LastChange;

    new-instance v1, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportLastChangeParser;

    invoke-direct {v1}, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportLastChangeParser;-><init>()V

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/lastchange/LastChange;-><init>(Lorg/teleal/cling/support/lastchange/LastChangeParser;)V

    iput-object v0, p0, Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;->lastChange:Lorg/teleal/cling/support/lastchange/LastChange;

    .line 201
    return-void
.end method

.method protected constructor <init>(Ljava/beans/PropertyChangeSupport;)V
    .locals 2
    .param p1, "propertyChangeSupport"    # Ljava/beans/PropertyChangeSupport;

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 210
    new-instance v0, Lorg/teleal/cling/support/lastchange/LastChange;

    new-instance v1, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportLastChangeParser;

    invoke-direct {v1}, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportLastChangeParser;-><init>()V

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/lastchange/LastChange;-><init>(Lorg/teleal/cling/support/lastchange/LastChangeParser;)V

    iput-object v0, p0, Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;->lastChange:Lorg/teleal/cling/support/lastchange/LastChange;

    .line 211
    return-void
.end method

.method protected constructor <init>(Ljava/beans/PropertyChangeSupport;Lorg/teleal/cling/support/lastchange/LastChange;)V
    .locals 0
    .param p1, "propertyChangeSupport"    # Ljava/beans/PropertyChangeSupport;
    .param p2, "lastChange"    # Lorg/teleal/cling/support/lastchange/LastChange;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 215
    iput-object p2, p0, Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;->lastChange:Lorg/teleal/cling/support/lastchange/LastChange;

    .line 216
    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/support/lastchange/LastChange;)V
    .locals 1
    .param p1, "lastChange"    # Lorg/teleal/cling/support/lastchange/LastChange;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 205
    iput-object p1, p0, Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;->lastChange:Lorg/teleal/cling/support/lastchange/LastChange;

    .line 206
    return-void
.end method

.method public static getDefaultInstanceID()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 4

    .prologue
    .line 231
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public fireLastChange()V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;->getLastChange()Lorg/teleal/cling/support/lastchange/LastChange;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/lastchange/LastChange;->fire(Ljava/beans/PropertyChangeSupport;)V

    .line 224
    return-void
.end method

.method public abstract getCurrentTransportActions(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Ljava/lang/String;
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "Actions"
            .end subannotation
        }
    .end annotation
.end method

.method public abstract getDeviceCapabilities(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/model/DeviceCapabilities;
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getPlayMediaString"
                name = "PlayMedia"
                stateVariable = "PossiblePlaybackStorageMedia"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRecMediaString"
                name = "RecMedia"
                stateVariable = "PossibleRecordStorageMedia"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRecQualityModesString"
                name = "RecQualityModes"
                stateVariable = "PossibleRecordQualityModes"
            .end subannotation
        }
    .end annotation
.end method

.method public getLastChange()Lorg/teleal/cling/support/lastchange/LastChange;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;->lastChange:Lorg/teleal/cling/support/lastchange/LastChange;

    return-object v0
.end method

.method public abstract getMediaInfo(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/model/MediaInfo;
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getNumberOfTracks"
                name = "NrTracks"
                stateVariable = "NumberOfTracks"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getMediaDuration"
                name = "MediaDuration"
                stateVariable = "CurrentMediaDuration"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCurrentURI"
                name = "CurrentURI"
                stateVariable = "AVTransportURI"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCurrentURIMetaData"
                name = "CurrentURIMetaData"
                stateVariable = "AVTransportURIMetaData"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getNextURI"
                name = "NextURI"
                stateVariable = "NextAVTransportURI"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getNextURIMetaData"
                name = "NextURIMetaData"
                stateVariable = "NextAVTransportURIMetaData"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getPlayMedium"
                name = "PlayMedium"
                stateVariable = "PlaybackStorageMedium"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRecordMedium"
                name = "RecordMedium"
                stateVariable = "RecordStorageMedium"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getWriteStatus"
                name = "WriteStatus"
                stateVariable = "RecordMediumWriteStatus"
            .end subannotation
        }
    .end annotation
.end method

.method public abstract getPositionInfo(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/model/PositionInfo;
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getTrack"
                name = "Track"
                stateVariable = "CurrentTrack"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getTrackDuration"
                name = "TrackDuration"
                stateVariable = "CurrentTrackDuration"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getTrackMetaData"
                name = "TrackMetaData"
                stateVariable = "CurrentTrackMetaData"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getTrackURI"
                name = "TrackURI"
                stateVariable = "CurrentTrackURI"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRelTime"
                name = "RelTime"
                stateVariable = "RelativeTimePosition"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getAbsTime"
                name = "AbsTime"
                stateVariable = "AbsoluteTimePosition"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRelCount"
                name = "RelCount"
                stateVariable = "RelativeCounterPosition"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getAbsCount"
                name = "AbsCount"
                stateVariable = "AbsoluteCounterPosition"
            .end subannotation
        }
    .end annotation
.end method

.method public getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/teleal/cling/support/avtransport/AbstractAVTransportService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    return-object v0
.end method

.method public abstract getTransportInfo(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/model/TransportInfo;
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCurrentTransportState"
                name = "CurrentTransportState"
                stateVariable = "TransportState"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCurrentTransportStatus"
                name = "CurrentTransportStatus"
                stateVariable = "TransportStatus"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getCurrentSpeed"
                name = "CurrentSpeed"
                stateVariable = "TransportPlaySpeed"
            .end subannotation
        }
    .end annotation
.end method

.method public abstract getTransportSettings(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/model/TransportSettings;
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getPlayMode"
                name = "PlayMode"
                stateVariable = "CurrentPlayMode"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRecQualityMode"
                name = "RecQualityMode"
                stateVariable = "CurrentRecordQualityMode"
            .end subannotation
        }
    .end annotation
.end method

.method public abstract next(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract pause(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract play(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "Speed"
            stateVariable = "TransportPlaySpeed"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract previous(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract record(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract seek(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "Unit"
            stateVariable = "A_ARG_TYPE_SeekMode"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "Target"
            stateVariable = "A_ARG_TYPE_SeekTarget"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract setAVTransportURI(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "CurrentURI"
            stateVariable = "AVTransportURI"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "CurrentURIMetaData"
            stateVariable = "AVTransportURIMetaData"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract setNextAVTransportURI(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "NextURI"
            stateVariable = "AVTransportURI"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "NextURIMetaData"
            stateVariable = "AVTransportURIMetaData"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract setPlayMode(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "NewPlayMode"
            stateVariable = "CurrentPlayMode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract setRecordQualityMode(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "NewRecordQualityMode"
            stateVariable = "CurrentRecordQualityMode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract stop(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/avtransport/AVTransportException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation
.end method
