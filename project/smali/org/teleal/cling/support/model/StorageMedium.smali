.class public final enum Lorg/teleal/cling/support/model/StorageMedium;
.super Ljava/lang/Enum;
.source "StorageMedium.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/teleal/cling/support/model/StorageMedium;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CD_DA:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum CD_R:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum CD_ROM:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum CD_RW:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DAT:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DV:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_AUDIO:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_MINUS_RW:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_PLUS_RW:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_R:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_RAM:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_ROM:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum DVD_VIDEO:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum D_VHS:Lorg/teleal/cling/support/model/StorageMedium;

.field private static final synthetic ENUM$VALUES:[Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum HDD:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum HI8:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum LD:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum MD_AUDIO:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum MD_PICTURE:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum MICRO_MV:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum MINI_DV:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum NETWORK:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum NONE:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum SACD:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum S_VHS:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum UNKNOWN:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum VENDOR_SPECIFIC:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum VHS:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum VHSC:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum VIDEO8:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum VIDEO_CD:Lorg/teleal/cling/support/model/StorageMedium;

.field public static final enum W_VHS:Lorg/teleal/cling/support/model/StorageMedium;

.field private static byProtocolString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/support/model/StorageMedium;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private protocolString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->UNKNOWN:Lorg/teleal/cling/support/model/StorageMedium;

    .line 31
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "DV"

    invoke-direct {v0, v1, v5}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->DV:Lorg/teleal/cling/support/model/StorageMedium;

    .line 32
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "MINI_DV"

    const-string v2, "MINI-DV"

    invoke-direct {v0, v1, v6, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->MINI_DV:Lorg/teleal/cling/support/model/StorageMedium;

    .line 33
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "VHS"

    invoke-direct {v0, v1, v7}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->VHS:Lorg/teleal/cling/support/model/StorageMedium;

    .line 34
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "W_VHS"

    const-string v2, "W-VHS"

    invoke-direct {v0, v1, v8, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->W_VHS:Lorg/teleal/cling/support/model/StorageMedium;

    .line 35
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "S_VHS"

    const/4 v2, 0x5

    const-string v3, "S-VHS"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->S_VHS:Lorg/teleal/cling/support/model/StorageMedium;

    .line 36
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "D_VHS"

    const/4 v2, 0x6

    const-string v3, "D-VHS"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->D_VHS:Lorg/teleal/cling/support/model/StorageMedium;

    .line 37
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "VHSC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->VHSC:Lorg/teleal/cling/support/model/StorageMedium;

    .line 38
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "VIDEO8"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->VIDEO8:Lorg/teleal/cling/support/model/StorageMedium;

    .line 39
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "HI8"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->HI8:Lorg/teleal/cling/support/model/StorageMedium;

    .line 40
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "CD_ROM"

    const/16 v2, 0xa

    const-string v3, "CD-ROM"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->CD_ROM:Lorg/teleal/cling/support/model/StorageMedium;

    .line 41
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "CD_DA"

    const/16 v2, 0xb

    const-string v3, "CD-DA"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->CD_DA:Lorg/teleal/cling/support/model/StorageMedium;

    .line 42
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "CD_R"

    const/16 v2, 0xc

    const-string v3, "CD-R"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->CD_R:Lorg/teleal/cling/support/model/StorageMedium;

    .line 43
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "CD_RW"

    const/16 v2, 0xd

    const-string v3, "CD-RW"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->CD_RW:Lorg/teleal/cling/support/model/StorageMedium;

    .line 44
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "VIDEO_CD"

    const/16 v2, 0xe

    const-string v3, "VIDEO-CD"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->VIDEO_CD:Lorg/teleal/cling/support/model/StorageMedium;

    .line 45
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "SACD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->SACD:Lorg/teleal/cling/support/model/StorageMedium;

    .line 46
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "MD_AUDIO"

    const/16 v2, 0x10

    const-string v3, "M-AUDIO"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->MD_AUDIO:Lorg/teleal/cling/support/model/StorageMedium;

    .line 47
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "MD_PICTURE"

    const/16 v2, 0x11

    const-string v3, "MD-PICTURE"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->MD_PICTURE:Lorg/teleal/cling/support/model/StorageMedium;

    .line 48
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "DVD_ROM"

    const/16 v2, 0x12

    const-string v3, "DVD-ROM"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->DVD_ROM:Lorg/teleal/cling/support/model/StorageMedium;

    .line 49
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "DVD_VIDEO"

    const/16 v2, 0x13

    const-string v3, "DVD-VIDEO"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->DVD_VIDEO:Lorg/teleal/cling/support/model/StorageMedium;

    .line 50
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "DVD_R"

    const/16 v2, 0x14

    const-string v3, "DVD-R"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->DVD_R:Lorg/teleal/cling/support/model/StorageMedium;

    .line 51
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "DVD_PLUS_RW"

    const/16 v2, 0x15

    const-string v3, "DVD+RW"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->DVD_PLUS_RW:Lorg/teleal/cling/support/model/StorageMedium;

    .line 52
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "DVD_MINUS_RW"

    const/16 v2, 0x16

    const-string v3, "DVD-RW"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->DVD_MINUS_RW:Lorg/teleal/cling/support/model/StorageMedium;

    .line 53
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "DVD_RAM"

    const/16 v2, 0x17

    const-string v3, "DVD-RAM"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->DVD_RAM:Lorg/teleal/cling/support/model/StorageMedium;

    .line 54
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "DVD_AUDIO"

    const/16 v2, 0x18

    const-string v3, "DVD-AUDIO"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->DVD_AUDIO:Lorg/teleal/cling/support/model/StorageMedium;

    .line 55
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "DAT"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->DAT:Lorg/teleal/cling/support/model/StorageMedium;

    .line 56
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "LD"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->LD:Lorg/teleal/cling/support/model/StorageMedium;

    .line 57
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "HDD"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->HDD:Lorg/teleal/cling/support/model/StorageMedium;

    .line 58
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "MICRO_MV"

    const/16 v2, 0x1c

    const-string v3, "MICRO_MV"

    invoke-direct {v0, v1, v2, v3}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->MICRO_MV:Lorg/teleal/cling/support/model/StorageMedium;

    .line 59
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "NETWORK"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NETWORK:Lorg/teleal/cling/support/model/StorageMedium;

    .line 60
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "NONE"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    .line 61
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "NOT_IMPLEMENTED"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    .line 62
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium;

    const-string v1, "VENDOR_SPECIFIC"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->VENDOR_SPECIFIC:Lorg/teleal/cling/support/model/StorageMedium;

    const/16 v0, 0x21

    new-array v0, v0, [Lorg/teleal/cling/support/model/StorageMedium;

    sget-object v1, Lorg/teleal/cling/support/model/StorageMedium;->UNKNOWN:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v1, v0, v4

    sget-object v1, Lorg/teleal/cling/support/model/StorageMedium;->DV:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v1, v0, v5

    sget-object v1, Lorg/teleal/cling/support/model/StorageMedium;->MINI_DV:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v1, v0, v6

    sget-object v1, Lorg/teleal/cling/support/model/StorageMedium;->VHS:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v1, v0, v7

    sget-object v1, Lorg/teleal/cling/support/model/StorageMedium;->W_VHS:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->S_VHS:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->D_VHS:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->VHSC:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->VIDEO8:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->HI8:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->CD_ROM:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->CD_DA:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->CD_R:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->CD_RW:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->VIDEO_CD:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->SACD:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->MD_AUDIO:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->MD_PICTURE:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->DVD_ROM:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->DVD_VIDEO:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->DVD_R:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->DVD_PLUS_RW:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->DVD_MINUS_RW:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->DVD_RAM:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->DVD_AUDIO:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->DAT:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->LD:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->HDD:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->MICRO_MV:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->NETWORK:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->NONE:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/teleal/cling/support/model/StorageMedium;->VENDOR_SPECIFIC:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v2, v0, v1

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->ENUM$VALUES:[Lorg/teleal/cling/support/model/StorageMedium;

    .line 64
    new-instance v0, Lorg/teleal/cling/support/model/StorageMedium$1;

    invoke-direct {v0}, Lorg/teleal/cling/support/model/StorageMedium$1;-><init>()V

    sput-object v0, Lorg/teleal/cling/support/model/StorageMedium;->byProtocolString:Ljava/util/Map;

    .line 68
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/support/model/StorageMedium;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "protocolString"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    if-nez p3, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/support/model/StorageMedium;->name()Ljava/lang/String;

    move-result-object p3

    .end local p3    # "protocolString":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Lorg/teleal/cling/support/model/StorageMedium;->protocolString:Ljava/lang/String;

    .line 78
    return-void
.end method

.method static synthetic access$2(Lorg/teleal/cling/support/model/StorageMedium;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/teleal/cling/support/model/StorageMedium;->protocolString:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/teleal/cling/support/model/StorageMedium;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public static valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/teleal/cling/support/model/StorageMedium;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0}, Lorg/teleal/cling/model/ModelUtil;->fromCommaSeparatedList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "strings":[Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v3, 0x0

    new-array v1, v3, [Lorg/teleal/cling/support/model/StorageMedium;

    .line 103
    :cond_0
    return-object v1

    .line 99
    :cond_1
    array-length v3, v2

    new-array v1, v3, [Lorg/teleal/cling/support/model/StorageMedium;

    .line 100
    .local v1, "result":[Lorg/teleal/cling/support/model/StorageMedium;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 101
    aget-object v3, v2, v0

    invoke-static {v3}, Lorg/teleal/cling/support/model/StorageMedium;->valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v3

    aput-object v3, v1, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOrExceptionOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v1, Lorg/teleal/cling/support/model/StorageMedium;->byProtocolString:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/StorageMedium;

    .line 87
    .local v0, "sm":Lorg/teleal/cling/support/model/StorageMedium;
    if-eqz v0, :cond_0

    return-object v0

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid storage medium string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOrVendorSpecificOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/StorageMedium;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v1, Lorg/teleal/cling/support/model/StorageMedium;->byProtocolString:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/StorageMedium;

    .line 93
    .local v0, "sm":Lorg/teleal/cling/support/model/StorageMedium;
    if-eqz v0, :cond_0

    .end local v0    # "sm":Lorg/teleal/cling/support/model/StorageMedium;
    :goto_0
    return-object v0

    .restart local v0    # "sm":Lorg/teleal/cling/support/model/StorageMedium;
    :cond_0
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->VENDOR_SPECIFIC:Lorg/teleal/cling/support/model/StorageMedium;

    goto :goto_0
.end method

.method public static values()[Lorg/teleal/cling/support/model/StorageMedium;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/teleal/cling/support/model/StorageMedium;->ENUM$VALUES:[Lorg/teleal/cling/support/model/StorageMedium;

    array-length v1, v0

    new-array v2, v1, [Lorg/teleal/cling/support/model/StorageMedium;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/teleal/cling/support/model/StorageMedium;->protocolString:Ljava/lang/String;

    return-object v0
.end method
