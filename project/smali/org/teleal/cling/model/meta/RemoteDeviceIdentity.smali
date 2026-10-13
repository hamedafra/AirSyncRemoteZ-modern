.class public Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
.super Lorg/teleal/cling/model/meta/DeviceIdentity;
.source "RemoteDeviceIdentity.java"


# instance fields
.field private final descriptorURL:Ljava/net/URL;

.field private final discoveredOnLocalAddress:Ljava/net/InetAddress;

.field private final interfaceMacAddress:[B


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;)V
    .locals 6
    .param p1, "notificationRequest"    # Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;

    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getUDN()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getMaxAge()Ljava/lang/Integer;

    move-result-object v2

    .line 66
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getLocationURL()Ljava/net/URL;

    move-result-object v3

    .line 67
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getInterfaceMacHeader()[B

    move-result-object v4

    .line 68
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/discovery/IncomingNotificationRequest;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;Ljava/net/URL;[BLjava/net/InetAddress;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;)V
    .locals 6
    .param p1, "searchResponse"    # Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;

    .prologue
    .line 73
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getRootDeviceUDN()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    .line 74
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getMaxAge()Ljava/lang/Integer;

    move-result-object v2

    .line 75
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getLocationURL()Ljava/net/URL;

    move-result-object v3

    .line 76
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getInterfaceMacHeader()[B

    move-result-object v4

    .line 77
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/discovery/IncomingSearchResponse;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;Ljava/net/URL;[BLjava/net/InetAddress;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;Ljava/net/URL;[BLjava/net/InetAddress;)V
    .locals 0
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "maxAgeSeconds"    # Ljava/lang/Integer;
    .param p3, "descriptorURL"    # Ljava/net/URL;
    .param p4, "interfaceMacAddress"    # [B
    .param p5, "discoveredOnLocalAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/model/meta/DeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;)V

    .line 58
    iput-object p3, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->descriptorURL:Ljava/net/URL;

    .line 59
    iput-object p4, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->interfaceMacAddress:[B

    .line 60
    iput-object p5, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->discoveredOnLocalAddress:Ljava/net/InetAddress;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)V
    .locals 6
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "template"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    .prologue
    .line 53
    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getInterfaceMacAddress()[B

    move-result-object v4

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDiscoveredOnLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;Ljava/lang/Integer;Ljava/net/URL;[BLjava/net/InetAddress;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getDescriptorURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->descriptorURL:Ljava/net/URL;

    return-object v0
.end method

.method public getDiscoveredOnLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->discoveredOnLocalAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getInterfaceMacAddress()[B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->interfaceMacAddress:[B

    return-object v0
.end method

.method public getWakeOnLANBytes()[B
    .locals 5

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getInterfaceMacAddress()[B

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 102
    :cond_0
    return-object v0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getInterfaceMacAddress()[B

    move-result-object v2

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x6

    new-array v0, v2, [B

    .line 96
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v1, v2, :cond_2

    .line 99
    const/4 v1, 0x6

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 100
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getInterfaceMacAddress()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getInterfaceMacAddress()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getInterfaceMacAddress()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 97
    :cond_2
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    sget-boolean v0, Lorg/teleal/cling/model/ModelUtil;->ANDROID_RUNTIME:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(RemoteDeviceIdentity) UDN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") UDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Descriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
