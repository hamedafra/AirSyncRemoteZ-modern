.class public final enum Lorg/teleal/cling/support/model/TransportStatus;
.super Ljava/lang/Enum;
.source "TransportStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/TransportStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CUSTOM:Lorg/teleal/cling/support/model/TransportStatus;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/TransportStatus;

.field public static final enum ERROR_OCCURED:Lorg/teleal/cling/support/model/TransportStatus;

.field public static final enum OK:Lorg/teleal/cling/support/model/TransportStatus;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/teleal/cling/support/model/TransportStatus;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/TransportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportStatus;->OK:Lorg/teleal/cling/support/model/TransportStatus;

    .line 26
    new-instance v0, Lorg/teleal/cling/support/model/TransportStatus;

    const-string v1, "ERROR_OCCURED"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/support/model/TransportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportStatus;->ERROR_OCCURED:Lorg/teleal/cling/support/model/TransportStatus;

    .line 27
    new-instance v0, Lorg/teleal/cling/support/model/TransportStatus;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/support/model/TransportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/TransportStatus;->CUSTOM:Lorg/teleal/cling/support/model/TransportStatus;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/teleal/cling/support/model/TransportStatus;

    sget-object v1, Lorg/teleal/cling/support/model/TransportStatus;->OK:Lorg/teleal/cling/support/model/TransportStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/teleal/cling/support/model/TransportStatus;->ERROR_OCCURED:Lorg/teleal/cling/support/model/TransportStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/support/model/TransportStatus;->CUSTOM:Lorg/teleal/cling/support/model/TransportStatus;

    aput-object v1, v0, v4

    sput-object v0, Lorg/teleal/cling/support/model/TransportStatus;->ENUM$VALUES:[Lorg/teleal/cling/support/model/TransportStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/TransportStatus;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/model/TransportStatus;->value:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/TransportStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/TransportStatus;

    return-object v0
.end method

.method public static valueOrCustomOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportStatus;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 46
    :try_start_0
    invoke-static {p0}, Lorg/teleal/cling/support/model/TransportStatus;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportStatus;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lorg/teleal/cling/support/model/TransportStatus;->CUSTOM:Lorg/teleal/cling/support/model/TransportStatus;

    invoke-virtual {v1, p0}, Lorg/teleal/cling/support/model/TransportStatus;->setValue(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportStatus;

    move-result-object v1

    goto :goto_0
.end method

.method public static values()[Lorg/teleal/cling/support/model/TransportStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/TransportStatus;->ENUM$VALUES:[Lorg/teleal/cling/support/model/TransportStatus;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/TransportStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/teleal/cling/support/model/TransportStatus;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Lorg/teleal/cling/support/model/TransportStatus;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/teleal/cling/support/model/TransportStatus;->value:Ljava/lang/String;

    .line 41
    return-object p0
.end method
