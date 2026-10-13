.class public final enum Lorg/teleal/cling/support/model/PortMapping$Protocol;
.super Ljava/lang/Enum;
.source "PortMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/PortMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Protocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/PortMapping$Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/PortMapping$Protocol;

.field public static final enum TCP:Lorg/teleal/cling/support/model/PortMapping$Protocol;

.field public static final enum UDP:Lorg/teleal/cling/support/model/PortMapping$Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lorg/teleal/cling/support/model/PortMapping$Protocol;

    const-string v1, "UDP"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/PortMapping$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/PortMapping$Protocol;->UDP:Lorg/teleal/cling/support/model/PortMapping$Protocol;

    .line 34
    new-instance v0, Lorg/teleal/cling/support/model/PortMapping$Protocol;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/support/model/PortMapping$Protocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/PortMapping$Protocol;->TCP:Lorg/teleal/cling/support/model/PortMapping$Protocol;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/teleal/cling/support/model/PortMapping$Protocol;

    sget-object v1, Lorg/teleal/cling/support/model/PortMapping$Protocol;->UDP:Lorg/teleal/cling/support/model/PortMapping$Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lorg/teleal/cling/support/model/PortMapping$Protocol;->TCP:Lorg/teleal/cling/support/model/PortMapping$Protocol;

    aput-object v1, v0, v3

    sput-object v0, Lorg/teleal/cling/support/model/PortMapping$Protocol;->ENUM$VALUES:[Lorg/teleal/cling/support/model/PortMapping$Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/PortMapping$Protocol;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/PortMapping$Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/PortMapping$Protocol;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/support/model/PortMapping$Protocol;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/PortMapping$Protocol;->ENUM$VALUES:[Lorg/teleal/cling/support/model/PortMapping$Protocol;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/PortMapping$Protocol;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
