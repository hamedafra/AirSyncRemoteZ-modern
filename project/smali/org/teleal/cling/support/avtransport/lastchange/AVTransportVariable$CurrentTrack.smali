.class public Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$CurrentTrack;
.super Lorg/teleal/cling/support/lastchange/EventedValueUnsignedIntegerFourBytes;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentTrack"
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V
    .locals 0
    .param p1, "value"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueUnsignedIntegerFourBytes;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V

    .line 230
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
    .line 233
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueUnsignedIntegerFourBytes;-><init>([Ljava/util/Map$Entry;)V

    .line 234
    return-void
.end method
