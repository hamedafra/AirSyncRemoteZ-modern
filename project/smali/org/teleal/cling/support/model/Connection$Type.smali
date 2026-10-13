.class public final enum Lorg/teleal/cling/support/model/Connection$Type;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/Connection$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/Connection$Type;

.field public static final enum IP_Bridged:Lorg/teleal/cling/support/model/Connection$Type;

.field public static final enum IP_Routed:Lorg/teleal/cling/support/model/Connection$Type;

.field public static final enum Unconfigured:Lorg/teleal/cling/support/model/Connection$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Type;

    const-string v1, "Unconfigured"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/Connection$Type;-><init>(Ljava/lang/String;I)V

    .line 91
    sput-object v0, Lorg/teleal/cling/support/model/Connection$Type;->Unconfigured:Lorg/teleal/cling/support/model/Connection$Type;

    .line 93
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Type;

    const-string v1, "IP_Routed"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/support/model/Connection$Type;-><init>(Ljava/lang/String;I)V

    .line 96
    sput-object v0, Lorg/teleal/cling/support/model/Connection$Type;->IP_Routed:Lorg/teleal/cling/support/model/Connection$Type;

    .line 98
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Type;

    const-string v1, "IP_Bridged"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/support/model/Connection$Type;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v0, Lorg/teleal/cling/support/model/Connection$Type;->IP_Bridged:Lorg/teleal/cling/support/model/Connection$Type;

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/teleal/cling/support/model/Connection$Type;

    sget-object v1, Lorg/teleal/cling/support/model/Connection$Type;->Unconfigured:Lorg/teleal/cling/support/model/Connection$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/teleal/cling/support/model/Connection$Type;->IP_Routed:Lorg/teleal/cling/support/model/Connection$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/support/model/Connection$Type;->IP_Bridged:Lorg/teleal/cling/support/model/Connection$Type;

    aput-object v1, v0, v4

    sput-object v0, Lorg/teleal/cling/support/model/Connection$Type;->ENUM$VALUES:[Lorg/teleal/cling/support/model/Connection$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/Connection$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/Connection$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Connection$Type;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/support/model/Connection$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/Connection$Type;->ENUM$VALUES:[Lorg/teleal/cling/support/model/Connection$Type;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/Connection$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
