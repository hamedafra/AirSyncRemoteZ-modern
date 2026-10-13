.class public Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;
.super Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;
.source "UDA10DeviceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DeviceHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler",
        "<",
        "Lorg/teleal/cling/binding/staging/MutableDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$teleal$cling$binding$xml$Descriptor$Device$ELEMENT:[I

.field public static final EL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;


# direct methods
.method static synthetic $SWITCH_TABLE$org$teleal$cling$binding$xml$Descriptor$Device$ELEMENT()[I
    .locals 3

    .prologue
    .line 150
    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->$SWITCH_TABLE$org$teleal$cling$binding$xml$Descriptor$Device$ELEMENT:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->values()[Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->SCPDURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_22

    :goto_1
    :try_start_1
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->UDN:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_21

    :goto_2
    :try_start_2
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->UPC:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_20

    :goto_3
    :try_start_3
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->URLBase:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1f

    :goto_4
    :try_start_4
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNACAP:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1e

    :goto_5
    :try_start_5
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->X_DLNADOC:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1d

    :goto_6
    :try_start_6
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->controlURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1c

    :goto_7
    :try_start_7
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->depth:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1b

    :goto_8
    :try_start_8
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1a

    :goto_9
    :try_start_9
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_19

    :goto_a
    :try_start_a
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->deviceType:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_18

    :goto_b
    :try_start_b
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->eventSubURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_17

    :goto_c
    :try_start_c
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->friendlyName:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_16

    :goto_d
    :try_start_d
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->height:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_15

    :goto_e
    :try_start_e
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->icon:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_14

    :goto_f
    :try_start_f
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->iconList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_13

    :goto_10
    :try_start_10
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->major:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_12

    :goto_11
    :try_start_11
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturer:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :goto_12
    :try_start_12
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->manufacturerURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_10

    :goto_13
    :try_start_13
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->mimetype:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_f

    :goto_14
    :try_start_14
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->minor:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_e

    :goto_15
    :try_start_15
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelDescription:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_d

    :goto_16
    :try_start_16
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelName:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_c

    :goto_17
    :try_start_17
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelNumber:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_b

    :goto_18
    :try_start_18
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->modelURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_a

    :goto_19
    :try_start_19
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->presentationURL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_9

    :goto_1a
    :try_start_1a
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->root:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_8

    :goto_1b
    :try_start_1b
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serialNumber:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_7

    :goto_1c
    :try_start_1c
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->service:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_6

    :goto_1d
    :try_start_1d
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceId:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_5

    :goto_1e
    :try_start_1e
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceList:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_4

    :goto_1f
    :try_start_1f
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->serviceType:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_3

    :goto_20
    :try_start_20
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->specVersion:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_2

    :goto_21
    :try_start_21
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->url:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_1

    :goto_22
    :try_start_22
    sget-object v1, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->width:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_0

    :goto_23
    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->$SWITCH_TABLE$org$teleal$cling$binding$xml$Descriptor$Device$ELEMENT:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_23

    :catch_1
    move-exception v1

    goto :goto_22

    :catch_2
    move-exception v1

    goto :goto_21

    :catch_3
    move-exception v1

    goto :goto_20

    :catch_4
    move-exception v1

    goto :goto_1f

    :catch_5
    move-exception v1

    goto :goto_1e

    :catch_6
    move-exception v1

    goto :goto_1d

    :catch_7
    move-exception v1

    goto :goto_1c

    :catch_8
    move-exception v1

    goto :goto_1b

    :catch_9
    move-exception v1

    goto :goto_1a

    :catch_a
    move-exception v1

    goto :goto_19

    :catch_b
    move-exception v1

    goto/16 :goto_18

    :catch_c
    move-exception v1

    goto/16 :goto_17

    :catch_d
    move-exception v1

    goto/16 :goto_16

    :catch_e
    move-exception v1

    goto/16 :goto_15

    :catch_f
    move-exception v1

    goto/16 :goto_14

    :catch_10
    move-exception v1

    goto/16 :goto_13

    :catch_11
    move-exception v1

    goto/16 :goto_12

    :catch_12
    move-exception v1

    goto/16 :goto_11

    :catch_13
    move-exception v1

    goto/16 :goto_10

    :catch_14
    move-exception v1

    goto/16 :goto_f

    :catch_15
    move-exception v1

    goto/16 :goto_e

    :catch_16
    move-exception v1

    goto/16 :goto_d

    :catch_17
    move-exception v1

    goto/16 :goto_c

    :catch_18
    move-exception v1

    goto/16 :goto_b

    :catch_19
    move-exception v1

    goto/16 :goto_a

    :catch_1a
    move-exception v1

    goto/16 :goto_9

    :catch_1b
    move-exception v1

    goto/16 :goto_8

    :catch_1c
    move-exception v1

    goto/16 :goto_7

    :catch_1d
    move-exception v1

    goto/16 :goto_6

    :catch_1e
    move-exception v1

    goto/16 :goto_5

    :catch_1f
    move-exception v1

    goto/16 :goto_4

    :catch_20
    move-exception v1

    goto/16 :goto_3

    :catch_21
    move-exception v1

    goto/16 :goto_2

    :catch_22
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V
    .locals 0
    .param p1, "instance"    # Lorg/teleal/cling/binding/staging/MutableDevice;
    .param p2, "parent"    # Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;-><init>(Ljava/lang/Object;Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    .line 156
    return-void
.end method


# virtual methods
.method public endElement(Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;)V
    .locals 5
    .param p1, "element"    # Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->$SWITCH_TABLE$org$teleal$cling$binding$xml$Descriptor$Device$ELEMENT()[I

    move-result-object v2

    invoke-virtual {p1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 184
    :pswitch_0
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->deviceType:Ljava/lang/String;

    goto :goto_0

    .line 187
    :pswitch_1
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->friendlyName:Ljava/lang/String;

    goto :goto_0

    .line 190
    :pswitch_2
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->manufacturer:Ljava/lang/String;

    goto :goto_0

    .line 193
    :pswitch_3
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    iput-object v3, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->manufacturerURI:Ljava/net/URI;

    goto :goto_0

    .line 196
    :pswitch_4
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->modelDescription:Ljava/lang/String;

    goto :goto_0

    .line 199
    :pswitch_5
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->modelName:Ljava/lang/String;

    goto :goto_0

    .line 202
    :pswitch_6
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->modelNumber:Ljava/lang/String;

    goto :goto_0

    .line 205
    :pswitch_7
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    iput-object v3, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->modelURI:Ljava/net/URI;

    goto :goto_0

    .line 208
    :pswitch_8
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    iput-object v3, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->presentationURI:Ljava/net/URI;

    goto/16 :goto_0

    .line 211
    :pswitch_9
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->upc:Ljava/lang/String;

    goto/16 :goto_0

    .line 214
    :pswitch_a
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->serialNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 217
    :pswitch_b
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/teleal/cling/model/types/UDN;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    iput-object v3, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->udn:Lorg/teleal/cling/model/types/UDN;

    goto/16 :goto_0

    .line 220
    :pswitch_c
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "txt":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object v2, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->dlnaDocs:Ljava/util/List;

    invoke-static {v1}, Lorg/teleal/cling/model/types/DLNADoc;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/DLNADoc;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "ex":Lorg/teleal/cling/model/types/InvalidValueException;
    invoke-static {}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;->access$0()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid X_DLNADOC value, ignoring value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .end local v0    # "ex":Lorg/teleal/cling/model/types/InvalidValueException;
    .end local v1    # "txt":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/teleal/cling/model/types/DLNACaps;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/DLNACaps;

    move-result-object v3

    iput-object v3, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->dlnaCaps:Lorg/teleal/cling/model/types/DLNACaps;

    goto/16 :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public isLastElement(Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;)Z
    .locals 1
    .param p1, "element"    # Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    .prologue
    .line 235
    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v0}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startElement(Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "element"    # Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 161
    sget-object v3, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v3}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "icons":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/binding/staging/MutableIcon;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/binding/staging/MutableDevice;

    iput-object v1, v3, Lorg/teleal/cling/binding/staging/MutableDevice;->icons:Ljava/util/List;

    .line 164
    new-instance v3, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;

    invoke-direct {v3, v1, p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;-><init>(Ljava/util/List;Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    .line 167
    .end local v1    # "icons":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/binding/staging/MutableIcon;>;"
    :cond_0
    sget-object v3, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$ServiceListHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v3}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/binding/staging/MutableService;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/binding/staging/MutableDevice;

    iput-object v2, v3, Lorg/teleal/cling/binding/staging/MutableDevice;->services:Ljava/util/List;

    .line 170
    new-instance v3, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$ServiceListHandler;

    invoke-direct {v3, v2, p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$ServiceListHandler;-><init>(Ljava/util/List;Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    .line 173
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/binding/staging/MutableService;>;"
    :cond_1
    sget-object v3, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceListHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v3}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/binding/staging/MutableDevice;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->getInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/binding/staging/MutableDevice;

    iput-object v0, v3, Lorg/teleal/cling/binding/staging/MutableDevice;->embeddedDevices:Ljava/util/List;

    .line 176
    new-instance v3, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceListHandler;

    invoke-direct {v3, v0, p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceListHandler;-><init>(Ljava/util/List;Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    .line 178
    .end local v0    # "devices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/binding/staging/MutableDevice;>;"
    :cond_2
    return-void
.end method
