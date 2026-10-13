.class public final enum Lorg/teleal/cling/support/model/ConnectionInfo$Direction;
.super Ljava/lang/Enum;
.source "ConnectionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/ConnectionInfo$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

.field public static final enum Input:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

.field public static final enum Output:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    const-string v1, "Output"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->Output:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    .line 40
    new-instance v0, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    const-string v1, "Input"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->Input:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    sget-object v1, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->Output:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->Input:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->ENUM$VALUES:[Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/ConnectionInfo$Direction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/support/model/ConnectionInfo$Direction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->ENUM$VALUES:[Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getOpposite()Lorg/teleal/cling/support/model/ConnectionInfo$Direction;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->Output:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->Input:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->Output:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    goto :goto_0
.end method
