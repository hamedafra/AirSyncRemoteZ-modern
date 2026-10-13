.class public Lorg/teleal/cling/support/model/VolumeDBRange;
.super Ljava/lang/Object;
.source "VolumeDBRange.java"


# instance fields
.field private maxValue:Ljava/lang/Integer;

.field private minValue:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "minValue"    # Ljava/lang/Integer;
    .param p2, "maxValue"    # Ljava/lang/Integer;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/teleal/cling/support/model/VolumeDBRange;->minValue:Ljava/lang/Integer;

    .line 30
    iput-object p2, p0, Lorg/teleal/cling/support/model/VolumeDBRange;->maxValue:Ljava/lang/Integer;

    .line 31
    return-void
.end method


# virtual methods
.method public getMaxValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/teleal/cling/support/model/VolumeDBRange;->maxValue:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/teleal/cling/support/model/VolumeDBRange;->minValue:Ljava/lang/Integer;

    return-object v0
.end method
