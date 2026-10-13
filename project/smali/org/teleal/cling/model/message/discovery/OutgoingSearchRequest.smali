.class public Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest;
.super Lorg/teleal/cling/model/message/OutgoingDatagramMessage;
.source "OutgoingSearchRequest.java"


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
.field private searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/message/header/UpnpHeader;I)V
    .locals 4
    .param p1, "searchTarget"    # Lorg/teleal/cling/model/message/header/UpnpHeader;
    .param p2, "mxSeconds"    # I

    .prologue
    .line 38
    .line 39
    new-instance v0, Lorg/teleal/cling/model/message/UpnpRequest;

    sget-object v1, Lorg/teleal/cling/model/message/UpnpRequest$Method;->MSEARCH:Lorg/teleal/cling/model/message/UpnpRequest$Method;

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/message/UpnpRequest;-><init>(Lorg/teleal/cling/model/message/UpnpRequest$Method;)V

    .line 40
    const-string v1, "239.255.255.250"

    invoke-static {v1}, Lorg/teleal/cling/model/ModelUtil;->getInetAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 41
    const/16 v2, 0x76c

    invoke-direct {p0, v0, v1, v2}, Lorg/teleal/cling/model/message/OutgoingDatagramMessage;-><init>(Lorg/teleal/cling/model/message/UpnpOperation;Ljava/net/InetAddress;I)V

    .line 44
    iput-object p1, p0, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest;->searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;

    .line 46
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/MANHeader;

    sget-object v3, Lorg/teleal/cling/model/types/NotificationSubtype;->DISCOVER:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v3}, Lorg/teleal/cling/model/types/NotificationSubtype;->getHeaderString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/MANHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 47
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MX:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/MXHeader;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/message/header/MXHeader;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 48
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v1, p1}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 49
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->HOST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    new-instance v2, Lorg/teleal/cling/model/message/header/HostHeader;

    invoke-direct {v2}, Lorg/teleal/cling/model/message/header/HostHeader;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/message/UpnpHeaders;->add(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getSearchTarget()Lorg/teleal/cling/model/message/header/UpnpHeader;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest;->searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;

    return-object v0
.end method
