.class public Lorg/teleal/cling/support/model/Res;
.super Ljava/lang/Object;
.source "Res.java"


# instance fields
.field protected bitrate:Ljava/lang/Long;

.field protected bitsPerSample:Ljava/lang/Long;

.field protected colorDepth:Ljava/lang/Long;

.field protected duration:Ljava/lang/String;

.field protected importUri:Ljava/net/URI;

.field protected nrAudioChannels:Ljava/lang/Long;

.field protected protection:Ljava/lang/String;

.field protected protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

.field protected resolution:Ljava/lang/String;

.field protected sampleFrequency:Ljava/lang/Long;

.field protected size:Ljava/lang/Long;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "importUri"    # Ljava/net/URI;
    .param p2, "protocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfo;
    .param p3, "size"    # Ljava/lang/Long;
    .param p4, "duration"    # Ljava/lang/String;
    .param p5, "bitrate"    # Ljava/lang/Long;
    .param p6, "sampleFrequency"    # Ljava/lang/Long;
    .param p7, "bitsPerSample"    # Ljava/lang/Long;
    .param p8, "nrAudioChannels"    # Ljava/lang/Long;
    .param p9, "colorDepth"    # Ljava/lang/Long;
    .param p10, "protection"    # Ljava/lang/String;
    .param p11, "resolution"    # Ljava/lang/String;
    .param p12, "value"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->importUri:Ljava/net/URI;

    .line 70
    iput-object p2, p0, Lorg/teleal/cling/support/model/Res;->protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    .line 71
    iput-object p3, p0, Lorg/teleal/cling/support/model/Res;->size:Ljava/lang/Long;

    .line 72
    iput-object p4, p0, Lorg/teleal/cling/support/model/Res;->duration:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lorg/teleal/cling/support/model/Res;->bitrate:Ljava/lang/Long;

    .line 74
    iput-object p6, p0, Lorg/teleal/cling/support/model/Res;->sampleFrequency:Ljava/lang/Long;

    .line 75
    iput-object p7, p0, Lorg/teleal/cling/support/model/Res;->bitsPerSample:Ljava/lang/Long;

    .line 76
    iput-object p8, p0, Lorg/teleal/cling/support/model/Res;->nrAudioChannels:Ljava/lang/Long;

    .line 77
    iput-object p9, p0, Lorg/teleal/cling/support/model/Res;->colorDepth:Ljava/lang/Long;

    .line 78
    iput-object p10, p0, Lorg/teleal/cling/support/model/Res;->protection:Ljava/lang/String;

    .line 79
    iput-object p11, p0, Lorg/teleal/cling/support/model/Res;->resolution:Ljava/lang/String;

    .line 80
    iput-object p12, p0, Lorg/teleal/cling/support/model/Res;->value:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .param p1, "protocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfo;
    .param p2, "size"    # Ljava/lang/Long;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    .line 56
    iput-object p2, p0, Lorg/teleal/cling/support/model/Res;->size:Ljava/lang/Long;

    .line 57
    iput-object p3, p0, Lorg/teleal/cling/support/model/Res;->value:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .param p1, "protocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfo;
    .param p2, "size"    # Ljava/lang/Long;
    .param p3, "duration"    # Ljava/lang/String;
    .param p4, "bitrate"    # Ljava/lang/Long;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    .line 62
    iput-object p2, p0, Lorg/teleal/cling/support/model/Res;->size:Ljava/lang/Long;

    .line 63
    iput-object p3, p0, Lorg/teleal/cling/support/model/Res;->duration:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lorg/teleal/cling/support/model/Res;->bitrate:Ljava/lang/Long;

    .line 65
    iput-object p5, p0, Lorg/teleal/cling/support/model/Res;->value:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/teleal/common/util/MimeType;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1
    .param p1, "httpGetMimeType"    # Lorg/teleal/common/util/MimeType;
    .param p2, "size"    # Ljava/lang/Long;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lorg/teleal/cling/support/model/ProtocolInfo;

    invoke-direct {v0, p1}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Lorg/teleal/common/util/MimeType;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/teleal/common/util/MimeType;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 6
    .param p1, "httpGetMimeType"    # Lorg/teleal/common/util/MimeType;
    .param p2, "size"    # Ljava/lang/Long;
    .param p3, "duration"    # Ljava/lang/String;
    .param p4, "bitrate"    # Ljava/lang/Long;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v1, Lorg/teleal/cling/support/model/ProtocolInfo;

    invoke-direct {v1, p1}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Lorg/teleal/common/util/MimeType;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/model/Res;-><init>(Lorg/teleal/cling/support/model/ProtocolInfo;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getBitrate()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/teleal/cling/support/model/Res;->bitrate:Ljava/lang/Long;

    return-object v0
.end method

.method public getBitsPerSample()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/teleal/cling/support/model/Res;->bitsPerSample:Ljava/lang/Long;

    return-object v0
.end method

.method public getColorDepth()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/teleal/cling/support/model/Res;->colorDepth:Ljava/lang/Long;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/teleal/cling/support/model/Res;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getImportUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/teleal/cling/support/model/Res;->importUri:Ljava/net/URI;

    return-object v0
.end method

.method public getNrAudioChannels()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/teleal/cling/support/model/Res;->nrAudioChannels:Ljava/lang/Long;

    return-object v0
.end method

.method public getProtection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/teleal/cling/support/model/Res;->protection:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolInfo()Lorg/teleal/cling/support/model/ProtocolInfo;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/teleal/cling/support/model/Res;->protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/teleal/cling/support/model/Res;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionX()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 176
    :cond_0
    return v0
.end method

.method public getResolutionY()I
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSampleFrequency()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/teleal/cling/support/model/Res;->sampleFrequency:Ljava/lang/Long;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/teleal/cling/support/model/Res;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/teleal/cling/support/model/Res;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setBitrate(Ljava/lang/Long;)V
    .locals 0
    .param p1, "bitrate"    # Ljava/lang/Long;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->bitrate:Ljava/lang/Long;

    .line 121
    return-void
.end method

.method public setBitsPerSample(Ljava/lang/Long;)V
    .locals 0
    .param p1, "bitsPerSample"    # Ljava/lang/Long;

    .prologue
    .line 136
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->bitsPerSample:Ljava/lang/Long;

    .line 137
    return-void
.end method

.method public setColorDepth(Ljava/lang/Long;)V
    .locals 0
    .param p1, "colorDepth"    # Ljava/lang/Long;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->colorDepth:Ljava/lang/Long;

    .line 153
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->duration:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setImportUri(Ljava/net/URI;)V
    .locals 0
    .param p1, "importUri"    # Ljava/net/URI;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->importUri:Ljava/net/URI;

    .line 89
    return-void
.end method

.method public setNrAudioChannels(Ljava/lang/Long;)V
    .locals 0
    .param p1, "nrAudioChannels"    # Ljava/lang/Long;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->nrAudioChannels:Ljava/lang/Long;

    .line 145
    return-void
.end method

.method public setProtection(Ljava/lang/String;)V
    .locals 0
    .param p1, "protection"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->protection:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setProtocolInfo(Lorg/teleal/cling/support/model/ProtocolInfo;)V
    .locals 0
    .param p1, "protocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfo;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->protocolInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    .line 97
    return-void
.end method

.method public setResolution(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/model/Res;->resolution:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->resolution:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setSampleFrequency(Ljava/lang/Long;)V
    .locals 0
    .param p1, "sampleFrequency"    # Ljava/lang/Long;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->sampleFrequency:Ljava/lang/Long;

    .line 129
    return-void
.end method

.method public setSize(Ljava/lang/Long;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/Long;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->size:Ljava/lang/Long;

    .line 105
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lorg/teleal/cling/support/model/Res;->value:Ljava/lang/String;

    .line 193
    return-void
.end method
