.class public Lorg/teleal/cling/model/meta/LocalDevice;
.super Lorg/teleal/cling/model/meta/Device;
.source "LocalDevice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/meta/Device",
        "<",
        "Lorg/teleal/cling/model/meta/DeviceIdentity;",
        "Lorg/teleal/cling/model/meta/LocalDevice;",
        "Lorg/teleal/cling/model/meta/LocalService;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;)V
    .locals 1
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;[Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 1
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "version"    # Lorg/teleal/cling/model/meta/UDAVersion;
    .param p3, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p4, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p5, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p6, "services"    # [Lorg/teleal/cling/model/meta/LocalService;
    .param p7, "embeddedDevices"    # [Lorg/teleal/cling/model/meta/LocalDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct/range {p0 .. p7}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 156
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/profile/DeviceDetailsProvider;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;[Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 8
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "version"    # Lorg/teleal/cling/model/meta/UDAVersion;
    .param p3, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p4, "deviceDetailsProvider"    # Lorg/teleal/cling/model/profile/DeviceDetailsProvider;
    .param p5, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p6, "services"    # [Lorg/teleal/cling/model/meta/LocalService;
    .param p7, "embeddedDevices"    # [Lorg/teleal/cling/model/meta/LocalDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 161
    iput-object p4, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 6
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icon"    # Lorg/teleal/cling/model/meta/Icon;
    .param p5, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    new-array v4, v1, [Lorg/teleal/cling/model/meta/Icon;

    aput-object p4, v4, v0

    new-array v5, v1, [Lorg/teleal/cling/model/meta/LocalService;

    aput-object p5, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 7
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icon"    # Lorg/teleal/cling/model/meta/Icon;
    .param p5, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .param p6, "embeddedDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    new-array v4, v1, [Lorg/teleal/cling/model/meta/Icon;

    aput-object p4, v4, v0

    new-array v5, v1, [Lorg/teleal/cling/model/meta/LocalService;

    aput-object p5, v5, v0

    new-array v6, v1, [Lorg/teleal/cling/model/meta/LocalDevice;

    aput-object p6, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 6
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icon"    # Lorg/teleal/cling/model/meta/Icon;
    .param p5, "services"    # [Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 106
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

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;[Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 7
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icon"    # Lorg/teleal/cling/model/meta/Icon;
    .param p5, "services"    # [Lorg/teleal/cling/model/meta/LocalService;
    .param p6, "embeddedDevices"    # [Lorg/teleal/cling/model/meta/LocalDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 118
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

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 120
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 6
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 58
    const/4 v0, 0x1

    new-array v5, v0, [Lorg/teleal/cling/model/meta/LocalService;

    const/4 v0, 0x0

    aput-object p4, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 59
    iput-object v4, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 7
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .param p5, "embeddedDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 76
    new-array v5, v1, [Lorg/teleal/cling/model/meta/LocalService;

    aput-object p4, v5, v0

    new-array v6, v1, [Lorg/teleal/cling/model/meta/LocalDevice;

    aput-object p5, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 77
    iput-object v4, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 6
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p5, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x1

    new-array v5, v0, [Lorg/teleal/cling/model/meta/LocalService;

    const/4 v0, 0x0

    aput-object p5, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 7
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p5, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .param p6, "embeddedDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    new-array v5, v1, [Lorg/teleal/cling/model/meta/LocalService;

    aput-object p5, v5, v0

    new-array v6, v1, [Lorg/teleal/cling/model/meta/LocalDevice;

    aput-object p6, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 132
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 1
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p5, "services"    # [Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct/range {p0 .. p5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 144
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;[Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 1
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p5, "services"    # [Lorg/teleal/cling/model/meta/LocalService;
    .param p6, "embeddedDevices"    # [Lorg/teleal/cling/model/meta/LocalDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct/range {p0 .. p6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 150
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 6
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "services"    # [Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 83
    iput-object v4, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/LocalService;[Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 7
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p4, "services"    # [Lorg/teleal/cling/model/meta/LocalService;
    .param p5, "embeddedDevices"    # [Lorg/teleal/cling/model/meta/LocalDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 89
    iput-object v4, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/profile/DeviceDetailsProvider;Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 6
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "deviceDetailsProvider"    # Lorg/teleal/cling/model/profile/DeviceDetailsProvider;
    .param p4, "icon"    # Lorg/teleal/cling/model/meta/Icon;
    .param p5, "services"    # [Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Lorg/teleal/cling/model/meta/Icon;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 113
    iput-object p3, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/profile/DeviceDetailsProvider;Lorg/teleal/cling/model/meta/LocalService;)V
    .locals 6
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "deviceDetailsProvider"    # Lorg/teleal/cling/model/profile/DeviceDetailsProvider;
    .param p4, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 64
    const/4 v0, 0x1

    new-array v5, v0, [Lorg/teleal/cling/model/meta/LocalService;

    const/4 v0, 0x0

    aput-object p4, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;)V

    .line 65
    iput-object p3, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/profile/DeviceDetailsProvider;Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 7
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "deviceDetailsProvider"    # Lorg/teleal/cling/model/profile/DeviceDetailsProvider;
    .param p4, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .param p5, "embeddedDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 70
    new-array v5, v1, [Lorg/teleal/cling/model/meta/LocalService;

    aput-object p4, v5, v0

    new-array v6, v1, [Lorg/teleal/cling/model/meta/LocalDevice;

    aput-object p5, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 71
    iput-object p3, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/profile/DeviceDetailsProvider;[Lorg/teleal/cling/model/meta/Icon;Lorg/teleal/cling/model/meta/LocalService;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 7
    .param p1, "identity"    # Lorg/teleal/cling/model/meta/DeviceIdentity;
    .param p2, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p3, "deviceDetailsProvider"    # Lorg/teleal/cling/model/profile/DeviceDetailsProvider;
    .param p4, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p5, "service"    # Lorg/teleal/cling/model/meta/LocalService;
    .param p6, "embeddedDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    const/4 v3, 0x0

    new-array v5, v1, [Lorg/teleal/cling/model/meta/LocalService;

    aput-object p5, v5, v0

    new-array v6, v1, [Lorg/teleal/cling/model/meta/LocalDevice;

    aput-object p6, v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Device;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;[Lorg/teleal/cling/model/meta/Device;)V

    .line 137
    iput-object p3, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    .line 138
    return-void
.end method


# virtual methods
.method public discoverResources(Lorg/teleal/cling/model/Namespace;)[Lorg/teleal/cling/model/resource/Resource;
    .locals 10
    .param p1, "namespace"    # Lorg/teleal/cling/model/Namespace;

    .prologue
    const/4 v4, 0x0

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v0, "discovered":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/resource/Resource;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalDevice;->isRoot()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 263
    new-instance v5, Lorg/teleal/cling/model/resource/DeviceDescriptorResource;

    invoke-virtual {p1, p0}, Lorg/teleal/cling/model/Namespace;->getDescriptorPath(Lorg/teleal/cling/model/meta/Device;)Ljava/net/URI;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lorg/teleal/cling/model/resource/DeviceDescriptorResource;-><init>(Ljava/net/URI;Lorg/teleal/cling/model/meta/LocalDevice;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalDevice;->getServices()[Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-lt v5, v7, :cond_2

    .line 286
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalDevice;->getIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_1
    if-lt v5, v7, :cond_3

    .line 291
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalDevice;->hasEmbeddedDevices()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 292
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalDevice;->getEmbeddedDevices()[Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v5

    array-length v6, v5

    :goto_2
    if-lt v4, v6, :cond_4

    .line 297
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/teleal/cling/model/resource/Resource;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/teleal/cling/model/resource/Resource;

    return-object v4

    .line 267
    :cond_2
    aget-object v3, v6, v5

    .line 270
    .local v3, "service":Lorg/teleal/cling/model/meta/LocalService;
    new-instance v8, Lorg/teleal/cling/model/resource/ServiceDescriptorResource;

    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/Namespace;->getDescriptorPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lorg/teleal/cling/model/resource/ServiceDescriptorResource;-><init>(Ljava/net/URI;Lorg/teleal/cling/model/meta/LocalService;)V

    .line 269
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v8, Lorg/teleal/cling/model/resource/ServiceControlResource;

    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/Namespace;->getControlPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lorg/teleal/cling/model/resource/ServiceControlResource;-><init>(Ljava/net/URI;Lorg/teleal/cling/model/meta/LocalService;)V

    .line 274
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v8, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;

    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/Namespace;->getEventSubscriptionPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lorg/teleal/cling/model/resource/ServiceEventSubscriptionResource;-><init>(Ljava/net/URI;Lorg/teleal/cling/model/meta/LocalService;)V

    .line 279
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 286
    .end local v3    # "service":Lorg/teleal/cling/model/meta/LocalService;
    :cond_3
    aget-object v2, v6, v5

    .line 287
    .local v2, "icon":Lorg/teleal/cling/model/meta/Icon;
    new-instance v8, Lorg/teleal/cling/model/resource/IconResource;

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {p1, p0, v9}, Lorg/teleal/cling/model/Namespace;->prefixIfRelative(Lorg/teleal/cling/model/meta/Device;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lorg/teleal/cling/model/resource/IconResource;-><init>(Ljava/net/URI;Lorg/teleal/cling/model/meta/Icon;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 292
    .end local v2    # "icon":Lorg/teleal/cling/model/meta/Icon;
    :cond_4
    aget-object v1, v5, v4

    .line 293
    .local v1, "embeddedDevice":Lorg/teleal/cling/model/meta/Device;
    invoke-virtual {v1, p1}, Lorg/teleal/cling/model/meta/Device;->discoverResources(Lorg/teleal/cling/model/Namespace;)[Lorg/teleal/cling/model/resource/Resource;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 292
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public bridge synthetic findDevice(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/meta/LocalDevice;->findDevice(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v0

    return-object v0
.end method

.method public findDevice(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/LocalDevice;
    .locals 1
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 312
    invoke-virtual {p0, p1, p0}, Lorg/teleal/cling/model/meta/LocalDevice;->find(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/LocalDevice;

    return-object v0
.end method

.method public getDetails(Lorg/teleal/cling/model/profile/ControlPointInfo;)Lorg/teleal/cling/model/meta/DeviceDetails;
    .locals 1
    .param p1, "info"    # Lorg/teleal/cling/model/profile/ControlPointInfo;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/teleal/cling/model/profile/DeviceDetailsProvider;

    invoke-interface {v0, p1}, Lorg/teleal/cling/model/profile/DeviceDetailsProvider;->provide(Lorg/teleal/cling/model/profile/ControlPointInfo;)Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalDevice;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getEmbeddedDevices()[Lorg/teleal/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalDevice;->getEmbeddedDevices()[Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddedDevices()[Lorg/teleal/cling/model/meta/LocalDevice;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->embeddedDevices:[Lorg/teleal/cling/model/meta/Device;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->embeddedDevices:[Lorg/teleal/cling/model/meta/Device;

    check-cast v0, [Lorg/teleal/cling/model/meta/LocalDevice;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/teleal/cling/model/meta/LocalDevice;

    goto :goto_0
.end method

.method public bridge synthetic getRoot()Lorg/teleal/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalDevice;->getRoot()Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lorg/teleal/cling/model/meta/LocalDevice;
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalDevice;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    .end local p0    # "this":Lorg/teleal/cling/model/meta/LocalDevice;
    :goto_0
    return-object p0

    .line 303
    .restart local p0    # "this":Lorg/teleal/cling/model/meta/LocalDevice;
    :cond_0
    move-object v0, p0

    .line 304
    .local v0, "current":Lorg/teleal/cling/model/meta/LocalDevice;
    :goto_1
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/LocalDevice;->getParentDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    if-nez v1, :cond_1

    move-object p0, v0

    .line 307
    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/LocalDevice;->getParentDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .end local v0    # "current":Lorg/teleal/cling/model/meta/LocalDevice;
    check-cast v0, Lorg/teleal/cling/model/meta/LocalDevice;

    .restart local v0    # "current":Lorg/teleal/cling/model/meta/LocalDevice;
    goto :goto_1
.end method

.method public getServices()[Lorg/teleal/cling/model/meta/LocalService;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->services:[Lorg/teleal/cling/model/meta/Service;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/teleal/cling/model/meta/LocalDevice;->services:[Lorg/teleal/cling/model/meta/Service;

    check-cast v0, [Lorg/teleal/cling/model/meta/LocalService;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/teleal/cling/model/meta/LocalService;

    goto :goto_0
.end method

.method public bridge synthetic getServices()[Lorg/teleal/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalDevice;->getServices()[Lorg/teleal/cling/model/meta/LocalService;

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

    check-cast v6, [Lorg/teleal/cling/model/meta/LocalService;

    move-object v7, p7

    check-cast v7, Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lorg/teleal/cling/model/meta/LocalDevice;->newInstance(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;Ljava/util/List;)Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;Ljava/util/List;)Lorg/teleal/cling/model/meta/LocalDevice;
    .locals 8
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "version"    # Lorg/teleal/cling/model/meta/UDAVersion;
    .param p3, "type"    # Lorg/teleal/cling/model/types/DeviceType;
    .param p4, "details"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .param p5, "icons"    # [Lorg/teleal/cling/model/meta/Icon;
    .param p6, "services"    # [Lorg/teleal/cling/model/meta/LocalService;
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
            "Lorg/teleal/cling/model/meta/LocalService;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/meta/LocalDevice;",
            ">;)",
            "Lorg/teleal/cling/model/meta/LocalDevice;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 186
    .local p7, "embeddedDevices":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/LocalDevice;>;"
    new-instance v0, Lorg/teleal/cling/model/meta/LocalDevice;

    .line 187
    new-instance v1, Lorg/teleal/cling/model/meta/DeviceIdentity;

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/teleal/cling/model/meta/DeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;)V

    .line 190
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-interface {p7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/teleal/cling/model/meta/LocalDevice;

    move-object v7, v2

    :goto_0
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 186
    invoke-direct/range {v0 .. v7}, Lorg/teleal/cling/model/meta/LocalDevice;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;[Lorg/teleal/cling/model/meta/LocalDevice;)V

    return-object v0

    .line 190
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public newInstance(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/meta/LocalService;
    .locals 1
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
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;[",
            "Lorg/teleal/cling/model/meta/StateVariable",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;)",
            "Lorg/teleal/cling/model/meta/LocalService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Lorg/teleal/cling/model/meta/LocalService;

    invoke-direct {v0, p1, p2, p6, p7}, Lorg/teleal/cling/model/meta/LocalService;-><init>(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)V

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

    invoke-virtual/range {v0 .. v7}, Lorg/teleal/cling/model/meta/LocalDevice;->newInstance(Lorg/teleal/cling/model/types/ServiceType;Lorg/teleal/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/teleal/cling/model/meta/Action;[Lorg/teleal/cling/model/meta/StateVariable;)Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v0

    return-object v0
.end method

.method public newServiceArray(I)[Lorg/teleal/cling/model/meta/LocalService;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 211
    new-array v0, p1, [Lorg/teleal/cling/model/meta/LocalService;

    return-object v0
.end method

.method public bridge synthetic newServiceArray(I)[Lorg/teleal/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/meta/LocalDevice;->newServiceArray(I)[Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toDeviceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/meta/LocalDevice;->toDeviceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v0

    return-object v0
.end method

.method public toDeviceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/LocalDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/LocalDevice;",
            ">;)[",
            "Lorg/teleal/cling/model/meta/LocalDevice;"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/meta/LocalDevice;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/meta/LocalDevice;

    return-object v0
.end method

.method public toServiceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/LocalService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/LocalService;",
            ">;)[",
            "Lorg/teleal/cling/model/meta/LocalService;"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/meta/LocalService;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/teleal/cling/model/meta/LocalService;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/meta/LocalService;

    return-object v0
.end method

.method public bridge synthetic toServiceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/meta/LocalDevice;->toServiceArray(Ljava/util/Collection;)[Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v0

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 10
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
    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    invoke-super {p0}, Lorg/teleal/cling/model/meta/Device;->validate()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalDevice;->hasIcons()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/LocalDevice;->getIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 252
    :cond_0
    return-object v0

    .line 227
    :cond_1
    aget-object v1, v3, v2

    .line 228
    .local v1, "icon":Lorg/teleal/cling/model/meta/Icon;
    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->isAbsolute()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    new-instance v5, Lorg/teleal/cling/model/ValidationError;

    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 231
    const-string v7, "icons"

    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Local icon URI can not be absolute: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_2
    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "../"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 236
    new-instance v5, Lorg/teleal/cling/model/ValidationError;

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 238
    const-string v7, "icons"

    .line 239
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Local icon URI must not contain \'../\': "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_3
    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 243
    new-instance v5, Lorg/teleal/cling/model/ValidationError;

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 245
    const-string v7, "icons"

    .line 246
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Local icon URI must not start with \'/\': "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
