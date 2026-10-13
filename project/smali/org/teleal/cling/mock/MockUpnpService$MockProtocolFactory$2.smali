.class Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory$2;
.super Lorg/teleal/cling/protocol/async/SendingSearch;
.source "MockUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;->createSendingSearch(Lorg/teleal/cling/model/message/header/UpnpHeader;I)Lorg/teleal/cling/protocol/async/SendingSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;


# direct methods
.method constructor <init>(Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/header/UpnpHeader;I)V
    .locals 0
    .param p2, "$anonymous0"    # Lorg/teleal/cling/UpnpService;
    .param p3, "$anonymous1"    # Lorg/teleal/cling/model/message/header/UpnpHeader;
    .param p4, "$anonymous2"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory$2;->this$1:Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;

    .line 202
    invoke-direct {p0, p2, p3, p4}, Lorg/teleal/cling/protocol/async/SendingSearch;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/header/UpnpHeader;I)V

    return-void
.end method


# virtual methods
.method public getBulkIntervalMilliseconds()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method
