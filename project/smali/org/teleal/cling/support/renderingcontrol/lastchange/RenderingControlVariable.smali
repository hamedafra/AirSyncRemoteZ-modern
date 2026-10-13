.class public Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable;
.super Ljava/lang/Object;
.source "RenderingControlVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$BlueVideoBlackLevel;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$BlueVideoGain;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Brightness;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$ColorTemperature;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Contrast;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$GreenVideoBlackLevel;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$GreenVideoGain;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$HorizontalKeystone;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Mute;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$PresetNameList;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$RedVideoBlackLevel;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$RedVideoGain;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Sharpness;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$VerticalKeystone;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$Volume;,
        Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$VolumeDB;
    }
.end annotation


# static fields
.field public static ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/support/lastchange/EventedValue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$1;

    invoke-direct {v0}, Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable$1;-><init>()V

    sput-object v0, Lorg/teleal/cling/support/renderingcontrol/lastchange/RenderingControlVariable;->ALL:Ljava/util/Set;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
