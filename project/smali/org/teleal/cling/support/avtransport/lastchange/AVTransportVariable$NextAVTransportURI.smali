.class public Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable$NextAVTransportURI;
.super Lorg/teleal/cling/support/lastchange/EventedValueURI;
.source "AVTransportVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/avtransport/lastchange/AVTransportVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NextAVTransportURI"
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "value"    # Ljava/net/URI;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueURI;-><init>(Ljava/net/URI;)V

    .line 290
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
    .line 293
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueURI;-><init>([Ljava/util/Map$Entry;)V

    .line 294
    return-void
.end method
