.class public final enum Lorg/teleal/cling/model/message/UpnpResponse$Status;
.super Ljava/lang/Enum;
.source "UpnpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/message/UpnpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/model/message/UpnpResponse$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BAD_REQUEST:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum METHOD_NOT_SUPPORTED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum NOT_FOUND:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum NOT_IMPLEMENTED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

.field public static final enum UNSUPPORTED_MEDIA_TYPE:Lorg/teleal/cling/model/message/UpnpResponse$Status;


# instance fields
.field private statusCode:I

.field private statusMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const-string v1, "OK"

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    .line 30
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const-string v1, "BAD_REQUEST"

    const/16 v2, 0x190

    const-string v3, "Bad Request"

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    .line 31
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const-string v1, "NOT_FOUND"

    const/16 v2, 0x194

    const-string v3, "Not Found"

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->NOT_FOUND:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    .line 32
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const-string v1, "METHOD_NOT_SUPPORTED"

    const/16 v2, 0x195

    const-string v3, "Method Not Supported"

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->METHOD_NOT_SUPPORTED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    .line 33
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const-string v1, "PRECONDITION_FAILED"

    const/16 v2, 0x19c

    const-string v3, "Precondition Failed"

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    .line 34
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const-string v1, "UNSUPPORTED_MEDIA_TYPE"

    const/4 v2, 0x5

    const/16 v3, 0x19f

    const-string v4, "Unsupported Media Type"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->UNSUPPORTED_MEDIA_TYPE:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    .line 35
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const-string v1, "INTERNAL_SERVER_ERROR"

    const/4 v2, 0x6

    const/16 v3, 0x1f4

    const-string v4, "Internal Server Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    .line 36
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    const-string v1, "NOT_IMPLEMENTED"

    const/4 v2, 0x7

    const/16 v3, 0x1f5

    const-string v4, "Not Implemented"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/UpnpResponse$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->NOT_IMPLEMENTED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/teleal/cling/model/message/UpnpResponse$Status;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->BAD_REQUEST:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->NOT_FOUND:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    aput-object v1, v0, v7

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->METHOD_NOT_SUPPORTED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    aput-object v1, v0, v8

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->PRECONDITION_FAILED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/model/message/UpnpResponse$Status;->UNSUPPORTED_MEDIA_TYPE:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/model/message/UpnpResponse$Status;->INTERNAL_SERVER_ERROR:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/teleal/cling/model/message/UpnpResponse$Status;->NOT_IMPLEMENTED:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->ENUM$VALUES:[Lorg/teleal/cling/model/message/UpnpResponse$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "statusCode"    # I
    .param p4, "statusMsg"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->statusCode:I

    .line 43
    iput-object p4, p0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->statusMsg:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/message/UpnpResponse$Status;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/model/message/UpnpResponse$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->ENUM$VALUES:[Lorg/teleal/cling/model/message/UpnpResponse$Status;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getByStatusCode(I)Lorg/teleal/cling/model/message/UpnpResponse$Status;
    .locals 5
    .param p1, "statusCode"    # I

    .prologue
    .line 55
    invoke-static {}, Lorg/teleal/cling/model/message/UpnpResponse$Status;->values()[Lorg/teleal/cling/model/message/UpnpResponse$Status;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 59
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 55
    :cond_1
    aget-object v0, v2, v1

    .line 56
    .local v0, "status":Lorg/teleal/cling/model/message/UpnpResponse$Status;
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/UpnpResponse$Status;->getStatusCode()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->statusCode:I

    return v0
.end method

.method public getStatusMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpResponse$Status;->statusMsg:Ljava/lang/String;

    return-object v0
.end method
