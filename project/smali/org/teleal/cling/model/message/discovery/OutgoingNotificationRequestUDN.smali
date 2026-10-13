.class public Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestUDN;
.super Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;
.source "OutgoingNotificationRequestUDN.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/NotificationSubtype;)V
    .locals 4
    .param p1, "location"    # Lorg/teleal/cling/model/Location;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .param p3, "type"    # Lorg/teleal/cling/model/types/NotificationSubtype;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;-><init>(Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/NotificationSubtype;)V

    .line 34
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestUDN;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/UDNHeader;

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/UDNHeader;-><init>(Lorg/teleal/cling/model/types/UDN;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 35
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequestUDN;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/UDNHeader;

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/UDNHeader;-><init>(Lorg/teleal/cling/model/types/UDN;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 36
    return-void
.end method
