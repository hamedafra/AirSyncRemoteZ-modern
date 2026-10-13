.class public Lorg/teleal/cling/support/shared/LogCategories;
.super Ljava/util/ArrayList;
.source "LogCategories.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/teleal/common/swingfwk/logging/LogCategory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 31
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    new-instance v0, Lorg/teleal/common/swingfwk/logging/LogCategory;

    const-string v1, "Network"

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 35
    new-instance v3, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 36
    const-string v4, "UDP communication"

    .line 37
    new-array v5, v12, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 38
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/transport/spi/DatagramIO;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v10

    .line 39
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/transport/spi/MulticastReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v11

    .line 35
    invoke-direct {v3, v4, v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v10

    .line 43
    new-instance v3, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 44
    const-string v4, "UDP datagram processing and content"

    .line 45
    new-array v5, v11, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 46
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/transport/spi/DatagramProcessor;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v10

    .line 43
    invoke-direct {v3, v4, v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v11

    .line 50
    new-instance v3, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 51
    const-string v4, "TCP communication"

    .line 52
    new-array v5, v13, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 53
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/transport/spi/UpnpStream;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v10

    .line 54
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/transport/spi/StreamServer;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v11

    .line 55
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/transport/spi/StreamClient;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v12

    .line 50
    invoke-direct {v3, v4, v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v12

    .line 59
    new-instance v3, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 60
    const-string v4, "SOAP action message processing and content"

    .line 61
    new-array v5, v11, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 62
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/transport/spi/SOAPActionProcessor;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v10

    .line 59
    invoke-direct {v3, v4, v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v13

    .line 66
    new-instance v3, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 67
    const-string v4, "GENA event message processing and content"

    .line 68
    new-array v5, v11, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 69
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/transport/spi/GENAEventProcessor;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v10

    .line 66
    invoke-direct {v3, v4, v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v14

    const/4 v3, 0x5

    .line 73
    new-instance v4, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 74
    const-string v5, "HTTP header processing"

    .line 75
    new-array v6, v11, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 76
    new-instance v7, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v8, Lorg/teleal/cling/model/message/UpnpHeaders;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v7, v8, v9}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v7, v6, v10

    .line 73
    invoke-direct {v4, v5, v6}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/swingfwk/logging/LogCategory;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$Group;)V

    .line 33
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/shared/LogCategories;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lorg/teleal/common/swingfwk/logging/LogCategory;

    const-string v1, "UPnP Protocol"

    new-array v2, v14, [Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 84
    new-instance v3, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 85
    const-string v4, "Discovery (Notification & Search)"

    .line 86
    new-array v5, v12, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 87
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/protocol/ProtocolFactory;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v10

    .line 88
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-string v7, "org.teleal.cling.protocol.async"

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v11

    .line 84
    invoke-direct {v3, v4, v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v10

    .line 92
    new-instance v3, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 93
    const-string v4, "Description"

    .line 94
    const/4 v5, 0x5

    new-array v5, v5, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 95
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/protocol/ProtocolFactory;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v10

    .line 96
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/protocol/RetrieveRemoteDescriptors;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v11

    .line 97
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/protocol/sync/ReceivingRetrieval;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v12

    .line 98
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/binding/xml/DeviceDescriptorBinder;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v13

    .line 99
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/binding/xml/ServiceDescriptorBinder;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v14

    .line 92
    invoke-direct {v3, v4, v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v11

    .line 103
    new-instance v3, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 104
    const-string v4, "Control"

    .line 105
    new-array v5, v13, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 106
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/protocol/ProtocolFactory;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v10

    .line 107
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/protocol/sync/ReceivingAction;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v11

    .line 108
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/protocol/sync/SendingAction;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v12

    .line 103
    invoke-direct {v3, v4, v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v12

    .line 112
    new-instance v3, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 113
    const-string v4, "GENA "

    .line 114
    const/16 v5, 0x9

    new-array v5, v5, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 115
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-string v7, "org.teleal.cling.model.gena"

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v10

    .line 116
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/protocol/ProtocolFactory;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v11

    .line 117
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/protocol/sync/ReceivingEvent;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v12

    .line 118
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/protocol/sync/ReceivingSubscribe;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v13

    .line 119
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/protocol/sync/ReceivingUnsubscribe;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v14

    const/4 v6, 0x5

    .line 120
    new-instance v7, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v8, Lorg/teleal/cling/protocol/sync/SendingEvent;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v7, v8, v9}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 121
    new-instance v7, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v8, Lorg/teleal/cling/protocol/sync/SendingSubscribe;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v7, v8, v9}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 122
    new-instance v7, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v8, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v7, v8, v9}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 123
    new-instance v7, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v8, Lorg/teleal/cling/protocol/sync/SendingRenewal;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v7, v8, v9}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v7, v5, v6

    .line 112
    invoke-direct {v3, v4, v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v13

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/swingfwk/logging/LogCategory;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$Group;)V

    .line 82
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/shared/LogCategories;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v0, Lorg/teleal/common/swingfwk/logging/LogCategory;

    const-string v1, "Core"

    new-array v2, v14, [Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 130
    new-instance v3, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 131
    const-string v4, "Router"

    .line 132
    new-array v5, v11, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 133
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/transport/Router;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v10

    .line 130
    invoke-direct {v3, v4, v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v10

    .line 137
    new-instance v3, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 138
    const-string v4, "Registry"

    .line 139
    new-array v5, v11, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 140
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/registry/Registry;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v10

    .line 137
    invoke-direct {v3, v4, v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v11

    .line 144
    new-instance v3, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 145
    const-string v4, "Local service binding & invocation"

    .line 146
    const/4 v5, 0x5

    new-array v5, v5, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 147
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-string v7, "org.teleal.cling.binding.annotations"

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v10

    .line 148
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/model/meta/LocalService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v11

    .line 149
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-string v7, "org.teleal.cling.model.action"

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v12

    .line 150
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-string v7, "org.teleal.cling.model.state"

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v13

    .line 151
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-class v7, Lorg/teleal/cling/model/DefaultServiceManager;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v14

    .line 144
    invoke-direct {v3, v4, v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v12

    .line 155
    new-instance v3, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;

    .line 156
    const-string v4, "Control Point interaction"

    .line 157
    new-array v5, v11, [Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    .line 158
    new-instance v6, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;

    const-string v7, "org.teleal.cling.controlpoint"

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {v6, v7, v8}, Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    aput-object v6, v5, v10

    .line 155
    invoke-direct {v3, v4, v5}, Lorg/teleal/common/swingfwk/logging/LogCategory$Group;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$LoggerLevel;)V

    aput-object v3, v2, v13

    invoke-direct {v0, v1, v2}, Lorg/teleal/common/swingfwk/logging/LogCategory;-><init>(Ljava/lang/String;[Lorg/teleal/common/swingfwk/logging/LogCategory$Group;)V

    .line 128
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/shared/LogCategories;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method
