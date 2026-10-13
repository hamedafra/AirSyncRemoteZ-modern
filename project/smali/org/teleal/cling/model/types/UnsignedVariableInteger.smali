.class public abstract Lorg/teleal/cling/model/types/UnsignedVariableInteger;
.super Ljava/lang/Object;
.source "UnsignedVariableInteger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->setValue(J)Lorg/teleal/cling/model/types/UnsignedVariableInteger;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid negative integer value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', assuming value 0!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 62
    const-string p1, "0"

    .line 64
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->setValue(J)Lorg/teleal/cling/model/types/UnsignedVariableInteger;

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    if-ne p0, p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 103
    check-cast v0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;

    .line 105
    .local v0, "that":Lorg/teleal/cling/model/types/UnsignedVariableInteger;
    iget-wide v4, p0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->value:J

    iget-wide v6, v0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->value:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public abstract getBits()Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->value:J

    iget-wide v2, p0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public increment(Z)Lorg/teleal/cling/model/types/UnsignedVariableInteger;
    .locals 6
    .param p1, "rolloverToOne"    # Z

    .prologue
    const-wide/16 v4, 0x1

    .line 90
    iget-wide v0, p0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->value:J

    add-long/2addr v0, v4

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->getBits()Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;->getMaxValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 91
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v0, v0

    iput-wide v0, p0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->value:J

    .line 95
    :goto_1
    return-object p0

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_1
    iget-wide v0, p0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->value:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->value:J

    goto :goto_1
.end method

.method public isInRange(J)V
    .locals 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->getMinValue()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->getBits()Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;->getMaxValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value must be between "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->getMinValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->getBits()Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;->getMaxValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    return-void
.end method

.method protected setValue(J)Lorg/teleal/cling/model/types/UnsignedVariableInteger;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->isInRange(J)V

    .line 69
    iput-wide p1, p0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->value:J

    .line 70
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/teleal/cling/model/types/UnsignedVariableInteger;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
