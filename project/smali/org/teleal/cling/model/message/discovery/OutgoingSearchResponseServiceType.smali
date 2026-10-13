.class public Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseServiceType;
.super Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;
.source "OutgoingSearchResponseServiceType.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/ServiceType;)V
    .locals 4
    .param p1, "request"    # Lorg/teleal/cling/model/message/IncomingDatagramMessage;
    .param p2, "location"    # Lorg/teleal/cling/model/Location;
    .param p3, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .param p4, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;)V

    .line 39
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseServiceType;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/ServiceTypeHeader;

    invoke-direct {v2, p4}, Lorg/teleal/cling/model/message/header/ServiceTypeHeader;-><init>(Lorg/teleal/cling/model/types/ServiceType;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 40
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponseServiceType;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/ServiceUSNHeader;

    invoke-virtual {p3}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    invoke-direct {v2, v3, p4}, Lorg/teleal/cling/model/message/header/ServiceUSNHeader;-><init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/types/ServiceType;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 41
    return-void
.end method
