.class public Lorg/teleal/cling/model/meta/RemoteDevice;
.super Lorg/teleal/cling/model/meta/Device;
.source "RemoteDevice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/meta/Device",
        "<",
        "Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;",
        "Lorg/teleal/cling/model/meta/RemoteDevice;",
        "Lorg/teleal/cling/model/meta/RemoteService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)V
    .locals 0
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;[Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .param p2, "version"    # Lorg/teleal/cling/model/meta/UDAVersion;
    .param p3, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p4, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p5, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p6, "services"    # [Lorg/teleal/cling/model/meta/RemoteService;
    .param p7, "embeddedDevices"    # [Lorg/teleal/cling/model/meta/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct/range {p0 .. p7}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 6
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icon"    # Lorg/teleal/cling/model/meta/Icon;
    .param p5, "service"    # Lorg/teleal/cling/model/meta/RemoteService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 71
    new-array v4, v1, [Lorg/teleal/cling/model/meta/Icon;

    aput-object p4, v4, v0

    new-array v5, v1, [Lorg/teleal/cling/model/meta/RemoteService;

    aput-object p5, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/RemoteService;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 7
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icon"    # Lorg/teleal/cling/model/meta/Icon;
    .param p5, "service"    # Lorg/teleal/cling/model/meta/RemoteService;
    .param p6, "embeddedDevice"    # Lorg/teleal/cling/model/meta/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 76
    new-array v4, v1, [Lorg/teleal/cling/model/meta/Icon;

    aput-object p4, v4, v0

    new-array v5, v1, [Lorg/teleal/cling/model/meta/RemoteService;

    aput-object p5, v5, v0

    new-array v6, v1, [Lorg/teleal/cling/model/meta/RemoteDevice;

    aput-object p6, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 6
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icon"    # Lorg/teleal/cling/model/meta/Icon;
    .param p5, "services"    # [Lorg/teleal/cling/model/meta/RemoteService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x1

    new-array v4, v0, [Lorg/teleal/cling/model/meta/Icon;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;[Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 7
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icon"    # Lorg/teleal/cling/model/meta/Icon;
    .param p5, "services"    # [Lorg/teleal/cling/model/meta/RemoteService;
    .param p6, "embeddedDevices"    # [Lorg/teleal/cling/model/meta/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v4, v0, [Lorg/teleal/cling/model/meta/Icon;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 6
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "service"    # Lorg/teleal/cling/model/meta/RemoteService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [Lorg/teleal/cling/model/meta/RemoteService;

    const/4 v0, 0x0

    aput-object p4, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/RemoteService;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 7
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "service"    # Lorg/teleal/cling/model/meta/RemoteService;
    .param p5, "embeddedDevice"    # Lorg/teleal/cling/model/meta/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    const/4 v4, 0x0

    new-array v5, v1, [Lorg/teleal/cling/model/meta/RemoteService;

    aput-object p4, v5, v0

    new-array v6, v1, [Lorg/teleal/cling/model/meta/RemoteDevice;

    aput-object p5, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 6
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p5, "service"    # Lorg/teleal/cling/model/meta/RemoteService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x1

    new-array v5, v0, [Lorg/teleal/cling/model/meta/RemoteService;

    const/4 v0, 0x0

    aput-object p5, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/RemoteService;Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 7
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p5, "service"    # Lorg/teleal/cling/model/meta/RemoteService;
    .param p6, "embeddedDevice"    # Lorg/teleal/cling/model/meta/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 96
    new-array v5, v1, [Lorg/teleal/cling/model/meta/RemoteService;

    aput-object p5, v5, v0

    new-array v6, v1, [Lorg/teleal/cling/model/meta/RemoteDevice;

    aput-object p6, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 0
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p5, "services"    # [Lorg/teleal/cling/model/meta/RemoteService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;[Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 0
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p5, "services"    # [Lorg/teleal/cling/model/meta/RemoteService;
    .param p6, "embeddedDevices"    # [Lorg/teleal/cling/model/meta/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct/range {p0 .. p6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/RemoteService;)V
    .locals 6
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "services"    # [Lorg/teleal/cling/model/meta/RemoteService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/RemoteService;[Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 7
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "services"    # [Lorg/teleal/cling/model/meta/RemoteService;
    .param p5, "embeddedDevices"    # [Lorg/teleal/cling/model/meta/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 67
    return-void
.end method


# virtual methods
.method public discoverResources(Lorg/teleal/cling/model/Namespace;)[Lorg/teleal/cling/model/resource/Resource;
    .locals 9
    .param p1, "namespace"    # Lorg/teleal/cling/model/Namespace;

    .prologue
    const/4 v3, 0x0

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, "discovered":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/resource/Resource;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getServices()[Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_1

    .line 189
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->hasEmbeddedDevices()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getEmbeddedDevices()[Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-lt v3, v5, :cond_3

    .line 196
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/teleal/cling/model/resource/Resource;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/teleal/cling/model/resource/Resource;

    return-object v3

    .line 183
    :cond_1
    aget-object v2, v5, v4

    .line 184
    .local v2, "service":Lorg/teleal/cling/model/meta/RemoteService;
    if-nez v2, :cond_2

    .line 183
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    :cond_2
    new-instance v7, Lorg/teleal/cling/model/resource/ServiceEventCallbackResource;

    invoke-virtual {p1, v2}, Lorg/teleal/cling/model/Namespace;->getEventCallbackPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lorg/teleal/cling/model/resource/ServiceEventCallbackResource;-><init>(Ljava/net/URI;Lorg/teleal/cling/model/meta/RemoteService;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 190
    .end local v2    # "service":Lorg/teleal/cling/model/meta/RemoteService;
    :cond_3
    aget-object v1, v4, v3

    .line 191
    .local v1, "embeddedDevice":Lorg/teleal/cling/model/meta/Device;
    if-nez v1, :cond_4

    .line 190
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 192
    :cond_4
    invoke-virtual {v1, p1}, Lorg/teleal/cling/model/meta/Device;->discoverResources(Lorg/teleal/cling/model/Namespace;)[Lorg/teleal/cling/model/resource/Resource;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method public bridge synthetic findDevice(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->findDevice(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public findDevice(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/RemoteDevice;
    .locals 1
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 211
    invoke-virtual {p0, p1, p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->find(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    return-object v0
.end method

.method public bridge synthetic getEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getEmbeddedDevices()[Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddedDevices()[Lorg/teleal/cling/model/meta/RemoteDevice;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/teleal/cling/model/meta/RemoteDevice;->embeddedDevices:[Lorg/teleal/cling/model/meta/Device;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/model/meta/RemoteDevice;->embeddedDevices:[Lorg/teleal/cling/model/meta/Device;

    check-cast v0, [Lorg/teleal/cling/model/meta/RemoteDevice;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/teleal/cling/model/meta/RemoteDevice;

    goto :goto_0
.end method

.method public bridge synthetic getRoot()Lorg/teleal/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getRoot()Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lorg/teleal/cling/model/meta/RemoteDevice;
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    .end local p0    # "this":Lorg/teleal/cling/model/meta/RemoteDevice;
    :goto_0
    return-object p0

    .line 202
    .restart local p0    # "this":Lorg/teleal/cling/model/meta/RemoteDevice;
    :cond_0
    move-object v0, p0

    .line 203
    .local v0, "current":Lorg/teleal/cling/model/meta/RemoteDevice;
    :goto_1
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getParentDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    if-nez v1, :cond_1

    move-object p0, v0

    .line 206
    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getParentDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .end local v0    # "current":Lorg/teleal/cling/model/meta/RemoteDevice;
    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    .restart local v0    # "current":Lorg/teleal/cling/model/meta/RemoteDevice;
    goto :goto_1
.end method

.method public getServices()[Lorg/teleal/cling/model/meta/RemoteService;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/teleal/cling/model/meta/RemoteDevice;->services:[Lorg/teleal/cling/model/meta/Service;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/model/meta/RemoteDevice;->services:[Lorg/teleal/cling/model/meta/Service;

    check-cast v0, [Lorg/teleal/cling/model/meta/RemoteService;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/teleal/cling/model/meta/RemoteService;

    goto :goto_0
.end method

.method public bridge synthetic getServices()[Lorg/teleal/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getServices()[Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newInstance(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;Ljava/util/List;)Lorg/teleal/cling/model/meta/Device;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 1
    move-object v6, p6

    check-cast v6, [Lorg/teleal/cling/model/meta/RemoteService;

    move-object v7, p7

    check-cast v7, Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lorg/teleal/cling/model/meta/RemoteDevice;->newInstance(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;Ljava/util/List;)Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;Ljava/util/List;)Lorg/teleal/cling/model/meta/RemoteDevice;
    .locals 8
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "version"    # Lorg/teleal/cling/model/meta/UDAVersion;
    .param p3, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p4, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p5, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p6, "services"    # [Lorg/teleal/cling/model/meta/RemoteService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/UDN;",
            "Lorg/teleal/cling/model/meta/UDAVersion;",
            "Lorg/teleal/cling/model/types/DeviceType;",
            "Lorg/teleal/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/teleal/cling/model/meta/Icon;",
            "[",
            "Lorg/teleal/cling/model/meta/RemoteService;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/meta/RemoteDevice;",
            ">;)",
            "Lorg/teleal/cling/model/meta/RemoteDevice;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 144
    .local p7, "embeddedDevices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/RemoteDevice;>;"
    new-instance v0, Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 145
    new-instance v1, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-direct {v1, p1, v2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)V

    .line 148
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-interface {p7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/teleal/cling/model/meta/RemoteDevice;

    move-object v7, v2

    :goto_0
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 144
    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/RemoteDevice;-><init>(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/RemoteService;[Lorg/teleal/cling/model/meta/RemoteDevice;)V

    return-object v0

    .line 148
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public newInstance(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/meta/RemoteService;
    .locals 8
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .param p2, "serviceId"    # Lorg/teleal/cling/model/types/ServiceId;
    .param p3, "descriptorURI"    # Ljava/net/URI;
    .param p4, "controlURI"    # Ljava/net/URI;
    .param p5, "eventSubscriptionURI"    # Ljava/net/URI;
    .param p6, "actions"    # [Lorg/teleal/cling/model/meta/Action;
    .param p7, "stateVariables"    # [Lorg/teleal/cling/model/meta/StateVariable;
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
            "<",
            "Lorg/teleal/cling/model/meta/RemoteService;",
            ">;[",
            "Lorg/teleal/cling/model/meta/StateVariable",
            "<",
            "Lorg/teleal/cling/model/meta/RemoteService;",
            ">;)",
            "Lorg/teleal/cling/model/meta/RemoteService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lorg/teleal/cling/model/meta/RemoteService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/RemoteService;-><init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)V

    return-object v0
.end method

.method public bridge synthetic newInstance(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/meta/Service;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 1
    move-object v6, p6

    check-cast v6, [Lorg/teleal/cling/model/meta/Action;

    move-object v7, p7

    check-cast v7, [Lorg/teleal/cling/model/meta/StateVariable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lorg/teleal/cling/model/meta/RemoteDevice;->newInstance(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object v0

    return-object v0
.end method

.method public newServiceArray(I)[Lorg/teleal/cling/model/meta/RemoteService;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 170
    new-array v0, p1, [Lorg/teleal/cling/model/meta/RemoteService;

    return-object v0
.end method

.method public bridge synthetic newServiceArray(I)[Lorg/teleal/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->newServiceArray(I)[Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object v0

    return-object v0
.end method

.method public normalizeURI(Ljava/net/URI;)Ljava/net/URL;
    .locals 1
    .param p1, "relativeOrAbsoluteURI"    # Ljava/net/URI;

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/DeviceDetails;->getBaseURL()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/DeviceDetails;->getBaseURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/teleal/common/util/URIUtil;->createAbsoluteURL(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/teleal/common/util/URIUtil;->createAbsoluteURL(Ljava/net/URL;Ljava/net/URI;)Ljava/net/URL;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic toDeviceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->toDeviceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public toDeviceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/RemoteDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/RemoteDevice;",
            ">;)[",
            "Lorg/teleal/cling/model/meta/RemoteDevice;"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/meta/RemoteDevice;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/meta/RemoteDevice;

    return-object v0
.end method

.method public toServiceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/RemoteService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/RemoteService;",
            ">;)[",
            "Lorg/teleal/cling/model/meta/RemoteService;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/meta/RemoteService;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/teleal/cling/model/meta/RemoteService;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/meta/RemoteService;

    return-object v0
.end method

.method public bridge synthetic toServiceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->toServiceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/RemoteService;

    move-result-object v0

    return-object v0
.end method
