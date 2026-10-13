.class public Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable;
.super Ljava/lang/Object;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$AVTransportURI;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$AVTransportURIMetaData;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$CurrentMediaDuration;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$CurrentPlayMode;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$CurrentRecordQualityMode;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrack;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackDuration;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackMetaData;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackURI;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTransportActions;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$NextAVTransportURI;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$NextAVTransportURIMetaData;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$NumberOfTracks;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$PossiblePlaybackStorageMedia;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordQualityModes;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordStorageMedia;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$RecordMediumWriteStatus;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$RecordStorageMedium;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$TransportPlaySpeed;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$TransportState;,
        Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$TransportStatus;
    }
.end annotation


# static fields
.field public static ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/lastchange/EventedValue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$1;

    invoke-direct {v0}, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$1;-><init>()V

    sput-object v0, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable;->ALL:Ljava/util/Set;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
