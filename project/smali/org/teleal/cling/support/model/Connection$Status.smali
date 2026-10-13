.class public final enum Lorg/teleal/cling/support/model/Connection$Status;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/model/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/Connection$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Connected:Lorg/teleal/cling/support/model/Connection$Status;

.field public static final enum Connecting:Lorg/teleal/cling/support/model/Connection$Status;

.field public static final enum Disconnected:Lorg/teleal/cling/support/model/Connection$Status;

.field public static final enum Disconnecting:Lorg/teleal/cling/support/model/Connection$Status;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/Connection$Status;

.field public static final enum PendingDisconnect:Lorg/teleal/cling/support/model/Connection$Status;

.field public static final enum Unconfigured:Lorg/teleal/cling/support/model/Connection$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Status;

    const-string v1, "Unconfigured"

    invoke-direct {v0, v1, v3}, Lorg/teleal/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    .line 109
    sput-object v0, Lorg/teleal/cling/support/model/Connection$Status;->Unconfigured:Lorg/teleal/cling/support/model/Connection$Status;

    .line 111
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Status;

    const-string v1, "Connecting"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    .line 115
    sput-object v0, Lorg/teleal/cling/support/model/Connection$Status;->Connecting:Lorg/teleal/cling/support/model/Connection$Status;

    .line 117
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Status;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v5}, Lorg/teleal/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    .line 121
    sput-object v0, Lorg/teleal/cling/support/model/Connection$Status;->Connected:Lorg/teleal/cling/support/model/Connection$Status;

    .line 123
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Status;

    const-string v1, "PendingDisconnect"

    invoke-direct {v0, v1, v6}, Lorg/teleal/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    .line 127
    sput-object v0, Lorg/teleal/cling/support/model/Connection$Status;->PendingDisconnect:Lorg/teleal/cling/support/model/Connection$Status;

    .line 129
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Status;

    const-string v1, "Disconnecting"

    invoke-direct {v0, v1, v7}, Lorg/teleal/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    .line 133
    sput-object v0, Lorg/teleal/cling/support/model/Connection$Status;->Disconnecting:Lorg/teleal/cling/support/model/Connection$Status;

    .line 135
    new-instance v0, Lorg/teleal/cling/support/model/Connection$Status;

    const-string v1, "Disconnected"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/Connection$Status;-><init>(Ljava/lang/String;I)V

    .line 139
    sput-object v0, Lorg/teleal/cling/support/model/Connection$Status;->Disconnected:Lorg/teleal/cling/support/model/Connection$Status;

    .line 104
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/teleal/cling/support/model/Connection$Status;

    sget-object v1, Lorg/teleal/cling/support/model/Connection$Status;->Unconfigured:Lorg/teleal/cling/support/model/Connection$Status;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/support/model/Connection$Status;->Connecting:Lorg/teleal/cling/support/model/Connection$Status;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/support/model/Connection$Status;->Connected:Lorg/teleal/cling/support/model/Connection$Status;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/support/model/Connection$Status;->PendingDisconnect:Lorg/teleal/cling/support/model/Connection$Status;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/support/model/Connection$Status;->Disconnecting:Lorg/teleal/cling/support/model/Connection$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/support/model/Connection$Status;->Disconnected:Lorg/teleal/cling/support/model/Connection$Status;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/support/model/Connection$Status;->ENUM$VALUES:[Lorg/teleal/cling/support/model/Connection$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/Connection$Status;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/Connection$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Connection$Status;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/support/model/Connection$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/Connection$Status;->ENUM$VALUES:[Lorg/teleal/cling/support/model/Connection$Status;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/Connection$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
