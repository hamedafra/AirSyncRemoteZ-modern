.class public Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;
.super Lorg/teleal/cling/protocol/ProtocolFactoryImpl;
.source "MockUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/mock/MockUpnpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockProtocolFactory"
.end annotation


# instance fields
.field private sendsAlive:Z


# direct methods
.method public constructor <init>(Lorg/teleal/cling/UpnpService;Z)V
    .locals 0
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "sendsAlive"    # Z

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lorg/teleal/cling/protocol/ProtocolFactoryImpl;-><init>(Lorg/teleal/cling/UpnpService;)V

    .line 187
    iput-boolean p2, p0, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;->sendsAlive:Z

    .line 188
    return-void
.end method

.method static synthetic access$0(Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;)Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;->sendsAlive:Z

    return v0
.end method


# virtual methods
.method public createSendingNotificationAlive(Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/protocol/async/SendingNotificationAlive;
    .locals 2
    .param p1, "localDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 192
    new-instance v0, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory$1;

    invoke-virtual {p0}, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory$1;-><init>(Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/LocalDevice;)V

    return-object v0
.end method

.method public createSendingSearch(Lorg/teleal/cling/model/message/header/UpnpHeader;I)Lorg/teleal/cling/protocol/async/SendingSearch;
    .locals 2
    .param p1, "searchTarget"    # Lorg/teleal/cling/model/message/header/UpnpHeader;
    .param p2, "mxSeconds"    # I

    .prologue
    .line 202
    new-instance v0, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory$2;

    invoke-virtual {p0}, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory$2;-><init>(Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/header/UpnpHeader;I)V

    return-object v0
.end method
