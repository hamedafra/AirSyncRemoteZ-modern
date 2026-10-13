.class public final enum Lorg/teleal/cling/model/message/UpnpRequest$Method;
.super Ljava/lang/Enum;
.source "UpnpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/message/UpnpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/model/message/UpnpRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum MSEARCH:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum NOTIFY:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum POST:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum SUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field public static final enum UNSUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/message/UpnpRequest$Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private httpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v4, v2}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    .line 36
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v5, v2}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->POST:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    .line 37
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string v1, "NOTIFY"

    const-string v2, "NOTIFY"

    invoke-direct {v0, v1, v6, v2}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    .line 38
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string v1, "MSEARCH"

    const-string v2, "M-SEARCH"

    invoke-direct {v0, v1, v7, v2}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->MSEARCH:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    .line 39
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string v1, "SUBSCRIBE"

    const-string v2, "SUBSCRIBE"

    invoke-direct {v0, v1, v8, v2}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    .line 40
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string v1, "UNSUBSCRIBE"

    const/4 v2, 0x5

    const-string v3, "UNSUBSCRIBE"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    .line 41
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpRequest$Method;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/teleal/cling/model/message/UpnpRequest$Method;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->GET:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->POST:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->MSEARCH:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    aput-object v1, v0, v7

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->SUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNSUBSCRIBE:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ENUM$VALUES:[Lorg/teleal/cling/model/message/UpnpRequest$Method;

    .line 43
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest$Method$1;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/UpnpRequest$Method$1;-><init>()V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->byName:Ljava/util/Map;

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "httpName"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->httpName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static getByHttpName(Ljava/lang/String;)Lorg/teleal/cling/model/message/UpnpRequest$Method;
    .locals 3
    .param p0, "httpName"    # Ljava/lang/String;

    .prologue
    .line 60
    if-nez p0, :cond_1

    sget-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->byName:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    .line 62
    .local v0, "m":Lorg/teleal/cling/model/message/UpnpRequest$Method;
    if-nez v0, :cond_0

    sget-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->UNKNOWN:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/message/UpnpRequest$Method;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/model/message/UpnpRequest$Method;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->ENUM$VALUES:[Lorg/teleal/cling/model/message/UpnpRequest$Method;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getHttpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpRequest$Method;->httpName:Ljava/lang/String;

    return-object v0
.end method
