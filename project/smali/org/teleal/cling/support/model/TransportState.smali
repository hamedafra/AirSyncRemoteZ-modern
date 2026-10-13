.class public final enum Lorg/teleal/cling/support/model/TransportState;
.super Ljava/lang/Enum;
.source "TransportState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/TransportState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOM:Lorg/teleal/cling/support/model/TransportState;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/TransportState;

.field public static final enum NO_MEDIA_PRESENT:Lorg/teleal/cling/support/model/TransportState;

.field public static final enum PAUSED_PLAYBACK:Lorg/teleal/cling/support/model/TransportState;

.field public static final enum PAUSED_RECORDING:Lorg/teleal/cling/support/model/TransportState;

.field public static final enum PLAYING:Lorg/teleal/cling/support/model/TransportState;

.field public static final enum RECORDING:Lorg/teleal/cling/support/model/TransportState;

.field public static final enum STOPPED:Lorg/teleal/cling/support/model/TransportState;

.field public static final enum TRANSITIONING:Lorg/teleal/cling/support/model/TransportState;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lorg/teleal/cling/support/model/TransportState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportState;->STOPPED:Lorg/teleal/cling/support/model/TransportState;

    .line 26
    new-instance v0, Lorg/teleal/cling/support/model/TransportState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportState;->PLAYING:Lorg/teleal/cling/support/model/TransportState;

    .line 27
    new-instance v0, Lorg/teleal/cling/support/model/TransportState;

    const-string v1, "TRANSITIONING"

    invoke-direct {v0, v1, v5}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportState;->TRANSITIONING:Lorg/teleal/cling/support/model/TransportState;

    .line 28
    new-instance v0, Lorg/teleal/cling/support/model/TransportState;

    const-string v1, "PAUSED_PLAYBACK"

    invoke-direct {v0, v1, v6}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportState;->PAUSED_PLAYBACK:Lorg/teleal/cling/support/model/TransportState;

    .line 29
    new-instance v0, Lorg/teleal/cling/support/model/TransportState;

    const-string v1, "PAUSED_RECORDING"

    invoke-direct {v0, v1, v7}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportState;->PAUSED_RECORDING:Lorg/teleal/cling/support/model/TransportState;

    .line 30
    new-instance v0, Lorg/teleal/cling/support/model/TransportState;

    const-string v1, "RECORDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportState;->RECORDING:Lorg/teleal/cling/support/model/TransportState;

    .line 31
    new-instance v0, Lorg/teleal/cling/support/model/TransportState;

    const-string v1, "NO_MEDIA_PRESENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/teleal/cling/support/model/TransportState;

    .line 32
    new-instance v0, Lorg/teleal/cling/support/model/TransportState;

    const-string v1, "CUSTOM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportState;->CUSTOM:Lorg/teleal/cling/support/model/TransportState;

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/teleal/cling/support/model/TransportState;

    sget-object v1, Lorg/teleal/cling/support/model/TransportState;->STOPPED:Lorg/teleal/cling/support/model/TransportState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/support/model/TransportState;->PLAYING:Lorg/teleal/cling/support/model/TransportState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/support/model/TransportState;->TRANSITIONING:Lorg/teleal/cling/support/model/TransportState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/support/model/TransportState;->PAUSED_PLAYBACK:Lorg/teleal/cling/support/model/TransportState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/support/model/TransportState;->PAUSED_RECORDING:Lorg/teleal/cling/support/model/TransportState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/support/model/TransportState;->RECORDING:Lorg/teleal/cling/support/model/TransportState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/support/model/TransportState;->NO_MEDIA_PRESENT:Lorg/teleal/cling/support/model/TransportState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/teleal/cling/support/model/TransportState;->CUSTOM:Lorg/teleal/cling/support/model/TransportState;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/support/model/TransportState;->ENUM$VALUES:[Lorg/teleal/cling/support/model/TransportState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/TransportState;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportState;->value:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/TransportState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/TransportState;

    return-object v0
.end method

.method public static valueOrCustomOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportState;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 51
    :try_start_0
    invoke-static {p0}, Lorg/teleal/cling/support/model/TransportState;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    :goto_0
    return-object v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lorg/teleal/cling/support/model/TransportState;->CUSTOM:Lorg/teleal/cling/support/model/TransportState;

    invoke-virtual {v1, p0}, Lorg/teleal/cling/support/model/TransportState;->setValue(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportState;

    move-result-object v1

    goto :goto_0
.end method

.method public static values()[Lorg/teleal/cling/support/model/TransportState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/TransportState;->ENUM$VALUES:[Lorg/teleal/cling/support/model/TransportState;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/TransportState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/teleal/cling/support/model/TransportState;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportState;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/teleal/cling/support/model/TransportState;->value:Ljava/lang/String;

    .line 46
    return-object p0
.end method
