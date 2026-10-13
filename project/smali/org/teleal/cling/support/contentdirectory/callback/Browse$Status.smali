.class public final enum Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;
.super Ljava/lang/Enum;
.source "Browse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/support/contentdirectory/callback/Browse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

.field public static final enum LOADING:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

.field public static final enum NO_CONTENT:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

.field public static final enum OK:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;


# instance fields
.field private defaultMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    const-string v1, "NO_CONTENT"

    const-string v2, "No Content"

    invoke-direct {v0, v1, v3, v2}, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->NO_CONTENT:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    .line 45
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    const-string v1, "LOADING"

    const-string v2, "Loading..."

    invoke-direct {v0, v1, v4, v2}, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->LOADING:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    .line 46
    new-instance v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    const-string v1, "OK"

    const-string v2, "OK"

    invoke-direct {v0, v1, v5, v2}, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->OK:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    sget-object v1, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->NO_CONTENT:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    aput-object v1, v0, v3

    sget-object v1, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->LOADING:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->OK:Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    aput-object v1, v0, v5

    sput-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->ENUM$VALUES:[Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "defaultMessage"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->defaultMessage:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->ENUM$VALUES:[Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getDefaultMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/teleal/cling/support/contentdirectory/callback/Browse$Status;->defaultMessage:Ljava/lang/String;

    return-object v0
.end method
