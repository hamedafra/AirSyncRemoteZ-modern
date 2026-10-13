.class public final enum Lorg/teleal/cling/support/model/RecordMediumWriteStatus;
.super Ljava/lang/Enum;
.source "RecordMediumWriteStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/RecordMediumWriteStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

.field public static final enum NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

.field public static final enum NOT_WRITABLE:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

.field public static final enum PROTECTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

.field public static final enum UNKNOWN:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

.field public static final enum WRITABLE:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    const-string v1, "WRITABLE"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->WRITABLE:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 26
    new-instance v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    const-string v1, "PROTECTED"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->PROTECTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 27
    new-instance v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    const-string v1, "NOT_WRITABLE"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 28
    new-instance v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->UNKNOWN:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 29
    new-instance v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    const-string v1, "NOT_IMPLEMENTED"

    invoke-direct {v0, v1, v6}, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    sget-object v1, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->WRITABLE:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->PROTECTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->UNKNOWN:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    aput-object v1, v0, v6

    sput-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->ENUM$VALUES:[Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/RecordMediumWriteStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    return-object v0
.end method

.method public static valueOrUnknownOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/RecordMediumWriteStatus;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 33
    :try_start_0
    invoke-static {p0}, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/RecordMediumWriteStatus;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 35
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->UNKNOWN:Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    goto :goto_0
.end method

.method public static values()[Lorg/teleal/cling/support/model/RecordMediumWriteStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/RecordMediumWriteStatus;->ENUM$VALUES:[Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/RecordMediumWriteStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
