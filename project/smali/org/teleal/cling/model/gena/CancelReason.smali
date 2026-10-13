.class public final enum Lorg/teleal/cling/model/gena/CancelReason;
.super Ljava/lang/Enum;
.source "CancelReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/model/gena/CancelReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEVICE_WAS_REMOVED:Lorg/teleal/cling/model/gena/CancelReason;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/model/gena/CancelReason;

.field public static final enum EXPIRED:Lorg/teleal/cling/model/gena/CancelReason;

.field public static final enum RENEWAL_FAILED:Lorg/teleal/cling/model/gena/CancelReason;

.field public static final enum UNSUBSCRIBE_FAILED:Lorg/teleal/cling/model/gena/CancelReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/teleal/cling/model/gena/CancelReason;

    const-string v1, "RENEWAL_FAILED"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/gena/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/model/gena/CancelReason;->RENEWAL_FAILED:Lorg/teleal/cling/model/gena/CancelReason;

    .line 28
    new-instance v0, Lorg/teleal/cling/model/gena/CancelReason;

    const-string v1, "DEVICE_WAS_REMOVED"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/model/gena/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/model/gena/CancelReason;->DEVICE_WAS_REMOVED:Lorg/teleal/cling/model/gena/CancelReason;

    .line 29
    new-instance v0, Lorg/teleal/cling/model/gena/CancelReason;

    const-string v1, "UNSUBSCRIBE_FAILED"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/model/gena/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/model/gena/CancelReason;->UNSUBSCRIBE_FAILED:Lorg/teleal/cling/model/gena/CancelReason;

    .line 30
    new-instance v0, Lorg/teleal/cling/model/gena/CancelReason;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v5}, Lorg/teleal/cling/model/gena/CancelReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/model/gena/CancelReason;->EXPIRED:Lorg/teleal/cling/model/gena/CancelReason;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/teleal/cling/model/gena/CancelReason;

    sget-object v1, Lorg/teleal/cling/model/gena/CancelReason;->RENEWAL_FAILED:Lorg/teleal/cling/model/gena/CancelReason;

    aput-object v1, v0, v2

    sget-object v1, Lorg/teleal/cling/model/gena/CancelReason;->DEVICE_WAS_REMOVED:Lorg/teleal/cling/model/gena/CancelReason;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/model/gena/CancelReason;->UNSUBSCRIBE_FAILED:Lorg/teleal/cling/model/gena/CancelReason;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/model/gena/CancelReason;->EXPIRED:Lorg/teleal/cling/model/gena/CancelReason;

    aput-object v1, v0, v5

    sput-object v0, Lorg/teleal/cling/model/gena/CancelReason;->ENUM$VALUES:[Lorg/teleal/cling/model/gena/CancelReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/gena/CancelReason;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/model/gena/CancelReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/gena/CancelReason;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/model/gena/CancelReason;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/model/gena/CancelReason;->ENUM$VALUES:[Lorg/teleal/cling/model/gena/CancelReason;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/model/gena/CancelReason;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
