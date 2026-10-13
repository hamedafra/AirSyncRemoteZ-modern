.class public abstract Lorg/teleal/cling/support/renderingcontrol/AbstractAudioRenderingControl;
.super Ljava/lang/Object;
.source "AbstractAudioRenderingControl.java"


# annotations
.annotation runtime Lorg/teleal/cling/binding/annotations/UpnpService;
    serviceId = .subannotation Lorg/teleal/cling/binding/annotations/UpnpServiceId;
        value = "RenderingControl"
    .end subannotation
    serviceType = .subannotation Lorg/teleal/cling/binding/annotations/UpnpServiceType;
        value = "RenderingControl"
        version = 0x1
    .end subannotation
    stringConvertibleTypes = {
        Lorg/teleal/cling/support/lastchange/LastChange;
    }
.end annotation

.annotation runtime Lorg/teleal/cling/binding/annotations/UpnpStateVariables;
    value = {
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "PresetNameList"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "boolean"
            name = "Mute"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            allowedValueMaximum = 0x64L
            allowedValueMinimum = 0x0L
            datatype = "ui2"
            name = "Volume"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "i2"
            name = "VolumeDB"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "boolean"
            name = "Loudness"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/teleal/cling/support/model/Channel;
            name = "A_ARG_TYPE_Channel"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/teleal/cling/support/model/PresetName;
            name = "A_ARG_TYPE_PresetName"
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
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/teleal/cling/support/renderingcontrol/AbstractAudioRenderingControl;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 93
    new-instance v0, Lorg/teleal/cling/support/lastchange/LastChange;

    new-instance v1, Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlLastChangeParser;

    invoke-direct {v1}, Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlLastChangeParser;-><init>()V

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/lastchange/LastChange;-><init>(Lorg/teleal/cling/support/lastchange/LastChangeParser;)V

    iput-object v0, p0, Lorg/teleal/cling/support/renderingcontrol/AbstractAudioRenderingControl;->lastChange:Lorg/teleal/cling/support/lastchange/LastChange;

    .line 94
    return-void
.end method

.method protected constructor <init>(Ljava/beans/PropertyChangeSupport;)V
    .locals 2
    .param p1, "propertyChangeSupport"    # Ljava/beans/PropertyChangeSupport;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/teleal/cling/support/renderingcontrol/AbstractAudioRenderingControl;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 103
    new-instance v0, Lorg/teleal/cling/support/lastchange/LastChange;

    new-instance v1, Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlLastChangeParser;

    invoke-direct {v1}, Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlLastChangeParser;-><init>()V

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/lastchange/LastChange;-><init>(Lorg/teleal/cling/support/lastchange/LastChangeParser;)V

    iput-object v0, p0, Lorg/teleal/cling/support/renderingcontrol/AbstractAudioRenderingControl;->lastChange:Lorg/teleal/cling/support/lastchange/LastChange;

    .line 104
    return-void
.end method

.method protected constructor <init>(Ljava/beans/PropertyChangeSupport;Lorg/teleal/cling/support/lastchange/LastChange;)V
    .locals 0
    .param p1, "propertyChangeSupport"    # Ljava/beans/PropertyChangeSupport;
    .param p2, "lastChange"    # Lorg/teleal/cling/support/lastchange/LastChange;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/teleal/cling/support/renderingcontrol/AbstractAudioRenderingControl;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 108
    iput-object p2, p0, Lorg/teleal/cling/support/renderingcontrol/AbstractAudioRenderingControl;->lastChange:Lorg/teleal/cling/support/lastchange/LastChange;

    .line 109
    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/support/lastchange/LastChange;)V
    .locals 1
    .param p1, "lastChange"    # Lorg/teleal/cling/support/lastchange/LastChange;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/teleal/cling/support/renderingcontrol/AbstractAudioRenderingControl;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 98
    iput-object p1, p0, Lorg/teleal/cling/support/renderingcontrol/AbstractAudioRenderingControl;->lastChange:Lorg/teleal/cling/support/lastchange/LastChange;

    .line 99
    return-void
.end method

.method public static getDefaultInstanceID()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public fireLastChange()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/AbstractAudioRenderingControl;->getLastChange()Lorg/teleal/cling/support/lastchange/LastChange;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/AbstractAudioRenderingControl;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/lastchange/LastChange;->fire(Ljava/beans/PropertyChangeSupport;)V

    .line 117
    return-void
.end method

.method protected getChannel(Ljava/lang/String;)Lorg/teleal/cling/support/model/Channel;
    .locals 5
    .param p1, "channelName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    invoke-static {p1}, Lorg/teleal/cling/support/model/Channel;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/Channel;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported audio channel: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v1
.end method

.method public getLastChange()Lorg/teleal/cling/support/lastchange/LastChange;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/teleal/cling/support/renderingcontrol/AbstractAudioRenderingControl;->lastChange:Lorg/teleal/cling/support/lastchange/LastChange;

    return-object v0
.end method

.method public getLoudness(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Z
    .locals 1
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2, "channelName"    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "CurrentLoudness"
                stateVariable = "Loudness"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getMute(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Z
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "CurrentMute"
                stateVariable = "Mute"
            .end subannotation
        }
    .end annotation
.end method

.method public getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/teleal/cling/support/renderingcontrol/AbstractAudioRenderingControl;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    return-object v0
.end method

.method public abstract getVolume(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "CurrentVolume"
                stateVariable = "Volume"
            .end subannotation
        }
    .end annotation
.end method

.method public getVolumeDB(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2, "channelName"    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "CurrentVolume"
                stateVariable = "VolumeDB"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeDBRange(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)Lorg/teleal/cling/support/model/VolumeDBRange;
    .locals 3
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2, "channelName"    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getMinValue"
                name = "MinValue"
                stateVariable = "VolumeDB"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getMaxValue"
                name = "MaxValue"
                stateVariable = "VolumeDB"
            .end subannotation
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 178
    new-instance v0, Lorg/teleal/cling/support/model/VolumeDBRange;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/VolumeDBRange;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public listPresets(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Ljava/lang/String;
    .locals 1
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "CurrentPresetNameList"
                stateVariable = "PresetNameList"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lorg/teleal/cling/support/model/PresetName;->FactoryDefault:Lorg/teleal/cling/support/model/PresetName;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/PresetName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public selectPreset(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2, "presetName"    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "PresetName"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation

    .prologue
    .line 135
    return-void
.end method

.method public setLoudness(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2, "channelName"    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .param p3, "desiredLoudness"    # Z
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "DesiredLoudness"
            stateVariable = "Loudness"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation

    .prologue
    .line 196
    return-void
.end method

.method public abstract setMute(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Z)V
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "DesiredMute"
            stateVariable = "Mute"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public abstract setVolume(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;)V
    .param p1    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .param p3    # Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "DesiredVolume"
            stateVariable = "Volume"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation
.end method

.method public setVolumeDB(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "InstanceID"
        .end annotation
    .end param
    .param p2, "channelName"    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "Channel"
        .end annotation
    .end param
    .param p3, "desiredVolumeDB"    # Ljava/lang/Integer;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "DesiredVolume"
            stateVariable = "VolumeDB"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/support/renderingcontrol/RenderingControlException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation

    .prologue
    .line 170
    return-void
.end method
