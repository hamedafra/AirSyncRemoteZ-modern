.class public Lorg/teleal/cling/model/types/csv/CSVUnsignedIntegerFourBytes;
.super Lorg/teleal/cling/model/types/csv/CSV;
.source "CSVUnsignedIntegerFourBytes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/types/csv/CSV",
        "<",
        "Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/teleal/cling/model/types/csv/CSV;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/types/InvalidValueException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/types/csv/CSV;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
