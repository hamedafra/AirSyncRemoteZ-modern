.class public abstract Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;
.super Lorg/teleal/cling/model/message/OutgoingDatagramMessage;
.source "OutgoingNotificationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/OutgoingDatagramMessage",
        "<",
        "Lorg/teleal/cling/model/message/UpnpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private type:Lorg/teleal/cling/model/types/NotificationSubtype;


# direct methods
.method protected constructor <init>(Lorg/teleal/cling/model/Location;Lorg/teleal/cling/model/meta/LocalDevice;Lorg/teleal/cling/model/types/NotificationSubtype;)V
    .locals 4
    .param p1, "location"    # Lorg/teleal/cling/model/Location;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .param p3, "type"    # Lorg/teleal/cling/model/types/NotificationSubtype;

    .prologue
    .line 42
    .line 43
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->NOTIFY:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;)V

    .line 44
    const-string v1, "239.255.255.250"

    invoke-static {v1}, Lorg/teleal/cling/model/ModelUtil;->getInetAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 45
    const/16 v2, 0x76c

    invoke-direct {p0, v0, v1, v2}, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Ljava/net/InetAddress;I)V

    .line 48
    iput-object p3, p0, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;->type:Lorg/teleal/cling/model/types/NotificationSubtype;

    .line 50
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAX_AGE:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/MaxAgeHeader;

    invoke-virtual {p2}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/MaxAgeHeader;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 51
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->LOCATION:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/LocationHeader;

    invoke-virtual {p1}, Lorg/teleal/cling/model/Location;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/LocationHeader;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 53
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->SERVER:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/ServerHeader;

    invoke-direct {v2}, Lorg/teleal/cling/model/message/header/ServerHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 54
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/HostHeader;

    invoke-direct {v2}, Lorg/teleal/cling/model/message/header/HostHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 55
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->NTS:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/NTSHeader;

    invoke-direct {v2, p3}, Lorg/teleal/cling/model/message/header/NTSHeader;-><init>(Lorg/teleal/cling/model/types/NotificationSubtype;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getType()Lorg/teleal/cling/model/types/NotificationSubtype;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/teleal/cling/model/message/discovery/OutgoingNotificationRequest;->type:Lorg/teleal/cling/model/types/NotificationSubtype;

    return-object v0
.end method
