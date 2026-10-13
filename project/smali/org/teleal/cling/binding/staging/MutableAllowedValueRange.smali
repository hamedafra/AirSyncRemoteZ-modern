.class public Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;
.super Ljava/lang/Object;
.source "MutableAllowedValueRange.java"


# instance fields
.field public maximum:Ljava/lang/Long;

.field public minimum:Ljava/lang/Long;

.field public step:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->minimum:Ljava/lang/Long;

    .line 28
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->maximum:Ljava/lang/Long;

    .line 29
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;->step:Ljava/lang/Long;

    .line 23
    return-void
.end method
