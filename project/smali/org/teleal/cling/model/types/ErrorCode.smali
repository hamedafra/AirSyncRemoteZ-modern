.class public final enum Lorg/teleal/cling/model/types/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/model/types/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum ACTION_NOT_AUTHORIZED:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum ARGUMENT_TOO_LONG:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum ARGUMENT_VALUE_OUT_OF_RANGE:Lorg/teleal/cling/model/types/ErrorCode;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum HUMAN_INTERVENTION_REQUIRED:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum INVALID_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum INVALID_ARGS:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum INVALID_CONTROL_URL:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum INVALID_SEQUENCE:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum NOT_ENCRYPTED:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum NO_SUCH_SESSION:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum OPTIONAL_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum OUT_OF_MEMORY:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum SIGNATURE_FAILURE:Lorg/teleal/cling/model/types/ErrorCode;

.field public static final enum SIGNATURE_MISSING:Lorg/teleal/cling/model/types/ErrorCode;


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

    .line 27
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "INVALID_ACTION"

    const/16 v2, 0x191

    const-string v3, "No action by that name at this service"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

    .line 28
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "INVALID_ARGS"

    const/16 v2, 0x192

    const-string v3, "Not enough IN args, too many IN args, no IN arg by that name, one or more IN args are of the wrong data type"

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/teleal/cling/model/types/ErrorCode;

    .line 29
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "ACTION_FAILED"

    const/16 v2, 0x1f5

    const-string v3, "Current state of service prevents invoking that action"

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    .line 30
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "ARGUMENT_VALUE_INVALID"

    const/16 v2, 0x258

    const-string v3, "The argument value is invalid"

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    .line 31
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "ARGUMENT_VALUE_OUT_OF_RANGE"

    const/16 v2, 0x259

    const-string v3, "An argument value is less than the minimum or more than the maximum value of the allowedValueRange, or is not in the allowedValueList"

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_OUT_OF_RANGE:Lorg/teleal/cling/model/types/ErrorCode;

    .line 32
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "OPTIONAL_ACTION"

    const/4 v2, 0x5

    const/16 v3, 0x25a

    const-string v4, "The requested action is optional and is not implemented by the device"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->OPTIONAL_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

    .line 33
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "OUT_OF_MEMORY"

    const/4 v2, 0x6

    const/16 v3, 0x25b

    const-string v4, "The device does not have sufficient memory available to complete the action"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->OUT_OF_MEMORY:Lorg/teleal/cling/model/types/ErrorCode;

    .line 34
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "HUMAN_INTERVENTION_REQUIRED"

    const/4 v2, 0x7

    const/16 v3, 0x25c

    const-string v4, "The device has encountered an error condition which it cannot resolve itself"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->HUMAN_INTERVENTION_REQUIRED:Lorg/teleal/cling/model/types/ErrorCode;

    .line 35
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "ARGUMENT_TOO_LONG"

    const/16 v2, 0x8

    const/16 v3, 0x25d

    const-string v4, "A string argument is too long for the device to handle properly"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_TOO_LONG:Lorg/teleal/cling/model/types/ErrorCode;

    .line 36
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "ACTION_NOT_AUTHORIZED"

    const/16 v2, 0x9

    const/16 v3, 0x25e

    const-string v4, "The action requested requires authorization and the sender was not authorized"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_NOT_AUTHORIZED:Lorg/teleal/cling/model/types/ErrorCode;

    .line 37
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "SIGNATURE_FAILURE"

    const/16 v2, 0xa

    const/16 v3, 0x25f

    const-string v4, "The sender\'s signature failed to verify"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->SIGNATURE_FAILURE:Lorg/teleal/cling/model/types/ErrorCode;

    .line 38
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "SIGNATURE_MISSING"

    const/16 v2, 0xb

    const/16 v3, 0x260

    const-string v4, "The action requested requires a digital signature and there was none provided"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->SIGNATURE_MISSING:Lorg/teleal/cling/model/types/ErrorCode;

    .line 39
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "NOT_ENCRYPTED"

    const/16 v2, 0xc

    const/16 v3, 0x261

    const-string v4, "This action requires confidentiality but the action was not delivered encrypted"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->NOT_ENCRYPTED:Lorg/teleal/cling/model/types/ErrorCode;

    .line 40
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "INVALID_SEQUENCE"

    const/16 v2, 0xd

    const/16 v3, 0x262

    const-string v4, "The sequence provided was not valid"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_SEQUENCE:Lorg/teleal/cling/model/types/ErrorCode;

    .line 41
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "INVALID_CONTROL_URL"

    const/16 v2, 0xe

    const/16 v3, 0x263

    const-string v4, "The controlURL within the freshness element does not match the controlURL of the action actually invoked"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_CONTROL_URL:Lorg/teleal/cling/model/types/ErrorCode;

    .line 42
    new-instance v0, Lorg/teleal/cling/model/types/ErrorCode;

    const-string v1, "NO_SUCH_SESSION"

    const/16 v2, 0xf

    const/16 v3, 0x264

    const-string v4, "The session key reference is to a non-existent session"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->NO_SUCH_SESSION:Lorg/teleal/cling/model/types/ErrorCode;

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [Lorg/teleal/cling/model/types/ErrorCode;

    sget-object v1, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_ARGS:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_OUT_OF_RANGE:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->OPTIONAL_ACTION:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->OUT_OF_MEMORY:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->HUMAN_INTERVENTION_REQUIRED:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_TOO_LONG:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_NOT_AUTHORIZED:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->SIGNATURE_FAILURE:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->SIGNATURE_MISSING:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->NOT_ENCRYPTED:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_SEQUENCE:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->INVALID_CONTROL_URL:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->NO_SUCH_SESSION:Lorg/teleal/cling/model/types/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/model/types/ErrorCode;->ENUM$VALUES:[Lorg/teleal/cling/model/types/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lorg/teleal/cling/model/types/ErrorCode;->code:I

    .line 49
    iput-object p4, p0, Lorg/teleal/cling/model/types/ErrorCode;->description:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static getByCode(I)Lorg/teleal/cling/model/types/ErrorCode;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 61
    invoke-static {}, Lorg/teleal/cling/model/types/ErrorCode;->values()[Lorg/teleal/cling/model/types/ErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 65
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 61
    :cond_1
    aget-object v0, v2, v1

    .line 62
    .local v0, "errorCode":Lorg/teleal/cling/model/types/ErrorCode;
    invoke-virtual {v0}, Lorg/teleal/cling/model/types/ErrorCode;->getCode()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/ErrorCode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/model/types/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/types/ErrorCode;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/model/types/ErrorCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/model/types/ErrorCode;->ENUM$VALUES:[Lorg/teleal/cling/model/types/ErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/model/types/ErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/teleal/cling/model/types/ErrorCode;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/teleal/cling/model/types/ErrorCode;->description:Ljava/lang/String;

    return-object v0
.end method
