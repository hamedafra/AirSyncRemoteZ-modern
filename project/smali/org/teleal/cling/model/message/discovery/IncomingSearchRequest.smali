.class public Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;
.super Lorg/teleal/cling/model/message/IncomingDatagramMessage;
.source "IncomingSearchRequest.java"


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
    .line 33
    .local p1, "source":Lorg/teleal/cling/model/message/IncomingDatagramMessage;, "Lorg/teleal/cling/model/message/IncomingDatagramMessage<Lorg/teleal/cling/model/message/UpnpRequest;>;"
    invoke-direct {p0, p1}, Lorg/teleal/cling/model/message/IncomingDatagramMessage;-><init>(Lorg/teleal/cling/model/message/IncomingDatagramMessage;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getMX()Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MX:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/MXHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/MXHeader;

    .line 42
    .local v0, "header":Lorg/teleal/cling/model/message/header/MXHeader;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/MXHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 45
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSearchTarget()Lorg/teleal/cling/model/message/header/UpnpHeader;
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v0

    sget-object v1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {v0, v1}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    return-object v0
.end method

.method public isMANSSDPDiscover()Z
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/discovery/IncomingSearchRequest;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v1

    sget-object v2, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->MAN:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    const-class v3, Lorg/teleal/cling/model/message/header/MANHeader;

    invoke-virtual {v1, v2, v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->getFirstHeader(Lorg/teleal/cling/model/message/header/UpnpHeader$Type;Ljava/lang/Class;)Lorg/teleal/cling/model/message/header/UpnpHeader;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/message/header/MANHeader;

    .line 54
    .local v0, "header":Lorg/teleal/cling/model/message/header/MANHeader;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/cling/model/message/header/MANHeader;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lorg/teleal/cling/model/types/NotificationSubtype;->DISCOVER:Lorg/teleal/cling/model/types/NotificationSubtype;

    invoke-virtual {v2}, Lorg/teleal/cling/model/types/NotificationSubtype;->getHeaderString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
