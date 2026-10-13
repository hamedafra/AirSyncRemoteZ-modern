.class public Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;
.super Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;
.source "UDA10DeviceDescriptorBinderSAXImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RootHandler"
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


# direct methods
.method static synthetic $SWITCH_TABLE$org$teleal$cling$binding$xml$Descriptor$Device$ELEMENT()[I
    .locals 3

    .prologue
    .line 88
    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;->$SWITCH_TABLE$org$teleal$cling$binding$xml$Descriptor$Device$ELEMENT:[I

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
    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;->$SWITCH_TABLE$org$teleal$cling$binding$xml$Descriptor$Device$ELEMENT:[I

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

.method public constructor <init>(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/teleal/common/xml/SAXParser;)V
    .locals 0
    .param p1, "instance"    # Lorg/teleal/cling/binding/staging/MutableDevice;
    .param p2, "parser"    # Lorg/teleal/common/xml/SAXParser;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;-><init>(Ljava/lang/Object;Lorg/teleal/common/xml/SAXParser;)V

    .line 92
    return-void
.end method


# virtual methods
.method public endElement(Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;)V
    .locals 4
    .param p1, "element"    # Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;->$SWITCH_TABLE$org$teleal$cling$binding$xml$Descriptor$Device$ELEMENT()[I

    move-result-object v1

    invoke-virtual {p1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 115
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/binding/staging/MutableDevice;

    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;->getCharacters()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lorg/teleal/cling/binding/staging/MutableDevice;->baseURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid URLBase: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public startElement(Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "element"    # Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 97
    sget-object v1, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$SpecVersionHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    invoke-direct {v0}, Lorg/teleal/cling/binding/staging/MutableUDAVersion;-><init>()V

    .line 99
    .local v0, "udaVersion":Lorg/teleal/cling/binding/staging/MutableUDAVersion;
    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/binding/staging/MutableDevice;

    iput-object v0, v1, Lorg/teleal/cling/binding/staging/MutableDevice;->udaVersion:Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    .line 100
    new-instance v1, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$SpecVersionHandler;

    invoke-direct {v1, v0, p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$SpecVersionHandler;-><init>(Lorg/teleal/cling/binding/staging/MutableUDAVersion;Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    .line 103
    .end local v0    # "udaVersion":Lorg/teleal/cling/binding/staging/MutableUDAVersion;
    :cond_0
    sget-object v1, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->EL:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v1}, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    new-instance v2, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;

    invoke-virtual {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$RootHandler;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/binding/staging/MutableDevice;

    invoke-direct {v2, v1, p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;-><init>(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    .line 107
    :cond_1
    return-void
.end method
