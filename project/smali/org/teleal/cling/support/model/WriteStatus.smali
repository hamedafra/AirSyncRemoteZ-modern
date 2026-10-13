.class public final enum Lorg/teleal/cling/support/model/WriteStatus;
.super Ljava/lang/Enum;
.source "WriteStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/WriteStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/WriteStatus;

.field public static final enum MIXED:Lorg/teleal/cling/support/model/WriteStatus;

.field public static final enum NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

.field public static final enum UNKNOWN:Lorg/teleal/cling/support/model/WriteStatus;

.field public static final enum WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/teleal/cling/support/model/WriteStatus;

    const-string v1, "WRITABLE"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/WriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/WriteStatus;->WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    .line 26
    new-instance v0, Lorg/teleal/cling/support/model/WriteStatus;

    const-string v1, "NOT_WRITABLE"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/support/model/WriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    .line 27
    new-instance v0, Lorg/teleal/cling/support/model/WriteStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/support/model/WriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/WriteStatus;->UNKNOWN:Lorg/teleal/cling/support/model/WriteStatus;

    .line 28
    new-instance v0, Lorg/teleal/cling/support/model/WriteStatus;

    const-string v1, "MIXED"

    invoke-direct {v0, v1, v5}, Lorg/teleal/cling/support/model/WriteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/WriteStatus;->MIXED:Lorg/teleal/cling/support/model/WriteStatus;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/teleal/cling/support/model/WriteStatus;

    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->NOT_WRITABLE:Lorg/teleal/cling/support/model/WriteStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->UNKNOWN:Lorg/teleal/cling/support/model/WriteStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/support/model/WriteStatus;->MIXED:Lorg/teleal/cling/support/model/WriteStatus;

    aput-object v1, v0, v5

    sput-object v0, Lorg/teleal/cling/support/model/WriteStatus;->ENUM$VALUES:[Lorg/teleal/cling/support/model/WriteStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/WriteStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/WriteStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/WriteStatus;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/support/model/WriteStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/WriteStatus;->ENUM$VALUES:[Lorg/teleal/cling/support/model/WriteStatus;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/WriteStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
