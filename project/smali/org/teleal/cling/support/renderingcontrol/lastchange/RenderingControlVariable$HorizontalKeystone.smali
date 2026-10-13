.class public Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$HorizontalKeystone;
.super Lorg/teleal/cling/support/lastchange/EventedValueShort;
.source "RenderingControlVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HorizontalKeystone"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Short;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Short;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueShort;-><init>(Ljava/lang/Short;)V

    .line 167
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
    .line 170
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueShort;-><init>([Ljava/util/Map$Entry;)V

    .line 171
    return-void
.end method
