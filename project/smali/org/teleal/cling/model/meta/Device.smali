.class public abstract Lorg/teleal/cling/model/meta/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lorg/teleal/cling/model/Validatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DI:",
        "Lorg/teleal/cling/model/meta/DeviceIdentity;",
        "D:",
        "Lorg/teleal/cling/model/meta/Device;",
        "S:",
        "Lorg/teleal/cling/model/meta/Service;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/teleal/cling/model/Validatable;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final details:Lorg/teleal/cling/model/meta/DeviceDetails;

.field protected final embeddedDevices:[Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TD;"
        }
    .end annotation
.end field

.field private final icons:[Lorg/teleal/cling/model/meta/Icon;

.field private final identity:Lorg/teleal/cling/model/meta/DeviceIdentity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDI;"
        }
    .end annotation
.end field

.field private parentDevice:Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field protected final services:[Lorg/teleal/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field

.field private final type:Lorg/teleal/cling/model/types/DeviceType;

.field private final version:Lorg/teleal/cling/model/meta/UDAVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/meta/Device;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    .local p1, "identity":Lorg/teleal/cling/model/meta/DeviceIdentity;, "TDI;"
    const/4 v2, 0x0

    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V
    .locals 12
    .param p2, "version"    # Lorg/teleal/cling/model/meta/UDAVersion;
    .param p3, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p4, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p5, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p6, "services"    # [Lorg/teleal/cling/model/meta/Service;
    .param p7, "embeddedDevices"    # [Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;",
            "Lorg/teleal/cling/model/meta/UDAVersion;",
            "Lorg/teleal/cling/model/types/DeviceType;",
            "Lorg/teleal/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/teleal/cling/model/meta/Icon;",
            "[TS;[TD;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    .local p1, "identity":Lorg/teleal/cling/model/meta/DeviceIdentity;, "TDI;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/teleal/cling/model/meta/Device;->identity:Lorg/teleal/cling/model/meta/DeviceIdentity;

    .line 79
    if-nez p2, :cond_0

    new-instance p2, Lorg/teleal/cling/model/meta/UDAVersion;

    .end local p2    # "version":Lorg/teleal/cling/model/meta/UDAVersion;
    invoke-direct {p2}, Lorg/teleal/cling/model/meta/UDAVersion;-><init>()V

    :cond_0
    iput-object p2, p0, Lorg/teleal/cling/model/meta/Device;->version:Lorg/teleal/cling/model/meta/UDAVersion;

    .line 80
    iput-object p3, p0, Lorg/teleal/cling/model/meta/Device;->type:Lorg/teleal/cling/model/types/DeviceType;

    .line 81
    move-object/from16 v0, p4

    iput-object v0, p0, Lorg/teleal/cling/model/meta/Device;->details:Lorg/teleal/cling/model/meta/DeviceDetails;

    .line 83
    const/4 v2, 0x1

    .line 84
    .local v2, "allNullIcons":Z
    if-eqz p5, :cond_1

    .line 85
    move-object/from16 v0, p5

    array-length v10, v0

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v10, :cond_b

    .line 92
    :cond_1
    if-eqz p5, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v9, 0x0

    new-array v0, v9, [Lorg/teleal/cling/model/meta/Icon;

    move-object/from16 p5, v0

    .end local p5    # "icons":[Lorg/teleal/cling/model/meta/Icon;
    :cond_3
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/teleal/cling/model/meta/Device;->icons:[Lorg/teleal/cling/model/meta/Icon;

    .line 94
    const/4 v3, 0x1

    .line 95
    .local v3, "allNullServices":Z
    if-eqz p6, :cond_4

    .line 96
    move-object/from16 v0, p6

    array-length v10, v0

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v10, :cond_d

    .line 103
    :cond_4
    if-eqz p6, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    const/16 p6, 0x0

    .end local p6    # "services":[Lorg/teleal/cling/model/meta/Service;
    :cond_6
    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/teleal/cling/model/meta/Device;->services:[Lorg/teleal/cling/model/meta/Service;

    .line 105
    const/4 v1, 0x1

    .line 106
    .local v1, "allNullEmbedded":Z
    if-eqz p7, :cond_7

    .line 107
    move-object/from16 v0, p7

    array-length v10, v0

    const/4 v9, 0x0

    :goto_2
    if-lt v9, v10, :cond_f

    .line 114
    :cond_7
    if-eqz p7, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    const/16 p7, 0x0

    .end local p7    # "embeddedDevices":[Lorg/teleal/cling/model/meta/Device;
    :cond_9
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/teleal/cling/model/meta/Device;->embeddedDevices:[Lorg/teleal/cling/model/meta/Device;

    .line 116
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->validate()Ljava/util/List;

    move-result-object v6

    .line 117
    .local v6, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_12

    .line 118
    sget-object v9, Lorg/teleal/cling/model/meta/Device;->log:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 119
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_11

    .line 123
    :cond_a
    new-instance v9, Lorg/teleal/cling/model/ValidationException;

    const-string v10, "Validation of device graph failed, call getErrors() on exception"

    invoke-direct {v9, v10, v6}, Lorg/teleal/cling/model/ValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v9

    .line 85
    .end local v1    # "allNullEmbedded":Z
    .end local v3    # "allNullServices":Z
    .end local v6    # "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    .restart local p5    # "icons":[Lorg/teleal/cling/model/meta/Icon;
    .restart local p6    # "services":[Lorg/teleal/cling/model/meta/Service;
    .restart local p7    # "embeddedDevices":[Lorg/teleal/cling/model/meta/Device;
    :cond_b
    aget-object v7, p5, v9

    .line 86
    .local v7, "icon":Lorg/teleal/cling/model/meta/Icon;
    if-eqz v7, :cond_c

    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-virtual {v7, p0}, Lorg/teleal/cling/model/meta/Icon;->setDevice(Lorg/teleal/cling/model/meta/Device;)V

    .line 85
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 96
    .end local v7    # "icon":Lorg/teleal/cling/model/meta/Icon;
    .end local p5    # "icons":[Lorg/teleal/cling/model/meta/Icon;
    .restart local v3    # "allNullServices":Z
    :cond_d
    aget-object v8, p6, v9

    .line 97
    .local v8, "service":Lorg/teleal/cling/model/meta/Service;, "TS;"
    if-eqz v8, :cond_e

    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-virtual {v8, p0}, Lorg/teleal/cling/model/meta/Service;->setDevice(Lorg/teleal/cling/model/meta/Device;)V

    .line 96
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 107
    .end local v8    # "service":Lorg/teleal/cling/model/meta/Service;, "TS;"
    .end local p6    # "services":[Lorg/teleal/cling/model/meta/Service;
    .restart local v1    # "allNullEmbedded":Z
    :cond_f
    aget-object v4, p7, v9

    .line 108
    .local v4, "embeddedDevice":Lorg/teleal/cling/model/meta/Device;, "TD;"
    if-eqz v4, :cond_10

    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-virtual {v4, p0}, Lorg/teleal/cling/model/meta/Device;->setParentDevice(Lorg/teleal/cling/model/meta/Device;)V

    .line 107
    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 119
    .end local v4    # "embeddedDevice":Lorg/teleal/cling/model/meta/Device;, "TD;"
    .end local p7    # "embeddedDevices":[Lorg/teleal/cling/model/meta/Device;
    .restart local v6    # "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/ValidationError;

    .line 120
    .local v5, "error":Lorg/teleal/cling/model/ValidationError;
    sget-object v10, Lorg/teleal/cling/model/meta/Device;->log:Ljava/util/logging/Logger;

    invoke-virtual {v5}, Lorg/teleal/cling/model/ValidationError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_3

    .line 125
    .end local v5    # "error":Lorg/teleal/cling/model/ValidationError;
    :cond_12
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V
    .locals 8
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p5, "services"    # [Lorg/teleal/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;",
            "Lorg/teleal/cling/model/types/DeviceType;",
            "Lorg/teleal/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/teleal/cling/model/meta/Icon;",
            "[TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    .local p1, "identity":Lorg/teleal/cling/model/meta/DeviceIdentity;, "TDI;"
    const/4 v2, 0x0

    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V
    .locals 8
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p5, "services"    # [Lorg/teleal/cling/model/meta/Service;
    .param p6, "embeddedDevices"    # [Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDI;",
            "Lorg/teleal/cling/model/types/DeviceType;",
            "Lorg/teleal/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/teleal/cling/model/meta/Icon;",
            "[TS;[TD;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    .local p1, "identity":Lorg/teleal/cling/model/meta/DeviceIdentity;, "TDI;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 73
    return-void
.end method

.method private isMatch(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;)Z
    .locals 5
    .param p1, "s"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .param p3, "serviceId"    # Lorg/teleal/cling/model/types/ServiceId;

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 309
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Service;->getServiceType()Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/teleal/cling/model/types/ServiceType;->implementsVersion(Lorg/teleal/cling/model/types/ServiceType;)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v3

    .line 310
    .local v1, "matchesType":Z
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Service;->getServiceId()Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v4

    invoke-virtual {v4, p3}, Lorg/teleal/cling/model/types/ServiceId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v3

    .line 311
    .local v0, "matchesId":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v2

    .end local v0    # "matchesId":Z
    .end local v1    # "matchesType":Z
    :cond_0
    move v1, v2

    .line 309
    goto :goto_0

    .restart local v1    # "matchesType":Z
    :cond_1
    move v0, v2

    .line 310
    goto :goto_1

    .restart local v0    # "matchesId":Z
    :cond_2
    move v2, v3

    .line 311
    goto :goto_2
.end method


# virtual methods
.method public abstract discoverResources(Lorg/teleal/cling/model/Namespace;)[Lorg/teleal/cling/model/resource/Resource;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 413
    if-ne p0, p1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v1

    .line 414
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 416
    check-cast v0, Lorg/teleal/cling/model/meta/Device;

    .line 418
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    iget-object v3, p0, Lorg/teleal/cling/model/meta/Device;->identity:Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v4, v0, Lorg/teleal/cling/model/meta/Device;->identity:Lorg/teleal/cling/model/meta/DeviceIdentity;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/meta/DeviceIdentity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected find(Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;
    .locals 6
    .param p1, "deviceType"    # Lorg/teleal/cling/model/types/DeviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/DeviceType;",
            "TD;)",
            "Ljava/util/Collection",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    .local p2, "current":Lorg/teleal/cling/model/meta/Device;, "TD;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 247
    .local v0, "devices":Ljava/util/Collection;, "Ljava/util/Collection<TD;>;"
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/teleal/cling/model/types/DeviceType;->implementsVersion(Lorg/teleal/cling/model/types/DeviceType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_2

    .line 255
    :cond_1
    return-object v0

    .line 251
    :cond_2
    aget-object v1, v3, v2

    .line 252
    .local v1, "embeddedDevice":Lorg/teleal/cling/model/meta/Device;, "TD;"
    invoke-virtual {p0, p1, v1}, Lorg/teleal/cling/model/meta/Device;->find(Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected find(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;
    .locals 5
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/ServiceType;",
            "TD;)",
            "Ljava/util/Collection",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    .local p2, "current":Lorg/teleal/cling/model/meta/Device;, "TD;"
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, p2}, Lorg/teleal/cling/model/meta/Device;->findServices(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v2

    .line 260
    .local v2, "services":Ljava/util/Collection;, "Ljava/util/Collection<TS;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 261
    .local v0, "devices":Ljava/util/Collection;, "Ljava/util/Collection<TD;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 264
    return-object v0

    .line 261
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/Service;

    .line 262
    .local v1, "service":Lorg/teleal/cling/model/meta/Service;
    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected find(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;
    .locals 5
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/UDN;",
            "TD;)TD;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    .local p2, "current":Lorg/teleal/cling/model/meta/Device;, "TD;"
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    .end local p2    # "current":Lorg/teleal/cling/model/meta/Device;, "TD;"
    :goto_0
    return-object p2

    .line 222
    .restart local p2    # "current":Lorg/teleal/cling/model/meta/Device;, "TD;"
    :cond_0
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_2

    .line 228
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 223
    :cond_2
    aget-object v0, v3, v2

    .line 225
    .local v0, "embeddedDevice":Lorg/teleal/cling/model/meta/Device;, "TD;"
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/model/meta/Device;->find(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    .local v1, "match":Lorg/teleal/cling/model/meta/Device;, "TD;"
    if-eqz v1, :cond_3

    move-object p2, v1

    goto :goto_0

    .line 223
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public abstract findDevice(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/UDN;",
            ")TD;"
        }
    .end annotation
.end method

.method public findDevices(Lorg/teleal/cling/model/types/DeviceType;)[Lorg/teleal/cling/model/meta/Device;
    .locals 1
    .param p1, "deviceType"    # Lorg/teleal/cling/model/types/DeviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/DeviceType;",
            ")[TD;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    invoke-virtual {p0, p1, p0}, Lorg/teleal/cling/model/meta/Device;->find(Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/meta/Device;->toDeviceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method

.method public findDevices(Lorg/teleal/cling/model/types/ServiceType;)[Lorg/teleal/cling/model/meta/Device;
    .locals 1
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/ServiceType;",
            ")[TD;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    invoke-virtual {p0, p1, p0}, Lorg/teleal/cling/model/meta/Device;->find(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/meta/Device;->toDeviceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method

.method protected findEmbeddedDevices(Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/util/Collection",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    .local p1, "current":Lorg/teleal/cling/model/meta/Device;, "TD;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 233
    .local v0, "devices":Ljava/util/Collection;, "Ljava/util/Collection<TD;>;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->isRoot()Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_0
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_2

    .line 241
    :cond_1
    return-object v0

    .line 237
    :cond_2
    aget-object v1, v3, v2

    .line 238
    .local v1, "embeddedDevice":Lorg/teleal/cling/model/meta/Device;, "TD;"
    invoke-virtual {p0, v1}, Lorg/teleal/cling/model/meta/Device;->findEmbeddedDevices(Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public findEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TD;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    invoke-virtual {p0, p0}, Lorg/teleal/cling/model/meta/Device;->findEmbeddedDevices(Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/meta/Device;->toDeviceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method

.method public findIcons()[Lorg/teleal/cling/model/meta/Icon;
    .locals 6

    .prologue
    .line 199
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v2, "icons":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/Icon;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->hasIcons()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->findEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    .line 204
    .local v1, "embeddedDevices":[Lorg/teleal/cling/model/meta/Device;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 209
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/teleal/cling/model/meta/Icon;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/teleal/cling/model/meta/Icon;

    return-object v3

    .line 204
    :cond_1
    aget-object v0, v1, v3

    .line 205
    .local v0, "embeddedDevice":Lorg/teleal/cling/model/meta/Device;, "TD;"
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->hasIcons()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public findService(Lorg/teleal/cling/model/types/ServiceId;)Lorg/teleal/cling/model/meta/Service;
    .locals 4
    .param p1, "serviceId"    # Lorg/teleal/cling/model/types/ServiceId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/ServiceId;",
            ")TS;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    const/4 v1, 0x0

    .line 290
    invoke-virtual {p0, v1, p1, p0}, Lorg/teleal/cling/model/meta/Device;->findServices(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    .line 291
    .local v0, "services":Ljava/util/Collection;, "Ljava/util/Collection<TS;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/Service;

    :cond_0
    return-object v1
.end method

.method public findService(Lorg/teleal/cling/model/types/ServiceType;)Lorg/teleal/cling/model/meta/Service;
    .locals 3
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/ServiceType;",
            ")TS;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    const/4 v1, 0x0

    .line 295
    invoke-virtual {p0, p1, v1, p0}, Lorg/teleal/cling/model/meta/Device;->findServices(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    .line 296
    .local v0, "services":Ljava/util/Collection;, "Ljava/util/Collection<TS;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/Service;

    :cond_0
    return-object v1
.end method

.method public findServiceTypes()[Lorg/teleal/cling/model/types/ServiceType;
    .locals 5

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    const/4 v3, 0x0

    .line 300
    invoke-virtual {p0, v3, v3, p0}, Lorg/teleal/cling/model/meta/Device;->findServices(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v2

    .line 301
    .local v2, "services":Ljava/util/Collection;, "Ljava/util/Collection<TS;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 302
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/types/ServiceType;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 305
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lorg/teleal/cling/model/types/ServiceType;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/teleal/cling/model/types/ServiceType;

    return-object v3

    .line 302
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/meta/Service;

    .line 303
    .local v1, "service":Lorg/teleal/cling/model/meta/Service;, "TS;"
    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Service;->getServiceType()Lorg/teleal/cling/model/types/ServiceType;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected findServices(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;
    .locals 10
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .param p2, "serviceId"    # Lorg/teleal/cling/model/types/ServiceId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/ServiceType;",
            "Lorg/teleal/cling/model/types/ServiceId;",
            "TD;)",
            "Ljava/util/Collection",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    .local p3, "current":Lorg/teleal/cling/model/meta/Device;, "TD;"
    const/4 v5, 0x0

    .line 268
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 269
    .local v3, "services":Ljava/util/Collection;
    invoke-virtual {p3}, Lorg/teleal/cling/model/meta/Device;->hasServices()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    invoke-virtual {p3}, Lorg/teleal/cling/model/meta/Device;->getServices()[Lorg/teleal/cling/model/meta/Service;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-lt v4, v7, :cond_3

    .line 275
    :cond_0
    invoke-virtual {p0, p3}, Lorg/teleal/cling/model/meta/Device;->findEmbeddedDevices(Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v1

    .line 276
    .local v1, "embeddedDevices":Ljava/util/Collection;, "Ljava/util/Collection<TD;>;"
    if-eqz v1, :cond_2

    .line 277
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 286
    :cond_2
    return-object v3

    .line 270
    .end local v1    # "embeddedDevices":Ljava/util/Collection;, "Ljava/util/Collection<TD;>;"
    :cond_3
    aget-object v2, v6, v4

    .line 271
    .local v2, "service":Lorg/teleal/cling/model/meta/Service;
    invoke-direct {p0, v2, p1, p2}, Lorg/teleal/cling/model/meta/Device;->isMatch(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 272
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    .end local v2    # "service":Lorg/teleal/cling/model/meta/Service;
    .restart local v1    # "embeddedDevices":Ljava/util/Collection;, "Ljava/util/Collection<TD;>;"
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/Device;

    .line 278
    .local v0, "embeddedDevice":Lorg/teleal/cling/model/meta/Device;, "TD;"
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->hasServices()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getServices()[Lorg/teleal/cling/model/meta/Service;

    move-result-object v7

    array-length v8, v7

    move v4, v5

    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v2, v7, v4

    .line 280
    .restart local v2    # "service":Lorg/teleal/cling/model/meta/Service;
    invoke-direct {p0, v2, p1, p2}, Lorg/teleal/cling/model/meta/Device;->isMatch(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 281
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public findServices()[Lorg/teleal/cling/model/meta/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, v0, v0, p0}, Lorg/teleal/cling/model/meta/Device;->findServices(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/meta/Device;->toServiceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    return-object v0
.end method

.method public findServices(Lorg/teleal/cling/model/types/ServiceType;)[Lorg/teleal/cling/model/meta/Service;
    .locals 1
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/ServiceType;",
            ")[TS;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p0}, Lorg/teleal/cling/model/meta/Device;->findServices(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Lorg/teleal/cling/model/meta/Device;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/meta/Device;->toServiceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Device;->details:Lorg/teleal/cling/model/meta/DeviceDetails;

    return-object v0
.end method

.method public getDetails(Lorg/teleal/cling/model/profile/ControlPointInfo;)Lorg/teleal/cling/model/meta/DeviceDetails;
    .locals 1
    .param p1, "info"    # Lorg/teleal/cling/model/profile/ControlPointInfo;

    .prologue
    .line 144
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 326
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    const/4 v0, 0x0

    .line 327
    .local v0, "cleanModelName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 329
    .local v1, "cleanModelNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/teleal/cling/model/meta/ModelDetails;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 332
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/DeviceDetails;->getModelDetails()Lorg/teleal/cling/model/meta/ModelDetails;

    move-result-object v2

    .line 333
    .local v2, "modelDetails":Lorg/teleal/cling/model/meta/ModelDetails;
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 334
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 335
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 341
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 342
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v1

    .line 349
    .end local v2    # "modelDetails":Lorg/teleal/cling/model/meta/ModelDetails;
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/teleal/cling/model/meta/ManufacturerDetails;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 354
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/teleal/cling/model/meta/ManufacturerDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 355
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/teleal/cling/model/meta/ManufacturerDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 356
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/teleal/cling/model/meta/ManufacturerDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 360
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/teleal/cling/model/meta/ManufacturerDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 361
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/DeviceDetails;->getManufacturerDetails()Lorg/teleal/cling/model/meta/ManufacturerDetails;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/ManufacturerDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_3
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 336
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "modelDetails":Lorg/teleal/cling/model/meta/ModelDetails;
    :cond_4
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 343
    :cond_5
    const-string v1, ""

    goto/16 :goto_1

    .line 345
    :cond_6
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/ModelDetails;->getModelNumber()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 357
    .end local v2    # "modelDetails":Lorg/teleal/cling/model/meta/ModelDetails;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 365
    :cond_8
    const-string v4, ""

    goto :goto_3

    .line 366
    :cond_9
    const-string v4, ""

    goto :goto_4
.end method

.method public abstract getEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TD;"
        }
    .end annotation
.end method

.method public getIcons()[Lorg/teleal/cling/model/meta/Icon;
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Device;->icons:[Lorg/teleal/cling/model/meta/Icon;

    return-object v0
.end method

.method public getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDI;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Device;->identity:Lorg/teleal/cling/model/meta/DeviceIdentity;

    return-object v0
.end method

.method public getParentDevice()Lorg/teleal/cling/model/meta/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Device;->parentDevice:Lorg/teleal/cling/model/meta/Device;

    return-object v0
.end method

.method public abstract getRoot()Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract getServices()[Lorg/teleal/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation
.end method

.method public getType()Lorg/teleal/cling/model/types/DeviceType;
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Device;->type:Lorg/teleal/cling/model/types/DeviceType;

    return-object v0
.end method

.method public getVersion()Lorg/teleal/cling/model/meta/UDAVersion;
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Device;->version:Lorg/teleal/cling/model/meta/UDAVersion;

    return-object v0
.end method

.method public hasEmbeddedDevices()Z
    .locals 1

    .prologue
    .line 161
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIcons()Z
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServices()Z
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getServices()[Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getServices()[Lorg/teleal/cling/model/meta/Service;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 425
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Device;->identity:Lorg/teleal/cling/model/meta/DeviceIdentity;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/DeviceIdentity;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFullyHydrated()Z
    .locals 6

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    const/4 v2, 0x0

    .line 315
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->findServices()[Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    .line 316
    .local v1, "services":[Lorg/teleal/cling/model/meta/Service;
    array-length v4, v1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 319
    :goto_1
    return v2

    .line 316
    :cond_0
    aget-object v0, v1, v3

    .line 317
    .local v0, "service":Lorg/teleal/cling/model/meta/Service;, "TS;"
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Service;->hasStateVariables()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 316
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getParentDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract newInstance(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;Ljava/util/List;)Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/UDN;",
            "Lorg/teleal/cling/model/meta/UDAVersion;",
            "Lorg/teleal/cling/model/types/DeviceType;",
            "Lorg/teleal/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/teleal/cling/model/meta/Icon;",
            "[TS;",
            "Ljava/util/List",
            "<TD;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation
.end method

.method public abstract newInstance(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/ServiceType;",
            "Lorg/teleal/cling/model/types/ServiceId;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "[",
            "Lorg/teleal/cling/model/meta/Action",
            "<TS;>;[",
            "Lorg/teleal/cling/model/meta/StateVariable",
            "<TS;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation
.end method

.method public abstract newServiceArray(I)[Lorg/teleal/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation
.end method

.method setParentDevice(Lorg/teleal/cling/model/meta/Device;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    .local p1, "parentDevice":Lorg/teleal/cling/model/meta/Device;, "TD;"
    iget-object v0, p0, Lorg/teleal/cling/model/meta/Device;->parentDevice:Lorg/teleal/cling/model/meta/Device;

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Final value has been set already, model is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iput-object p1, p0, Lorg/teleal/cling/model/meta/Device;->parentDevice:Lorg/teleal/cling/model/meta/Device;

    .line 172
    return-void
.end method

.method public abstract toDeviceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TD;>;)[TD;"
        }
    .end annotation
.end method

.method public abstract toServiceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TS;>;)[TS;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Identity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/DeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Root: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->isRoot()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/teleal/cling/model/meta/Device;, "Lorg/teleal/cling/model/meta/Device<TDI;TD;TS;>;"
    const/4 v4, 0x0

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 380
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getVersion()Lorg/teleal/cling/model/meta/UDAVersion;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/UDAVersion;->validate()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 382
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 383
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/DeviceDetails;->validate()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->hasIcons()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 387
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-lt v5, v7, :cond_4

    .line 393
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->hasServices()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 394
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getServices()[Lorg/teleal/cling/model/meta/Service;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_1
    if-lt v5, v7, :cond_6

    .line 400
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->hasEmbeddedDevices()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 401
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/Device;->getEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;

    move-result-object v5

    array-length v6, v5

    :goto_2
    if-lt v4, v6, :cond_8

    .line 408
    :cond_3
    return-object v1

    .line 387
    :cond_4
    aget-object v2, v6, v5

    .line 388
    .local v2, "icon":Lorg/teleal/cling/model/meta/Icon;
    if-eqz v2, :cond_5

    .line 389
    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Icon;->validate()Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 394
    .end local v2    # "icon":Lorg/teleal/cling/model/meta/Icon;
    :cond_6
    aget-object v3, v6, v5

    .line 395
    .local v3, "service":Lorg/teleal/cling/model/meta/Service;
    if-eqz v3, :cond_7

    .line 396
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/Service;->validate()Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 394
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 401
    .end local v3    # "service":Lorg/teleal/cling/model/meta/Service;
    :cond_8
    aget-object v0, v5, v4

    .line 402
    .local v0, "embeddedDevice":Lorg/teleal/cling/model/meta/Device;
    if-eqz v0, :cond_9

    .line 403
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->validate()Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
