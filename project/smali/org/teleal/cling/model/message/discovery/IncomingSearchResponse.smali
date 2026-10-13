.class public Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;
.super Lorg/teleal/cling/model/message/IncomingDatagramMessage;
.source "IncomingSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/IncomingDatagramMessage",
        "<",
        "Lorg/teleal/cling/model/message/UpnpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/message/IncomingDatagramMessage",
            "<",
            "Lorg/teleal/cling/model/message/UpnpResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "source":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<Lorg/teleal/cling/model/message/UpnpResponse;>;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getInterfaceMacHeader()[B
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;

    .line 88
    .local v0, "header":Lorg/teleal/cling/model/message/header/InterfaceMacHeader;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 91
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocationURL()Ljava/net/URL;
    .locals 4

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/LocationHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/LocationHeader;

    .line 72
    .local v0, "header":Lorg/teleal/cling/model/message/header/LocationHeader;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/LocationHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 75
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxAge()Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/MaxAgeHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/MaxAgeHeader;

    .line 80
    .local v0, "header":Lorg/teleal/cling/model/message/header/MaxAgeHeader;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/MaxAgeHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 83
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRootDeviceUDN()Lorg/teleal/cling/model/types/UDN;
    .locals 6

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v5, Lorg/teleal/cling/model/message/header/USNRootDeviceHeader;

    invoke-virtual {v3, v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v2

    .line 56
    .local v2, "udnHeader":Lorg/teleal/cling/model/message/header/UpnpHeader;, "Lorg/teleal/cling/model/message/header/UpnpHeader<Lorg/teleal/cling/model/types/UDN;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/types/UDN;

    .line 67
    :goto_0
    return-object v3

    .line 58
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v5, Lorg/teleal/cling/model/message/header/UDNHeader;

    invoke-virtual {v3, v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/types/UDN;

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v5, Lorg/teleal/cling/model/message/header/DeviceUSNHeader;

    invoke-virtual {v3, v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    .line 62
    .local v0, "deviceTypeHeader":Lorg/teleal/cling/model/message/header/UpnpHeader;, "Lorg/teleal/cling/model/message/header/UpnpHeader<Lorg/teleal/cling/model/types/NamedDeviceType;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/types/NamedDeviceType;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/NamedDeviceType;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v5, Lorg/teleal/cling/model/message/header/ServiceUSNHeader;

    invoke-virtual {v3, v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v1

    .line 65
    .local v1, "serviceTypeHeader":Lorg/teleal/cling/model/message/header/UpnpHeader;, "Lorg/teleal/cling/model/message/header/UpnpHeader<Lorg/teleal/cling/model/types/NamedServiceType;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/types/NamedServiceType;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/NamedServiceType;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    goto :goto_0

    .line 67
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isSearchResponseMessage()Z
    .locals 5

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v1

    .line 47
    .local v1, "st":Lorg/teleal/cling/model/message/header/UpnpHeader;
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v2

    .line 48
    .local v2, "usn":Lorg/teleal/cling/model/message/header/UpnpHeader;
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    .line 49
    .local v0, "ext":Lorg/teleal/cling/model/message/header/UpnpHeader;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
