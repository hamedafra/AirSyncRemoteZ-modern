.class Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory$1;
.super Lorg/teleal/cling/protocol/async/SendingNotificationAlive;
.source "MockUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;->createSendingNotificationAlive(Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/protocol/async/SendingNotificationAlive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;


# direct methods
.method constructor <init>(Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0
    .param p2, "$anonymous0"    # Lorg/teleal/cling/UpnpService;
    .param p3, "$anonymous1"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory$1;->this$1:Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;

    .line 192
    invoke-direct {p0, p2, p3}, Lorg/teleal/cling/protocol/async/SendingNotificationAlive;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/LocalDevice;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory$1;->this$1:Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;

    invoke-static {v0}, Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;->access$0(Lorg/teleal/cling/mock/MockUpnpService$MockProtocolFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/teleal/cling/protocol/async/SendingNotificationAlive;->execute()V

    .line 196
    :cond_0
    return-void
.end method
