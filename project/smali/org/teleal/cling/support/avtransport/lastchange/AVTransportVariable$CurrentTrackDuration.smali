.class public Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrackDuration;
.super Lorg/teleal/cling/support/lastchange/EventedValueString;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentTrackDuration"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueString;-><init>(Ljava/lang/String;)V

    .line 240
    return-void
.end method

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
    .line 243
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueString;-><init>([Ljava/util/Map$Entry;)V

    .line 244
    return-void
.end method
