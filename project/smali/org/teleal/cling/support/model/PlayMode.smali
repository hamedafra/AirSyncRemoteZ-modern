.class public final enum Lorg/teleal/cling/support/model/PlayMode;
.super Ljava/lang/Enum;
.source "PlayMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/PlayMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIRECT_1:Lorg/teleal/cling/support/model/PlayMode;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/PlayMode;

.field public static final enum INTRO:Lorg/teleal/cling/support/model/PlayMode;

.field public static final enum NORMAL:Lorg/teleal/cling/support/model/PlayMode;

.field public static final enum RANDOM:Lorg/teleal/cling/support/model/PlayMode;

.field public static final enum REPEAT_ALL:Lorg/teleal/cling/support/model/PlayMode;

.field public static final enum REPEAT_ONE:Lorg/teleal/cling/support/model/PlayMode;

.field public static final enum SHUFFLE:Lorg/teleal/cling/support/model/PlayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lorg/teleal/cling/support/model/PlayMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/PlayMode;->NORMAL:Lorg/teleal/cling/support/model/PlayMode;

    .line 25
    new-instance v0, Lorg/teleal/cling/support/model/PlayMode;

    const-string v1, "SHUFFLE"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/PlayMode;->SHUFFLE:Lorg/teleal/cling/support/model/PlayMode;

    .line 26
    new-instance v0, Lorg/teleal/cling/support/model/PlayMode;

    const-string v1, "REPEAT_ONE"

    invoke-direct {v0, v1, v5}, Lorg/teleal/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/PlayMode;->REPEAT_ONE:Lorg/teleal/cling/support/model/PlayMode;

    .line 27
    new-instance v0, Lorg/teleal/cling/support/model/PlayMode;

    const-string v1, "REPEAT_ALL"

    invoke-direct {v0, v1, v6}, Lorg/teleal/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/PlayMode;->REPEAT_ALL:Lorg/teleal/cling/support/model/PlayMode;

    .line 28
    new-instance v0, Lorg/teleal/cling/support/model/PlayMode;

    const-string v1, "RANDOM"

    invoke-direct {v0, v1, v7}, Lorg/teleal/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/PlayMode;->RANDOM:Lorg/teleal/cling/support/model/PlayMode;

    .line 29
    new-instance v0, Lorg/teleal/cling/support/model/PlayMode;

    const-string v1, "DIRECT_1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/PlayMode;->DIRECT_1:Lorg/teleal/cling/support/model/PlayMode;

    .line 30
    new-instance v0, Lorg/teleal/cling/support/model/PlayMode;

    const-string v1, "INTRO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/PlayMode;->INTRO:Lorg/teleal/cling/support/model/PlayMode;

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/teleal/cling/support/model/PlayMode;

    sget-object v1, Lorg/teleal/cling/support/model/PlayMode;->NORMAL:Lorg/teleal/cling/support/model/PlayMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/support/model/PlayMode;->SHUFFLE:Lorg/teleal/cling/support/model/PlayMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/support/model/PlayMode;->REPEAT_ONE:Lorg/teleal/cling/support/model/PlayMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/support/model/PlayMode;->REPEAT_ALL:Lorg/teleal/cling/support/model/PlayMode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/support/model/PlayMode;->RANDOM:Lorg/teleal/cling/support/model/PlayMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/support/model/PlayMode;->DIRECT_1:Lorg/teleal/cling/support/model/PlayMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/support/model/PlayMode;->INTRO:Lorg/teleal/cling/support/model/PlayMode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/support/model/PlayMode;->ENUM$VALUES:[Lorg/teleal/cling/support/model/PlayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/PlayMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/PlayMode;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/support/model/PlayMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/PlayMode;->ENUM$VALUES:[Lorg/teleal/cling/support/model/PlayMode;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/PlayMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
