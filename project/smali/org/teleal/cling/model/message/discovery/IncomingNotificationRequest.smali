.class public Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;
.super Lorg/teleal/cling/model/message/IncomingDatagramMessage;
.source "IncomingNotificationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/IncomingDatagramMessage",
        "<",
        "Lorg/teleal/cling/model/message/UpnpRequest;",
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
            "Lorg/teleal/cling/model/message/UpnpRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "source":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<Lorg/teleal/cling/model/message/UpnpRequest;>;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getInterfaceMacHeader()[B
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->EXT_IFACE_MAC:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;

    .line 96
    .local v0, "header":Lorg/teleal/cling/model/message/header/InterfaceMacHeader;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/InterfaceMacHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 99
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocationURL()Ljava/net/URL;
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/LocationHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/LocationHeader;

    .line 59
    .local v0, "header":Lorg/teleal/cling/model/message/header/LocationHeader;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/LocationHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 62
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxAge()Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/MaxAgeHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/MaxAgeHeader;

    .line 88
    .local v0, "header":Lorg/teleal/cling/model/message/header/MaxAgeHeader;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/MaxAgeHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 91
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUDN()Lorg/teleal/cling/model/types/UDN;
    .locals 6

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v5, Lorg/teleal/cling/model/message/header/USNRootDeviceHeader;

    invoke-virtual {v3, v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v2

    .line 72
    .local v2, "udnHeader":Lorg/teleal/cling/model/message/header/UpnpHeader;, "Lorg/teleal/cling/model/message/header/UpnpHeader<Lorg/teleal/cling/model/types/UDN;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/types/UDN;

    .line 83
    :goto_0
    return-object v3

    .line 74
    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v5, Lorg/teleal/cling/model/message/header/UDNHeader;

    invoke-virtual {v3, v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/types/UDN;

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v5, Lorg/teleal/cling/model/message/header/DeviceUSNHeader;

    invoke-virtual {v3, v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    .line 78
    .local v0, "deviceTypeHeader":Lorg/teleal/cling/model/message/header/UpnpHeader;, "Lorg/teleal/cling/model/message/header/UpnpHeader<Lorg/teleal/cling/model/types/NamedDeviceType;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/types/NamedDeviceType;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/NamedDeviceType;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    sget-object v4, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->USN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v5, Lorg/teleal/cling/model/message/header/ServiceUSNHeader;

    invoke-virtual {v3, v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v1

    .line 81
    .local v1, "serviceTypeHeader":Lorg/teleal/cling/model/message/header/UpnpHeader;, "Lorg/teleal/cling/model/message/header/UpnpHeader<Lorg/teleal/cling/model/types/NamedServiceType;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/teleal/cling/model/message/header/UpnpHeader;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/types/NamedServiceType;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/NamedServiceType;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    goto :goto_0

    .line 83
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isAliveMessage()Z
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/NTSHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/NTSHeader;

    .line 49
    .local v0, "nts":Lorg/teleal/cling/model/message/header/NTSHeader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/NTSHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/types/NotificationSubtype;

    sget-object v2, Lorg/teleal/cling/model/types/NotificationSubtype;->ALIVE:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v1, v2}, Lorg/teleal/cling/model/types/NotificationSubtype;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isByeByeMessage()Z
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/NTSHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/NTSHeader;

    .line 54
    .local v0, "nts":Lorg/teleal/cling/model/message/header/NTSHeader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/NTSHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/types/NotificationSubtype;

    sget-object v2, Lorg/teleal/cling/model/types/NotificationSubtype;->BYEBYE:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v1, v2}, Lorg/teleal/cling/model/types/NotificationSubtype;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
