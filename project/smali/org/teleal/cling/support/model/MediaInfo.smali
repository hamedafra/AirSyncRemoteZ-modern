.class public Lorg/teleal/cling/support/model/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# instance fields
.field private currentURI:Ljava/lang/String;

.field private currentURIMetaData:Ljava/lang/String;

.field private mediaDuration:Ljava/lang/String;

.field private nextURI:Ljava/lang/String;

.field private nextURIMetaData:Ljava/lang/String;

.field private numberOfTracks:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

.field private playMedium:Lorg/teleal/cling/support/model/StorageMedium;

.field private recordMedium:Lorg/teleal/cling/support/model/StorageMedium;

.field private writeStatus:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 32
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 33
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 35
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->numberOfTracks:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 36
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 37
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->playMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 38
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->recordMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 39
    sget-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->writeStatus:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "currentURI"    # Ljava/lang/String;
    .param p2, "currentURIMetaData"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 32
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 33
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 35
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->numberOfTracks:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 36
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 37
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->playMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 38
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->recordMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 39
    sget-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->writeStatus:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 60
    iput-object p1, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 4
    .param p1, "currentURI"    # Ljava/lang/String;
    .param p2, "currentURIMetaData"    # Ljava/lang/String;
    .param p3, "nextURI"    # Ljava/lang/String;
    .param p4, "nextURIMetaData"    # Ljava/lang/String;
    .param p5, "numberOfTracks"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p6, "mediaDuration"    # Ljava/lang/String;
    .param p7, "playMedium"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 32
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 33
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 35
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->numberOfTracks:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 36
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 37
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->playMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 38
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->recordMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 39
    sget-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->writeStatus:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 91
    iput-object p1, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lorg/teleal/cling/support/model/MediaInfo;->numberOfTracks:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 96
    iput-object p6, p0, Lorg/teleal/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 97
    iput-object p7, p0, Lorg/teleal/cling/support/model/MediaInfo;->playMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/StorageMedium;Lorg/teleal/cling/support/model/StorageMedium;Lorg/teleal/cling/support/model/RecordMediumWriteStatus;)V
    .locals 4
    .param p1, "currentURI"    # Ljava/lang/String;
    .param p2, "currentURIMetaData"    # Ljava/lang/String;
    .param p3, "nextURI"    # Ljava/lang/String;
    .param p4, "nextURIMetaData"    # Ljava/lang/String;
    .param p5, "numberOfTracks"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p6, "mediaDuration"    # Ljava/lang/String;
    .param p7, "playMedium"    # Lorg/teleal/cling/support/model/StorageMedium;
    .param p8, "recordMedium"    # Lorg/teleal/cling/support/model/StorageMedium;
    .param p9, "writeStatus"    # Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 32
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 33
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 35
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->numberOfTracks:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 36
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 37
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->playMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 38
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->recordMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 39
    sget-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->writeStatus:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 105
    iput-object p1, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lorg/teleal/cling/support/model/MediaInfo;->numberOfTracks:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 110
    iput-object p6, p0, Lorg/teleal/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 111
    iput-object p7, p0, Lorg/teleal/cling/support/model/MediaInfo;->playMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 112
    iput-object p8, p0, Lorg/teleal/cling/support/model/MediaInfo;->recordMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 113
    iput-object p9, p0, Lorg/teleal/cling/support/model/MediaInfo;->writeStatus:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 4
    .param p1, "currentURI"    # Ljava/lang/String;
    .param p2, "currentURIMetaData"    # Ljava/lang/String;
    .param p3, "numberOfTracks"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p4, "mediaDuration"    # Ljava/lang/String;
    .param p5, "playMedium"    # Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 32
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 33
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 35
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->numberOfTracks:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 36
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 37
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->playMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 38
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->recordMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 39
    sget-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->writeStatus:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 67
    iput-object p1, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/teleal/cling/support/model/MediaInfo;->numberOfTracks:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 70
    iput-object p4, p0, Lorg/teleal/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lorg/teleal/cling/support/model/MediaInfo;->playMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/StorageMedium;Lorg/teleal/cling/support/model/StorageMedium;Lorg/teleal/cling/support/model/RecordMediumWriteStatus;)V
    .locals 4
    .param p1, "currentURI"    # Ljava/lang/String;
    .param p2, "currentURIMetaData"    # Ljava/lang/String;
    .param p3, "numberOfTracks"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p4, "mediaDuration"    # Ljava/lang/String;
    .param p5, "playMedium"    # Lorg/teleal/cling/support/model/StorageMedium;
    .param p6, "recordMedium"    # Lorg/teleal/cling/support/model/StorageMedium;
    .param p7, "writeStatus"    # Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 32
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    .line 33
    const-string v0, "NOT_IMPLEMENTED"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    .line 35
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->numberOfTracks:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 36
    const-string v0, "00:00:00"

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 37
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->playMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 38
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->recordMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 39
    sget-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    iput-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->writeStatus:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 78
    iput-object p1, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lorg/teleal/cling/support/model/MediaInfo;->numberOfTracks:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 81
    iput-object p4, p0, Lorg/teleal/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lorg/teleal/cling/support/model/MediaInfo;->playMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 83
    iput-object p6, p0, Lorg/teleal/cling/support/model/MediaInfo;->recordMedium:Lorg/teleal/cling/support/model/StorageMedium;

    .line 84
    iput-object p7, p0, Lorg/teleal/cling/support/model/MediaInfo;->writeStatus:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/action/ActionArgumentValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .line 46
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/teleal/cling/model/action/ActionArgumentValue;>;"
    const-string v0, "CurrentURI"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    const-string v0, "CurrentURIMetaData"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    const-string v0, "NextURI"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49
    const-string v0, "NextURIMetaData"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 51
    const-string v0, "NrTracks"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .line 52
    const-string v0, "MediaDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 53
    const-string v0, "PlayMedium"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/teleal/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v7

    .line 54
    const-string v0, "RecordMedium"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/teleal/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v8

    .line 55
    const-string v0, "WriteStatus"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->valueOrUnknownOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    move-result-object v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/support/model/MediaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/String;Lorg/teleal/cling/support/model/StorageMedium;Lorg/teleal/cling/support/model/StorageMedium;Lorg/teleal/cling/support/model/RecordMediumWriteStatus;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getCurrentURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURI:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentURIMetaData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->currentURIMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getNextURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURI:Ljava/lang/String;

    return-object v0
.end method

.method public getNextURIMetaData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->nextURIMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfTracks()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->numberOfTracks:Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    return-object v0
.end method

.method public getPlayMedium()Lorg/teleal/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->playMedium:Lorg/teleal/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getRecordMedium()Lorg/teleal/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->recordMedium:Lorg/teleal/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getWriteStatus()Lorg/teleal/cling/support/model/RecordMediumWriteStatus;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/teleal/cling/support/model/MediaInfo;->writeStatus:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    return-object v0
.end method

.method public setMediaInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lorg/teleal/cling/support/model/MediaInfo;->mediaDuration:Ljava/lang/String;

    .line 154
    return-void
.end method
