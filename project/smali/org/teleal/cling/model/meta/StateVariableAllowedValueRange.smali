.class public Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;
.super Ljava/lang/Object;
.source "StateVariableAllowedValueRange.java"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final maximum:J

.field private final minimum:J

.field private final step:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 9
    .param p1, "minimum"    # J
    .param p3, "maximum"    # J

    .prologue
    .line 43
    const-wide/16 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;-><init>(JJJ)V

    .line 44
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 3
    .param p1, "minimum"    # J
    .param p3, "maximum"    # J
    .param p5, "step"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 48
    sget-object v0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPnP specification violation, allowed value range minimum \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    const-string v2, "\' is greater than maximum \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', switching values."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 50
    iput-wide p3, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->minimum:J

    .line 51
    iput-wide p1, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->maximum:J

    .line 56
    :goto_0
    iput-wide p5, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->step:J

    .line 57
    return-void

    .line 53
    :cond_0
    iput-wide p1, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->minimum:J

    .line 54
    iput-wide p3, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->maximum:J

    goto :goto_0
.end method


# virtual methods
.method public getMaximum()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->maximum:J

    return-wide v0
.end method

.method public getMinimum()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->minimum:J

    return-wide v0
.end method

.method public getStep()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->step:J

    return-wide v0
.end method

.method public isInRange(J)Z
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->getMinimum()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->getMaximum()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->step:J

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Range Min: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->getMinimum()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->getMaximum()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Step: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/StateVariableAllowedValueRange;->getStep()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
