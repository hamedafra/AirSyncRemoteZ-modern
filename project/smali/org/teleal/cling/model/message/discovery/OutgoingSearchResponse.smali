.class public Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;
.super Lorg/teleal/cling/model/message/OutgoingDatagramMessage;
.source "OutgoingSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/OutgoingDatagramMessage",
        "<",
        "Lorg/teleal/cling/model/message/UpnpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 4
    .param p1, "request"    # Lorg/teleal/cling/model/message/IncomingDatagramMessage;
    .param p2, "location"    # Lorg/teleal/cling/model/Location;
    .param p3, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 43
    new-instance v0, Lorg/teleal/cling/model/message/UpnpResponse;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpResponse$Status;->OK:Lorg/teleal/cling/model/message/UpnpResponse$Status;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpResponse;-><init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->getSourceAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;->getSourcePort()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Ljava/net/InetAddress;I)V

    .line 45
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/MaxAgeHeader;

    invoke-virtual {p3}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/MaxAgeHeader;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 46
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/LocationHeader;

    invoke-virtual {p2}, Lorg/teleal/cling/model/Location;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/LocationHeader;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 47
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/ServerHeader;

    invoke-direct {v2}, Lorg/teleal/cling/model/message/header/ServerHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 48
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/EXTHeader;

    invoke-direct {v2}, Lorg/teleal/cling/model/message/header/EXTHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 50
    invoke-virtual {p2}, Lorg/teleal/cling/model/Location;->getNetworkAddress()Lorg/teleal/cling/model/NetworkAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/NetworkAddress;->getHardwareAddress()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    .line 52
    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    .line 53
    new-instance v2, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;

    invoke-virtual {p2}, Lorg/teleal/cling/model/Location;->getNetworkAddress()Lorg/teleal/cling/model/NetworkAddress;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/NetworkAddress;->getHardwareAddress()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;-><init>([B)V

    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 56
    :cond_0
    return-void
.end method
