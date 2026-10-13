.class public Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Contrast;
.super Lorg/teleal/cling/support/lastchange/EventedValueUnsignedIntegerTwoBytes;
.source "RenderingControlVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contrast"
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;)V
    .locals 0
    .param p1, "value"    # Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueUnsignedIntegerTwoBytes;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;)V

    .line 77
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
    .line 80
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueUnsignedIntegerTwoBytes;-><init>([Ljava/util/Map$Entry;)V

    .line 81
    return-void
.end method
