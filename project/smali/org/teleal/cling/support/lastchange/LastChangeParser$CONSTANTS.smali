.class public final enum Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;
.super Ljava/lang/Enum;
.source "LastChangeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/lastchange/LastChangeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONSTANTS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

.field public static final enum Event:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

.field public static final enum InstanceID:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

.field public static final enum val:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    const-string v1, "Event"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->Event:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    .line 59
    new-instance v0, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    const-string v1, "InstanceID"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->InstanceID:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    .line 60
    new-instance v0, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    const-string v1, "val"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->val:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    sget-object v1, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->Event:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    aput-object v1, v0, v2

    sget-object v1, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->InstanceID:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->val:Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    aput-object v1, v0, v4

    sput-object v0, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->ENUM$VALUES:[Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->ENUM$VALUES:[Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/LastChangeParser$CONSTANTS;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
