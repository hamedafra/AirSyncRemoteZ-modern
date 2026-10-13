.class public final enum Lorg/teleal/cling/support/model/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lorg/teleal/cling/support/model/Protocol;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/Protocol;

.field public static final enum HTTP_GET:Lorg/teleal/cling/support/model/Protocol;

.field public static final enum IEC61883:Lorg/teleal/cling/support/model/Protocol;

.field public static final enum INTERNAL:Lorg/teleal/cling/support/model/Protocol;

.field public static final enum RTSP_RTP_UDP:Lorg/teleal/cling/support/model/Protocol;


# instance fields
.field private protocolString:Ljava/lang/String;


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
    new-instance v0, Lorg/teleal/cling/support/model/Protocol;

    const-string v1, "ALL"

    const-string v2, "*"

    invoke-direct {v0, v1, v3, v2}, Lorg/teleal/cling/support/model/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/Protocol;->ALL:Lorg/teleal/cling/support/model/Protocol;

    .line 26
    new-instance v0, Lorg/teleal/cling/support/model/Protocol;

    const-string v1, "HTTP_GET"

    const-string v2, "http-get"

    invoke-direct {v0, v1, v4, v2}, Lorg/teleal/cling/support/model/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/Protocol;->HTTP_GET:Lorg/teleal/cling/support/model/Protocol;

    .line 27
    new-instance v0, Lorg/teleal/cling/support/model/Protocol;

    const-string v1, "RTSP_RTP_UDP"

    const-string v2, "rtsp-rtp-udp"

    invoke-direct {v0, v1, v5, v2}, Lorg/teleal/cling/support/model/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/Protocol;->RTSP_RTP_UDP:Lorg/teleal/cling/support/model/Protocol;

    .line 28
    new-instance v0, Lorg/teleal/cling/support/model/Protocol;

    const-string v1, "INTERNAL"

    const-string v2, "internal"

    invoke-direct {v0, v1, v6, v2}, Lorg/teleal/cling/support/model/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/Protocol;->INTERNAL:Lorg/teleal/cling/support/model/Protocol;

    .line 29
    new-instance v0, Lorg/teleal/cling/support/model/Protocol;

    const-string v1, "IEC61883"

    const-string v2, "iec61883"

    invoke-direct {v0, v1, v7, v2}, Lorg/teleal/cling/support/model/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/Protocol;->IEC61883:Lorg/teleal/cling/support/model/Protocol;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/teleal/cling/support/model/Protocol;

    sget-object v1, Lorg/teleal/cling/support/model/Protocol;->ALL:Lorg/teleal/cling/support/model/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/support/model/Protocol;->HTTP_GET:Lorg/teleal/cling/support/model/Protocol;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/support/model/Protocol;->RTSP_RTP_UDP:Lorg/teleal/cling/support/model/Protocol;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/support/model/Protocol;->INTERNAL:Lorg/teleal/cling/support/model/Protocol;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/support/model/Protocol;->IEC61883:Lorg/teleal/cling/support/model/Protocol;

    aput-object v1, v0, v7

    sput-object v0, Lorg/teleal/cling/support/model/Protocol;->ENUM$VALUES:[Lorg/teleal/cling/support/model/Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "protocolString"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lorg/teleal/cling/support/model/Protocol;->protocolString:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/Protocol;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/Protocol;

    return-object v0
.end method

.method public static valueOrNullOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/Protocol;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {}, Lorg/teleal/cling/support/model/Protocol;->values()[Lorg/teleal/cling/support/model/Protocol;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 48
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 43
    :cond_1
    aget-object v0, v2, v1

    .line 44
    .local v0, "protocol":Lorg/teleal/cling/support/model/Protocol;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static values()[Lorg/teleal/cling/support/model/Protocol;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/Protocol;->ENUM$VALUES:[Lorg/teleal/cling/support/model/Protocol;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/Protocol;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/teleal/cling/support/model/Protocol;->protocolString:Ljava/lang/String;

    return-object v0
.end method
