.class public final Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
.super Lorg/teleal/cling/model/types/UnsignedVariableInteger;
.source "UnsignedIntegerFourBytes.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/model/types/UnsignedVariableInteger;-><init>(J)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/types/UnsignedVariableInteger;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getBits()Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;->THIRTYTWO:Lorg/teleal/cling/model/types/UnsignedVariableInteger$Bits;

    return-object v0
.end method
