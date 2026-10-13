.class public final enum Lorg/teleal/cling/model/message/header/UpnpHeader$Type;
.super Ljava/lang/Enum;
.source "UpnpHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/message/header/UpnpHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CALLBACK:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum EXT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum EXT_IFACE_MAC:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum HOST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum LOCATION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum MAN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum MAX_AGE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum MX:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SEQ:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SERVER:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum SOAPACTION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum ST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum TIMEOUT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum USER_AGENT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field public static final enum USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/message/header/UpnpHeader$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private headerTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/model/message/header/UpnpHeader;",
            ">;"
        }
    .end annotation
.end field

.field private httpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 45
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "USN"

    const-string v2, "USN"

    new-array v3, v11, [Ljava/lang/Class;

    .line 46
    const-class v4, Lorg/teleal/cling/model/message/header/USNRootDeviceHeader;

    aput-object v4, v3, v7

    .line 47
    const-class v4, Lorg/teleal/cling/model/message/header/DeviceUSNHeader;

    aput-object v4, v3, v8

    .line 48
    const-class v4, Lorg/teleal/cling/model/message/header/ServiceUSNHeader;

    aput-object v4, v3, v9

    .line 49
    const-class v4, Lorg/teleal/cling/model/message/header/UDNHeader;

    aput-object v4, v3, v10

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    .line 45
    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 51
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "NT"

    const-string v2, "NT"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Class;

    .line 52
    const-class v4, Lorg/teleal/cling/model/message/header/RootDeviceHeader;

    aput-object v4, v3, v7

    .line 53
    const-class v4, Lorg/teleal/cling/model/message/header/UDADeviceTypeHeader;

    aput-object v4, v3, v8

    .line 54
    const-class v4, Lorg/teleal/cling/model/message/header/UDAServiceTypeHeader;

    aput-object v4, v3, v9

    .line 55
    const-class v4, Lorg/teleal/cling/model/message/header/DeviceTypeHeader;

    aput-object v4, v3, v10

    .line 56
    const-class v4, Lorg/teleal/cling/model/message/header/ServiceTypeHeader;

    aput-object v4, v3, v11

    const/4 v4, 0x5

    .line 57
    const-class v5, Lorg/teleal/cling/model/message/header/UDNHeader;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    .line 58
    const-class v5, Lorg/teleal/cling/model/message/header/NTEventHeader;

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    .line 51
    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 60
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "NTS"

    const-string v2, "NTS"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lorg/teleal/cling/model/message/header/NTSHeader;

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 61
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "HOST"

    const-string v2, "HOST"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lorg/teleal/cling/model/message/header/HostHeader;

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v10, v2, v3}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 62
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "SERVER"

    const-string v2, "SERVER"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lorg/teleal/cling/model/message/header/ServerHeader;

    aput-object v4, v3, v7

    invoke-direct {v0, v1, v11, v2, v3}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 63
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "LOCATION"

    const/4 v2, 0x5

    const-string v3, "LOCATION"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Lorg/teleal/cling/model/message/header/LocationHeader;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 64
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "MAX_AGE"

    const/4 v2, 0x6

    const-string v3, "CACHE-CONTROL"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Lorg/teleal/cling/model/message/header/MaxAgeHeader;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 65
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "USER_AGENT"

    const/4 v2, 0x7

    const-string v3, "USER-AGENT"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Lorg/teleal/cling/model/message/header/UserAgentHeader;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 66
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "CONTENT_TYPE"

    const/16 v2, 0x8

    const-string v3, "CONTENT-TYPE"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Lorg/teleal/cling/model/message/header/ContentTypeHeader;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 67
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "MAN"

    const/16 v2, 0x9

    const-string v3, "MAN"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Lorg/teleal/cling/model/message/header/MANHeader;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 68
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "MX"

    const/16 v2, 0xa

    const-string v3, "MX"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Lorg/teleal/cling/model/message/header/MXHeader;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MX:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 69
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "ST"

    const/16 v2, 0xb

    const-string v3, "ST"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Class;

    .line 70
    const-class v5, Lorg/teleal/cling/model/message/header/STAllHeader;

    aput-object v5, v4, v7

    .line 71
    const-class v5, Lorg/teleal/cling/model/message/header/RootDeviceHeader;

    aput-object v5, v4, v8

    .line 72
    const-class v5, Lorg/teleal/cling/model/message/header/UDADeviceTypeHeader;

    aput-object v5, v4, v9

    .line 73
    const-class v5, Lorg/teleal/cling/model/message/header/UDAServiceTypeHeader;

    aput-object v5, v4, v10

    .line 74
    const-class v5, Lorg/teleal/cling/model/message/header/DeviceTypeHeader;

    aput-object v5, v4, v11

    const/4 v5, 0x5

    .line 75
    const-class v6, Lorg/teleal/cling/model/message/header/ServiceTypeHeader;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 76
    const-class v6, Lorg/teleal/cling/model/message/header/UDNHeader;

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    .line 69
    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 78
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "EXT"

    const/16 v2, 0xc

    const-string v3, "EXT"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Lorg/teleal/cling/model/message/header/EXTHeader;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 79
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "SOAPACTION"

    const/16 v2, 0xd

    const-string v3, "SOAPACTION"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Lorg/teleal/cling/model/message/header/SoapActionHeader;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 80
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "TIMEOUT"

    const/16 v2, 0xe

    const-string v3, "TIMEOUT"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Lorg/teleal/cling/model/message/header/TimeoutHeader;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->TIMEOUT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 81
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "CALLBACK"

    const/16 v2, 0xf

    const-string v3, "CALLBACK"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Lorg/teleal/cling/model/message/header/CallbackHeader;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CALLBACK:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 82
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "SID"

    const/16 v2, 0x10

    const-string v3, "SID"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Lorg/teleal/cling/model/message/header/SubscriptionIdHeader;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 83
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "SEQ"

    const/16 v2, 0x11

    const-string v3, "SEQ"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Lorg/teleal/cling/model/message/header/EventSequenceHeader;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SEQ:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 85
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-string v1, "EXT_IFACE_MAC"

    const/16 v2, 0x12

    const-string v3, "X-CLING-IFACE-MAC"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;

    aput-object v5, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const/16 v0, 0x13

    new-array v0, v0, [Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v7

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v8

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v9

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v10

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v1, v0, v11

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USER_AGENT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CONTENT_TYPE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MX:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SOAPACTION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->TIMEOUT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->CALLBACK:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SID:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SEQ:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->ENUM$VALUES:[Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 87
    new-instance v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type$1;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type$1;-><init>()V

    sput-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->byName:Ljava/util/Map;

    .line 91
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .param p3, "httpName"    # Ljava/lang/String;
    .param p4, "headerClass"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/model/message/header/UpnpHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput-object p3, p0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->httpName:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->headerTypes:[Ljava/lang/Class;

    .line 99
    return-void
.end method

.method public static getByHttpName(Ljava/lang/String;)Lorg/teleal/cling/model/message/header/UpnpHeader$Type;
    .locals 2
    .param p0, "httpName"    # Ljava/lang/String;

    .prologue
    .line 122
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->byName:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/message/header/UpnpHeader$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    return-object v0
.end method

.method public static values()[Lorg/teleal/cling/model/message/header/UpnpHeader$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->ENUM$VALUES:[Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getHeaderTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/model/message/header/UpnpHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->headerTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getHttpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->httpName:Ljava/lang/String;

    return-object v0
.end method

.method public isValidHeaderType(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/teleal/cling/model/message/header/UpnpHeader;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/model/message/header/UpnpHeader;>;"
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->getHeaderTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 115
    :goto_1
    return v1

    .line 110
    :cond_0
    aget-object v0, v3, v2

    .line 111
    .local v0, "permissibleType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/teleal/cling/model/message/header/UpnpHeader;>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    const/4 v1, 0x1

    goto :goto_1

    .line 110
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
