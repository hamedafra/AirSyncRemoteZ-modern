.class public Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$VolumeDB;
.super Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;
.source "RenderingControlVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeDB"
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;)V
    .locals 0
    .param p1, "value"    # Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;-><init>(Lorg/teleal/cling/support/renderingcontrol/lastchange/ChannelVolumeDB;)V

    .line 197
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
    .line 200
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/renderingcontrol/lastchange/EventedValueChannelVolumeDB;-><init>([Ljava/util/Map$Entry;)V

    .line 201
    return-void
.end method
