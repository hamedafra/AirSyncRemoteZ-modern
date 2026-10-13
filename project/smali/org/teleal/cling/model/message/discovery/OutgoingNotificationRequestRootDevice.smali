.class public Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestRootDevice;
.super Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;
.source "OutgoingNotificationRequestRootDevice.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/NotificationSubtype;)V
    .locals 4
    .param p1, "location"    # Lorg/teleal/cling/model/Location;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .param p3, "type"    # Lorg/teleal/cling/model/types/NotificationSubtype;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;-><init>(Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/NotificationSubtype;)V

    .line 36
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestRootDevice;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/RootDeviceHeader;

    invoke-direct {v2}, Lorg/teleal/cling/model/message/header/RootDeviceHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 37
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestRootDevice;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/USNRootDeviceHeader;

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/USNRootDeviceHeader;-><init>(Lorg/teleal/cling/model/types/UDN;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 39
    invoke-virtual {p1}, Lorg/teleal/cling/model/Location;->getNetworkAddress()Lorg/teleal/cling/model/NetworkAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/NetworkAddress;->getHardwareAddress()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestRootDevice;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 41
    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 42
    new-instance v2, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/Location;->getNetworkAddress()Lorg/teleal/cling/model/NetworkAddress;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/NetworkAddress;->getHardwareAddress()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;-><init>([B)V

    .line 40
    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 45
    :cond_0
    return-void
.end method
