.class public final enum Lorg/teleal/cling/model/types/NotificationSubtype;
.super Ljava/lang/Enum;
.source "NotificationSubtype.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/model/types/NotificationSubtype;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALIVE:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum ALL:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum BYEBYE:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum DISCOVER:Lorg/teleal/cling/model/types/NotificationSubtype;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum PROPCHANGE:Lorg/teleal/cling/model/types/NotificationSubtype;

.field public static final enum UPDATE:Lorg/teleal/cling/model/types/NotificationSubtype;


# instance fields
.field private headerString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lorg/teleal/cling/model/types/NotificationSubtype;

    const-string v1, "ALIVE"

    const-string v2, "ssdp:alive"

    invoke-direct {v0, v1, v4, v2}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->ALIVE:Lorg/teleal/cling/model/types/NotificationSubtype;

    .line 28
    new-instance v0, Lorg/teleal/cling/model/types/NotificationSubtype;

    const-string v1, "UPDATE"

    const-string v2, "ssdp:update"

    invoke-direct {v0, v1, v5, v2}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->UPDATE:Lorg/teleal/cling/model/types/NotificationSubtype;

    .line 29
    new-instance v0, Lorg/teleal/cling/model/types/NotificationSubtype;

    const-string v1, "BYEBYE"

    const-string v2, "ssdp:byebye"

    invoke-direct {v0, v1, v6, v2}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->BYEBYE:Lorg/teleal/cling/model/types/NotificationSubtype;

    .line 30
    new-instance v0, Lorg/teleal/cling/model/types/NotificationSubtype;

    const-string v1, "ALL"

    const-string v2, "ssdp:all"

    invoke-direct {v0, v1, v7, v2}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->ALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    .line 31
    new-instance v0, Lorg/teleal/cling/model/types/NotificationSubtype;

    const-string v1, "DISCOVER"

    const-string v2, "ssdp:discover"

    invoke-direct {v0, v1, v8, v2}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->DISCOVER:Lorg/teleal/cling/model/types/NotificationSubtype;

    .line 32
    new-instance v0, Lorg/teleal/cling/model/types/NotificationSubtype;

    const-string v1, "PROPCHANGE"

    const/4 v2, 0x5

    const-string v3, "upnp:propchange"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/model/types/NotificationSubtype;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->PROPCHANGE:Lorg/teleal/cling/model/types/NotificationSubtype;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/teleal/cling/model/types/NotificationSubtype;

    sget-object v1, Lorg/teleal/cling/model/types/NotificationSubtype;->ALIVE:Lorg/teleal/cling/model/types/NotificationSubtype;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/model/types/NotificationSubtype;->UPDATE:Lorg/teleal/cling/model/types/NotificationSubtype;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/model/types/NotificationSubtype;->BYEBYE:Lorg/teleal/cling/model/types/NotificationSubtype;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/model/types/NotificationSubtype;->ALL:Lorg/teleal/cling/model/types/NotificationSubtype;

    aput-object v1, v0, v7

    sget-object v1, Lorg/teleal/cling/model/types/NotificationSubtype;->DISCOVER:Lorg/teleal/cling/model/types/NotificationSubtype;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/model/types/NotificationSubtype;->PROPCHANGE:Lorg/teleal/cling/model/types/NotificationSubtype;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->ENUM$VALUES:[Lorg/teleal/cling/model/types/NotificationSubtype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "headerString"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lorg/teleal/cling/model/types/NotificationSubtype;->headerString:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/NotificationSubtype;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/types/NotificationSubtype;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/model/types/NotificationSubtype;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->ENUM$VALUES:[Lorg/teleal/cling/model/types/NotificationSubtype;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getHeaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/teleal/cling/model/types/NotificationSubtype;->headerString:Ljava/lang/String;

    return-object v0
.end method
