.class public Lorg/teleal/cling/model/types/csv/CSVDate;
.super Lorg/teleal/cling/model/types/csv/CSV;
.source "CSVDate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/types/csv/CSV",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/teleal/cling/model/types/csv/CSV;-><init>()V

    .line 30
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
    .line 33
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/types/csv/CSV;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
