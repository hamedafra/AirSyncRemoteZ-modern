.class public Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$PossiblePlaybackStorageMedia;
.super Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordStorageMedia;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PossiblePlaybackStorageMedia"
.end annotation


# direct methods
.method public constructor <init>([Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "attributes"    # [Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordStorageMedia;-><init>([Ljava/util/Map$Entry;)V

    .line 140
    return-void
.end method

.method public constructor <init>([Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 0
    .param p1, "e"    # [Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$PossibleRecordStorageMedia;-><init>([Lorg/teleal/cling/support/model/StorageMedium;)V

    .line 136
    return-void
.end method
