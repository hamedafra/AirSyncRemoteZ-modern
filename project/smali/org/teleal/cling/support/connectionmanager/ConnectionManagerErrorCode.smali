.class public final enum Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;
.super Ljava/lang/Enum;
.source "ConnectionManagerErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCESS_DENIED:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum INCOMPATIBLE_DIRECTIONS:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum INCOMPATIBLE_PROTOCOL_INFO:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum INSUFFICIENT_NETWORK_RESOURCES:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum INVALID_CONNECTION_REFERENCE:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum LOCAL_RESTRICTIONS:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

.field public static final enum NOT_IN_NETWORK:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 25
    new-instance v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const-string v1, "INCOMPATIBLE_PROTOCOL_INFO"

    const/16 v2, 0x2bd

    const-string v3, "The connection cannot be established because the protocol info parameter is incompatible"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->INCOMPATIBLE_PROTOCOL_INFO:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 26
    new-instance v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const-string v1, "INCOMPATIBLE_DIRECTIONS"

    const/16 v2, 0x2be

    const-string v3, "The connection cannot be established because the directions of the involved ConnectionManagers (source/sink) are incompatible"

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->INCOMPATIBLE_DIRECTIONS:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 27
    new-instance v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const-string v1, "INSUFFICIENT_NETWORK_RESOURCES"

    const/16 v2, 0x2bf

    const-string v3, "The connection cannot be established because there are insufficient network resources"

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->INSUFFICIENT_NETWORK_RESOURCES:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 28
    new-instance v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const-string v1, "LOCAL_RESTRICTIONS"

    const/16 v2, 0x2c0

    const-string v3, "The connection cannot be established because of local restrictions in the device"

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->LOCAL_RESTRICTIONS:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 29
    new-instance v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const-string v1, "ACCESS_DENIED"

    const/16 v2, 0x2c1

    const-string v3, "The connection cannot be established because the client is not permitted."

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->ACCESS_DENIED:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 30
    new-instance v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const-string v1, "INVALID_CONNECTION_REFERENCE"

    const/4 v2, 0x5

    const/16 v3, 0x2c2

    const-string v4, "Not a valid connection established by this service"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->INVALID_CONNECTION_REFERENCE:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 31
    new-instance v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    const-string v1, "NOT_IN_NETWORK"

    const/4 v2, 0x6

    const/16 v3, 0x2c3

    const-string v4, "The connection cannot be established because the ConnectionManagers are not part of the same physical network."

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->NOT_IN_NETWORK:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    sget-object v1, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->INCOMPATIBLE_PROTOCOL_INFO:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->INCOMPATIBLE_DIRECTIONS:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->INSUFFICIENT_NETWORK_RESOURCES:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->LOCAL_RESTRICTIONS:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->ACCESS_DENIED:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->INVALID_CONNECTION_REFERENCE:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->NOT_IN_NETWORK:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->ENUM$VALUES:[Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->code:I

    .line 38
    iput-object p4, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->description:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static getByCode(I)Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 50
    invoke-static {}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->values()[Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 54
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 50
    :cond_1
    aget-object v0, v2, v1

    .line 51
    .local v0, "errorCode":Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;
    invoke-virtual {v0}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->getCode()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->ENUM$VALUES:[Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method
