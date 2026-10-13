.class public Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$PresetNameList;
.super Lorg/teleal/cling/support/lastchange/EventedValueString;
.source "RenderingControlVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PresetNameList"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueString;-><init>(Ljava/lang/String;)V

    .line 57
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
    .line 60
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/lastchange/EventedValueString;-><init>([Ljava/util/Map$Entry;)V

    .line 61
    return-void
.end method
