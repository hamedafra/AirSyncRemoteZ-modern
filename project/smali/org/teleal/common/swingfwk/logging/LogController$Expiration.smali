.class public final enum Lorg/teleal/common/swingfwk/logging/LogController$Expiration;
.super Ljava/lang/Enum;
.source "LogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/common/swingfwk/logging/LogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Expiration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/common/swingfwk/logging/LogController$Expiration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

.field public static final enum FIVE_MINUTES:Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

.field public static final enum NEVER:Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

.field public static final enum SIXTY_SECONDS:Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

.field public static final enum TEN_SECONDS:Lorg/teleal/common/swingfwk/logging/LogController$Expiration;


# instance fields
.field private label:Ljava/lang/String;

.field private seconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    new-instance v0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    const-string v1, "TEN_SECONDS"

    const/16 v2, 0xa

    const-string v3, "10 Seconds"

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->TEN_SECONDS:Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    .line 67
    new-instance v0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    const-string v1, "SIXTY_SECONDS"

    const/16 v2, 0x3c

    const-string v3, "60 Seconds"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->SIXTY_SECONDS:Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    .line 68
    new-instance v0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    const-string v1, "FIVE_MINUTES"

    const/16 v2, 0x12c

    const-string v3, "5 Minutes"

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->FIVE_MINUTES:Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    .line 69
    new-instance v0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    const-string v1, "NEVER"

    const v2, 0x7fffffff

    const-string v3, "Never"

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->NEVER:Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    sget-object v1, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->TEN_SECONDS:Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->SIXTY_SECONDS:Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->FIVE_MINUTES:Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->NEVER:Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    aput-object v1, v0, v7

    sput-object v0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->$VALUES:[Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "seconds"    # I
    .param p4, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->seconds:I

    .line 76
    iput-object p4, p0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->label:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/common/swingfwk/logging/LogController$Expiration;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    return-object v0
.end method

.method public static values()[Lorg/teleal/common/swingfwk/logging/LogController$Expiration;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->$VALUES:[Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    invoke-virtual {v0}, [Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->seconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
