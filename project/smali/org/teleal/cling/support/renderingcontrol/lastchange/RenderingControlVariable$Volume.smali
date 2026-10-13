.class public Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Volume;
.super Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelVolume;
.source "RenderingControlVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Volume"
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolume;)V
    .locals 0
    .param p1, "value"    # Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolume;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelVolume;-><init>(Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolume;)V

    .line 207
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
    .line 210
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelVolume;-><init>([Ljava/util/Map$Entry;)V

    .line 211
    return-void
.end method
