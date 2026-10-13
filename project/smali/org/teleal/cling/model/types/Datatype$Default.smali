.class public final enum Lorg/teleal/cling/model/types/Datatype$Default;
.super Ljava/lang/Enum;
.source "Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/types/Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/model/types/Datatype$Default;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOLEAN:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum BOOLEAN_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum BYTES:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum CALENDAR:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum CHAR:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum CHAR_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum DOUBLE:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum DOUBLE_PRIMTIIVE:Lorg/teleal/cling/model/types/Datatype$Default;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum FLOAT:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum FLOAT_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum INTEGER:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum INTEGER_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum SHORT:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum SHORT_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum STRING:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum UNSIGNED_INTEGER_FOUR_BYTES:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum UNSIGNED_INTEGER_ONE_BYTE:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum UNSIGNED_INTEGER_TWO_BYTES:Lorg/teleal/cling/model/types/Datatype$Default;

.field public static final enum URI:Lorg/teleal/cling/model/types/Datatype$Default;


# instance fields
.field private builtinType:Lorg/teleal/cling/model/types/Datatype$Builtin;

.field private javaType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "BOOLEAN"

    const-class v2, Ljava/lang/Boolean;

    sget-object v3, Lorg/teleal/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->BOOLEAN:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 46
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "BOOLEAN_PRIMITIVE"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/teleal/cling/model/types/Datatype$Builtin;->BOOLEAN:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->BOOLEAN_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 47
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "SHORT"

    const-class v2, Ljava/lang/Short;

    sget-object v3, Lorg/teleal/cling/model/types/Datatype$Builtin;->I2_SHORT:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->SHORT:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 48
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "SHORT_PRIMITIVE"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v3, Lorg/teleal/cling/model/types/Datatype$Builtin;->I2_SHORT:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->SHORT_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 49
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "INTEGER"

    const-class v2, Ljava/lang/Integer;

    sget-object v3, Lorg/teleal/cling/model/types/Datatype$Builtin;->I4:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->INTEGER:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 50
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "INTEGER_PRIMITIVE"

    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->I4:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->INTEGER_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 51
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "UNSIGNED_INTEGER_ONE_BYTE"

    const/4 v2, 0x6

    const-class v3, Lorg/teleal/cling/model/types/UnsignedIntegerOneByte;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->UI1:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_ONE_BYTE:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 52
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "UNSIGNED_INTEGER_TWO_BYTES"

    const/4 v2, 0x7

    const-class v3, Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->UI2:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_TWO_BYTES:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 53
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "UNSIGNED_INTEGER_FOUR_BYTES"

    const/16 v2, 0x8

    const-class v3, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->UI4:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_FOUR_BYTES:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 54
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "FLOAT"

    const/16 v2, 0x9

    const-class v3, Ljava/lang/Float;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->R4:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->FLOAT:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 55
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "FLOAT_PRIMITIVE"

    const/16 v2, 0xa

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->R4:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->FLOAT_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 56
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "DOUBLE"

    const/16 v2, 0xb

    const-class v3, Ljava/lang/Double;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->FLOAT:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->DOUBLE:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 57
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "DOUBLE_PRIMTIIVE"

    const/16 v2, 0xc

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->FLOAT:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->DOUBLE_PRIMTIIVE:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 58
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "CHAR"

    const/16 v2, 0xd

    const-class v3, Ljava/lang/Character;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->CHAR:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->CHAR:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 59
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "CHAR_PRIMITIVE"

    const/16 v2, 0xe

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->CHAR:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->CHAR_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 60
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "STRING"

    const/16 v2, 0xf

    const-class v3, Ljava/lang/String;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->STRING:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->STRING:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 61
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "CALENDAR"

    const/16 v2, 0x10

    const-class v3, Ljava/util/Calendar;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->DATETIME:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->CALENDAR:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 62
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "BYTES"

    const/16 v2, 0x11

    const-class v3, [Ljava/lang/Byte;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->BIN_BASE64:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->BYTES:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 63
    new-instance v0, Lorg/teleal/cling/model/types/Datatype$Default;

    const-string v1, "URI"

    const/16 v2, 0x12

    const-class v3, Ljava/net/URI;

    sget-object v4, Lorg/teleal/cling/model/types/Datatype$Builtin;->URI:Lorg/teleal/cling/model/types/Datatype$Builtin;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/types/Datatype$Default;-><init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->URI:Lorg/teleal/cling/model/types/Datatype$Default;

    .line 43
    const/16 v0, 0x13

    new-array v0, v0, [Lorg/teleal/cling/model/types/Datatype$Default;

    sget-object v1, Lorg/teleal/cling/model/types/Datatype$Default;->BOOLEAN:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/model/types/Datatype$Default;->BOOLEAN_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/model/types/Datatype$Default;->SHORT:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v1, v0, v7

    sget-object v1, Lorg/teleal/cling/model/types/Datatype$Default;->SHORT_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v1, v0, v8

    sget-object v1, Lorg/teleal/cling/model/types/Datatype$Default;->INTEGER:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->INTEGER_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_ONE_BYTE:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_TWO_BYTES:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->UNSIGNED_INTEGER_FOUR_BYTES:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->FLOAT:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->FLOAT_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->DOUBLE:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->DOUBLE_PRIMTIIVE:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->CHAR:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->CHAR_PRIMITIVE:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->STRING:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->CALENDAR:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->BYTES:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/teleal/cling/model/types/Datatype$Default;->URI:Lorg/teleal/cling/model/types/Datatype$Default;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->ENUM$VALUES:[Lorg/teleal/cling/model/types/Datatype$Default;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Lorg/teleal/cling/model/types/Datatype$Builtin;)V
    .locals 0
    .param p3, "javaType"    # Ljava/lang/Class;

    .prologue
    .line 68
    .local p4, "builtinType":Lorg/teleal/cling/model/types/Datatype$Builtin;, "Lorg/teleal/cling/model/types/Datatype$Builtin;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p3, p0, Lorg/teleal/cling/model/types/Datatype$Default;->javaType:Ljava/lang/Class;

    .line 70
    iput-object p4, p0, Lorg/teleal/cling/model/types/Datatype$Default;->builtinType:Lorg/teleal/cling/model/types/Datatype$Builtin;

    .line 71
    return-void
.end method

.method public static getByJavaType(Ljava/lang/Class;)Lorg/teleal/cling/model/types/Datatype$Default;
    .locals 5
    .param p0, "javaType"    # Ljava/lang/Class;

    .prologue
    .line 82
    invoke-static {}, Lorg/teleal/cling/model/types/Datatype$Default;->values()[Lorg/teleal/cling/model/types/Datatype$Default;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 87
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 82
    :cond_1
    aget-object v0, v2, v1

    .line 83
    .local v0, "d":Lorg/teleal/cling/model/types/Datatype$Default;, "Lorg/teleal/cling/model/types/Datatype$Default;"
    invoke-virtual {v0}, Lorg/teleal/cling/model/types/Datatype$Default;->getJavaType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/Datatype$Default;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/model/types/Datatype$Default;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/types/Datatype$Default;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/model/types/Datatype$Default;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/model/types/Datatype$Default;->ENUM$VALUES:[Lorg/teleal/cling/model/types/Datatype$Default;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/model/types/Datatype$Default;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getBuiltinType()Lorg/teleal/cling/model/types/Datatype$Builtin;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/teleal/cling/model/types/Datatype$Default;->builtinType:Lorg/teleal/cling/model/types/Datatype$Builtin;

    return-object v0
.end method

.method public getJavaType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/teleal/cling/model/types/Datatype$Default;->javaType:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/Datatype$Default;->getJavaType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/types/Datatype$Default;->getBuiltinType()Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
