.class public Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Mute;
.super Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelMute;
.source "RenderingControlVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mute"
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;)V
    .locals 0
    .param p1, "value"    # Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelMute;-><init>(Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelMute;)V

    .line 187
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
    .line 190
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelMute;-><init>([Ljava/util/Map$Entry;)V

    .line 191
    return-void
.end method
