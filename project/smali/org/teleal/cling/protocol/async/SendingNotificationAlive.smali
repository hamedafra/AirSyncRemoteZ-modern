.class public Lorg/teleal/cling/protocol/async/SendingNotificationAlive;
.super Lorg/teleal/cling/protocol/async/SendingNotification;
.source "SendingNotificationAlive.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/teleal/cling/protocol/async/SendingNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/async/SendingNotificationAlive;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 0
    .param p1, "upnpService"    # Lorg/teleal/cling/UpnpService;
    .param p2, "device"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/protocol/async/SendingNotification;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/meta/LocalDevice;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lorg/teleal/cling/protocol/async/SendingNotificationAlive;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending alive messages ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotificationAlive;->getBulkRepeat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times) for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingNotificationAlive;->getDevice()Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 42
    invoke-super {p0}, Lorg/teleal/cling/protocol/async/SendingNotification;->execute()V

    .line 43
    return-void
.end method

.method protected getNotificationSubtype()Lorg/teleal/cling/model/types/NotificationSubtype;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/teleal/cling/model/types/NotificationSubtype;->ALIVE:Lorg/teleal/cling/model/types/NotificationSubtype;

    return-object v0
.end method
