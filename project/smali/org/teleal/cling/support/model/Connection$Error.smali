.class public final enum Lorg/teleal/cling/support/model/Connection$Error;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/Connection$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/Connection$Error;

.field public static final enum ERROR_COMMAND_ABORTED:Lorg/teleal/cling/support/model/Connection$Error;

.field public static final enum ERROR_FORCED_DISCONNECT:Lorg/teleal/cling/support/model/Connection$Error;

.field public static final enum ERROR_IDLE_DISCONNECT:Lorg/teleal/cling/support/model/Connection$Error;

.field public static final enum ERROR_IP_CONFIGURATION:Lorg/teleal/cling/support/model/Connection$Error;

.field public static final enum ERROR_ISP_DISCONNECT:Lorg/teleal/cling/support/model/Connection$Error;

.field public static final enum ERROR_NONE:Lorg/teleal/cling/support/model/Connection$Error;

.field public static final enum ERROR_NOT_ENABLED_FOR_INTERNET:Lorg/teleal/cling/support/model/Connection$Error;

.field public static final enum ERROR_NO_CARRIER:Lorg/teleal/cling/support/model/Connection$Error;

.field public static final enum ERROR_UNKNOWN:Lorg/teleal/cling/support/model/Connection$Error;

.field public static final enum ERROR_USER_DISCONNECT:Lorg/teleal/cling/support/model/Connection$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Error;

    const-string v1, "ERROR_NONE"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_NONE:Lorg/teleal/cling/support/model/Connection$Error;

    .line 144
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Error;

    const-string v1, "ERROR_COMMAND_ABORTED"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_COMMAND_ABORTED:Lorg/teleal/cling/support/model/Connection$Error;

    .line 145
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Error;

    const-string v1, "ERROR_NOT_ENABLED_FOR_INTERNET"

    invoke-direct {v0, v1, v5}, Lorg/teleal/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_NOT_ENABLED_FOR_INTERNET:Lorg/teleal/cling/support/model/Connection$Error;

    .line 146
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Error;

    const-string v1, "ERROR_USER_DISCONNECT"

    invoke-direct {v0, v1, v6}, Lorg/teleal/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_USER_DISCONNECT:Lorg/teleal/cling/support/model/Connection$Error;

    .line 147
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Error;

    const-string v1, "ERROR_ISP_DISCONNECT"

    invoke-direct {v0, v1, v7}, Lorg/teleal/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_ISP_DISCONNECT:Lorg/teleal/cling/support/model/Connection$Error;

    .line 148
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Error;

    const-string v1, "ERROR_IDLE_DISCONNECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_IDLE_DISCONNECT:Lorg/teleal/cling/support/model/Connection$Error;

    .line 149
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Error;

    const-string v1, "ERROR_FORCED_DISCONNECT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_FORCED_DISCONNECT:Lorg/teleal/cling/support/model/Connection$Error;

    .line 150
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Error;

    const-string v1, "ERROR_NO_CARRIER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_NO_CARRIER:Lorg/teleal/cling/support/model/Connection$Error;

    .line 151
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Error;

    const-string v1, "ERROR_IP_CONFIGURATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_IP_CONFIGURATION:Lorg/teleal/cling/support/model/Connection$Error;

    .line 152
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Error;

    const-string v1, "ERROR_UNKNOWN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/Connection$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_UNKNOWN:Lorg/teleal/cling/support/model/Connection$Error;

    .line 142
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/teleal/cling/support/model/Connection$Error;

    sget-object v1, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_NONE:Lorg/teleal/cling/support/model/Connection$Error;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_COMMAND_ABORTED:Lorg/teleal/cling/support/model/Connection$Error;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_NOT_ENABLED_FOR_INTERNET:Lorg/teleal/cling/support/model/Connection$Error;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_USER_DISCONNECT:Lorg/teleal/cling/support/model/Connection$Error;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_ISP_DISCONNECT:Lorg/teleal/cling/support/model/Connection$Error;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_IDLE_DISCONNECT:Lorg/teleal/cling/support/model/Connection$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_FORCED_DISCONNECT:Lorg/teleal/cling/support/model/Connection$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_NO_CARRIER:Lorg/teleal/cling/support/model/Connection$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_IP_CONFIGURATION:Lorg/teleal/cling/support/model/Connection$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/teleal/cling/support/model/Connection$Error;->ERROR_UNKNOWN:Lorg/teleal/cling/support/model/Connection$Error;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/support/model/Connection$Error;->ENUM$VALUES:[Lorg/teleal/cling/support/model/Connection$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/Connection$Error;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/Connection$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Connection$Error;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/support/model/Connection$Error;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/Connection$Error;->ENUM$VALUES:[Lorg/teleal/cling/support/model/Connection$Error;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/Connection$Error;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
