.class public Lorg/cybergarage/upnp/ControlPoint;
.super Ljava/lang/Object;
.source "ControlPoint.java"

# interfaces
.implements Lorg/cybergarage/http/HTTPRequestListener;


# static fields
.field private static final DEFAULT_EVENTSUB_PORT:I = 0x1f7a

.field private static final DEFAULT_EVENTSUB_URI:Ljava/lang/String; = "/evetSub"

.field private static final DEFAULT_EXPIRED_DEVICE_MONITORING_INTERVAL:I = 0x3c

.field private static final DEFAULT_SSDP_PORT:I = 0x1f48


# instance fields
.field private devNodeList:Lorg/cybergarage/xml/NodeList;

.field deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

.field private deviceDisposer:Lorg/cybergarage/upnp/device/Disposer;

.field private deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

.field private deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

.field private eventListenerList:Lorg/cybergarage/util/ListenerList;

.field private eventSubURI:Ljava/lang/String;

.field private expiredDeviceMonitoringInterval:J

.field private httpPort:I

.field private httpServerList:Lorg/cybergarage/http/HTTPServerList;

.field private mutex:Lorg/cybergarage/util/Mutex;

.field private nmprMode:Z

.field private renewSubscriber:Lorg/cybergarage/upnp/control/RenewSubscriber;

.field private searchMx:I

.field private ssdpNotifySocketList:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

.field private ssdpPort:I

.field private ssdpSearchResponseSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

.field private userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 132
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->initialize()V

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 161
    const/16 v0, 0x1f48

    const/16 v1, 0x1f7a

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;-><init>(II)V

    .line 162
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "ssdpPort"    # I
    .param p2, "httpPort"    # I

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/cybergarage/upnp/ControlPoint;-><init>(II[Ljava/net/InetAddress;)V

    .line 157
    return-void
.end method

.method public constructor <init>(II[Ljava/net/InetAddress;)V
    .locals 4
    .param p1, "ssdpPort"    # I
    .param p2, "httpPort"    # I
    .param p3, "binds"    # [Ljava/net/InetAddress;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mutex:Lorg/cybergarage/util/Mutex;

    .line 189
    iput v3, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpPort:I

    .line 203
    iput v3, p0, Lorg/cybergarage/upnp/ControlPoint;->httpPort:I

    .line 233
    new-instance v0, Lorg/cybergarage/xml/NodeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/NodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    .line 529
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    .line 558
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    .line 592
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    .line 670
    const/4 v0, 0x3

    iput v0, p0, Lorg/cybergarage/upnp/ControlPoint;->searchMx:I

    .line 716
    new-instance v0, Lorg/cybergarage/http/HTTPServerList;

    invoke-direct {v0}, Lorg/cybergarage/http/HTTPServerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->httpServerList:Lorg/cybergarage/http/HTTPServerList;

    .line 752
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    .line 777
    const-string v0, "/evetSub"

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    .line 1104
    iput-object v2, p0, Lorg/cybergarage/upnp/ControlPoint;->userData:Ljava/lang/Object;

    .line 140
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    invoke-direct {v0, p3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;-><init>([Ljava/net/InetAddress;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpNotifySocketList:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    .line 141
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    invoke-direct {v0, p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;-><init>([Ljava/net/InetAddress;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpSearchResponseSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    .line 143
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->setSSDPPort(I)V

    .line 144
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/ControlPoint;->setHTTPPort(I)V

    .line 146
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ControlPoint;->setDeviceDisposer(Lorg/cybergarage/upnp/device/Disposer;)V

    .line 147
    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->setExpiredDeviceMonitoringInterval(J)V

    .line 149
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V

    .line 151
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ControlPoint;->setNMPRMode(Z)V

    .line 152
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V

    .line 153
    return-void
.end method

.method private declared-synchronized addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "locationURL"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "localAddress"    # Ljava/lang/String;

    .prologue
    .line 325
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v10, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 327
    :cond_0
    const-string v10, "LocationURL is error."

    invoke-static {v10}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    :cond_2
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 334
    .local v1, "locationUrl":Ljava/net/URL;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v3

    .line 335
    .local v3, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v3, v1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 336
    .local v6, "rootNode":Lorg/cybergarage/xml/Node;
    invoke-direct {p0, v6}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v5

    .line 337
    .local v5, "rootDev":Lorg/cybergarage/upnp/Device;
    if-eqz v5, :cond_1

    .line 339
    const-string v10, "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    invoke-virtual {v5, v10}, Lorg/cybergarage/upnp/Device;->isDeviceType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 346
    invoke-direct {p0, p1, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->getDefaultSsdp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v7

    .line 349
    .local v7, "ssdpPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, "usn":Ljava/lang/String;
    invoke-static {v9}, Lorg/cybergarage/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 351
    .local v8, "udn":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 352
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_3

    .line 354
    invoke-virtual {v0, v7}, Lorg/cybergarage/upnp/Device;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 355
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->performRefreshDeviceListener(Lorg/cybergarage/upnp/Device;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 363
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v1    # "locationUrl":Ljava/net/URL;
    .end local v3    # "parser":Lorg/cybergarage/xml/Parser;
    .end local v5    # "rootDev":Lorg/cybergarage/upnp/Device;
    .end local v6    # "rootNode":Lorg/cybergarage/xml/Node;
    .end local v7    # "ssdpPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .end local v8    # "udn":Ljava/lang/String;
    .end local v9    # "usn":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 365
    .local v2, "me":Ljava/net/MalformedURLException;
    :try_start_2
    invoke-static {p1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    .line 366
    invoke-static {v2}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 325
    .end local v2    # "me":Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 359
    .restart local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .restart local v1    # "locationUrl":Ljava/net/URL;
    .restart local v3    # "parser":Lorg/cybergarage/xml/Parser;
    .restart local v5    # "rootDev":Lorg/cybergarage/upnp/Device;
    .restart local v6    # "rootNode":Lorg/cybergarage/xml/Node;
    .restart local v7    # "ssdpPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .restart local v8    # "udn":Ljava/lang/String;
    .restart local v9    # "usn":Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v5, v7}, Lorg/cybergarage/upnp/Device;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 360
    invoke-direct {p0, v6}, Lorg/cybergarage/upnp/ControlPoint;->addDevice(Lorg/cybergarage/xml/Node;)V

    .line 361
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/ControlPoint;->performAddDeviceListener(Lorg/cybergarage/upnp/Device;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 368
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v1    # "locationUrl":Ljava/net/URL;
    .end local v3    # "parser":Lorg/cybergarage/xml/Parser;
    .end local v5    # "rootDev":Lorg/cybergarage/upnp/Device;
    .end local v6    # "rootNode":Lorg/cybergarage/xml/Node;
    .end local v7    # "ssdpPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .end local v8    # "udn":Ljava/lang/String;
    .end local v9    # "usn":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 370
    .local v4, "pe":Lorg/cybergarage/xml/ParserException;
    :try_start_4
    invoke-static {p1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    .line 371
    invoke-static {v4}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized addDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 14
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isHiMultiScreenDevice()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_1

    .line 315
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 259
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "locationURL":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "RemoteAddress":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 264
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Wrong download URL: locationURL="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", RemoteAddress="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 271
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v11

    .line 272
    .local v11, "usn":Ljava/lang/String;
    invoke-static {v11}, Lorg/cybergarage/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 273
    .local v10, "udn":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 274
    .local v1, "dev":Lorg/cybergarage/upnp/Device;
    if-eqz v1, :cond_3

    .line 275
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 276
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/ControlPoint;->performRefreshDeviceListener(Lorg/cybergarage/upnp/Device;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 247
    .end local v0    # "RemoteAddress":Ljava/lang/String;
    .end local v1    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v3    # "locationURL":Ljava/lang/String;
    .end local v10    # "udn":Ljava/lang/String;
    .end local v11    # "usn":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 280
    .restart local v0    # "RemoteAddress":Ljava/lang/String;
    .restart local v1    # "dev":Lorg/cybergarage/upnp/Device;
    .restart local v3    # "locationURL":Ljava/lang/String;
    .restart local v10    # "udn":Ljava/lang/String;
    .restart local v11    # "usn":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 282
    .local v2, "location":Ljava/lang/String;
    :try_start_3
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 283
    .local v4, "locationUrl":Ljava/net/URL;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v6

    .line 284
    .local v6, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v6, v4}, Lorg/cybergarage/xml/Parser;->parse(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v9

    .line 287
    .local v9, "rootNode":Lorg/cybergarage/xml/Node;
    invoke-direct {p0, v9}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v8

    .line 288
    .local v8, "rootDev":Lorg/cybergarage/upnp/Device;
    if-eqz v8, :cond_0

    .line 290
    const-string v12, "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    invoke-virtual {v8, v12}, Lorg/cybergarage/upnp/Device;->isDeviceType(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 295
    invoke-virtual {v8, p1}, Lorg/cybergarage/upnp/Device;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 296
    invoke-direct {p0, v9}, Lorg/cybergarage/upnp/ControlPoint;->addDevice(Lorg/cybergarage/xml/Node;)V

    .line 305
    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/ControlPoint;->performAddDeviceListener(Lorg/cybergarage/upnp/Device;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 307
    .end local v4    # "locationUrl":Ljava/net/URL;
    .end local v6    # "parser":Lorg/cybergarage/xml/Parser;
    .end local v8    # "rootDev":Lorg/cybergarage/upnp/Device;
    .end local v9    # "rootNode":Lorg/cybergarage/xml/Node;
    :catch_0
    move-exception v5

    .line 308
    .local v5, "me":Ljava/net/MalformedURLException;
    :try_start_4
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    .line 309
    invoke-static {v5}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0

    .line 311
    .end local v5    # "me":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v7

    .line 312
    .local v7, "pe":Lorg/cybergarage/xml/ParserException;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    .line 313
    invoke-static {v7}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private addDevice(Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "rootNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 238
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/NodeList;->lock()V

    .line 239
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/NodeList;->unlock()V

    .line 242
    return-void
.end method

.method private getDefaultSsdp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 6
    .param p1, "locationURL"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "localAddress"    # Ljava/lang/String;

    .prologue
    .line 1141
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, "NOTIFY * HTTP/1.1\n"

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v1, "ssdpContent":Ljava/lang/StringBuffer;
    const-string v4, "HOST: 239.255.255.250:1900\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1143
    const-string v4, "CACHE-CONTROL: max-age=1800\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1145
    const-string v4, "LOCATION: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1146
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1147
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1148
    const-string v4, "OPT: \"http://schemas.upnp.org/upnp/1/0/\"; ns=01\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1149
    const-string v4, "01-NLS: c663375c-1dd1-11b2-b12f-c5eca95ebebe\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1150
    const-string v4, "NT: urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1151
    const-string v4, "NTS: ssdp:alive\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1152
    const-string v4, "SERVER: Linux/3.10.0_s40 UPnP/1.0 Portable SDK for UPnP devices/1.6.12\n"

    .line 1153
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1154
    const-string v4, "X-User-Agent: redsonic\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1156
    const-string v4, "USN: uuid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1157
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1158
    const-string v4, "::urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1159
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, "packetData":Ljava/lang/String;
    const/16 v4, 0x400

    new-array v3, v4, [B

    .line 1163
    .local v3, "ssdvRecvBuf":[B
    new-instance v2, Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    array-length v4, v3

    invoke-direct {v2, v3, v4}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;-><init>([BI)V

    .line 1164
    .local v2, "ssdpPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    invoke-virtual {v2, p3}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setLocalAddress(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/DatagramPacket;->setData([B)V

    .line 1166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V

    .line 1167
    return-object v2
.end method

.method private getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;
    .locals 3
    .param p1, "rootNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    const/4 v1, 0x0

    .line 377
    if-nez p1, :cond_0

    .line 389
    :goto_0
    return-object v1

    .line 380
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->lock()V

    .line 381
    const-string v2, "device"

    invoke-virtual {p1, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 382
    .local v0, "devNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 384
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->unlock()V

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/xml/Node;->unlock()V

    .line 389
    new-instance v1, Lorg/cybergarage/upnp/Device;

    invoke-direct {v1, p1, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method private getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 791
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getEventSubURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/cybergarage/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->httpServerList:Lorg/cybergarage/http/HTTPServerList;

    return-object v0
.end method

.method private getSSDPNotifySocketList()Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpNotifySocketList:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    return-object v0
.end method

.method private getSSDPSearchResponseSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpSearchResponseSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    return-object v0
.end method

.method private removeDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 3
    .param p1, "packet"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 472
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v2

    if-nez v2, :cond_0

    .line 481
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "usn":Ljava/lang/String;
    invoke-static {v1}, Lorg/cybergarage/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "udn":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->lock()V

    .line 478
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->unlock()V

    goto :goto_0
.end method

.method private removeDevice(Lorg/cybergarage/xml/Node;)V
    .locals 2
    .param p1, "rootNode"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 447
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->performRemoveDeviceListener(Lorg/cybergarage/upnp/Device;)V

    .line 450
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/NodeList;->remove(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method


# virtual methods
.method public addDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .prologue
    .line 596
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 597
    return-void
.end method

.method public addEventListener(Lorg/cybergarage/upnp/event/EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/event/EventListener;

    .prologue
    .line 756
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 757
    return-void
.end method

.method public addNotifyListener(Lorg/cybergarage/upnp/device/NotifyListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/NotifyListener;

    .prologue
    .line 533
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 534
    return-void
.end method

.method public addSearchResponseListener(Lorg/cybergarage/upnp/device/SearchResponseListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/SearchResponseListener;

    .prologue
    .line 562
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 563
    return-void
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->stop()Z

    .line 167
    return-void
.end method

.method public getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v3

    .line 414
    .local v3, "nRoots":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 416
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5, v2}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v4

    .line 417
    .local v4, "rootNode":Lorg/cybergarage/xml/Node;
    invoke-direct {p0, v4}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 418
    .local v1, "dev":Lorg/cybergarage/upnp/Device;
    if-nez v1, :cond_1

    .line 414
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 432
    .end local v1    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v4    # "rootNode":Lorg/cybergarage/xml/Node;
    :goto_1
    return-object v1

    .line 425
    .restart local v1    # "dev":Lorg/cybergarage/upnp/Device;
    .restart local v4    # "rootNode":Lorg/cybergarage/xml/Node;
    :cond_2
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 426
    .local v0, "cdev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 428
    goto :goto_1

    .line 432
    .end local v0    # "cdev":Lorg/cybergarage/upnp/Device;
    .end local v1    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v4    # "rootNode":Lorg/cybergarage/xml/Node;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDeviceDisposer()Lorg/cybergarage/upnp/device/Disposer;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceDisposer:Lorg/cybergarage/upnp/device/Disposer;

    return-object v0
.end method

.method public getDeviceList()Lorg/cybergarage/upnp/DeviceList;
    .locals 6

    .prologue
    .line 394
    new-instance v1, Lorg/cybergarage/upnp/DeviceList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/DeviceList;-><init>()V

    .line 396
    .local v1, "devList":Lorg/cybergarage/upnp/DeviceList;
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Lorg/cybergarage/xml/NodeList;->lock()V

    .line 397
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v3

    .line 398
    .local v3, "nRoots":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 399
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5, v2}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v4

    .line 400
    .local v4, "rootNode":Lorg/cybergarage/xml/Node;
    invoke-direct {p0, v4}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 401
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    if-nez v0, :cond_0

    .line 398
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 405
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v4    # "rootNode":Lorg/cybergarage/xml/Node;
    :cond_1
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Lorg/cybergarage/xml/NodeList;->unlock()V

    .line 407
    return-object v1
.end method

.method public getEventSubURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDeviceMonitoringInterval()J
    .locals 2

    .prologue
    .line 512
    iget-wide v0, p0, Lorg/cybergarage/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    return-wide v0
.end method

.method public getHTTPPort()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lorg/cybergarage/upnp/ControlPoint;->httpPort:I

    return v0
.end method

.method public getRenewSubscriber()Lorg/cybergarage/upnp/control/RenewSubscriber;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriber:Lorg/cybergarage/upnp/control/RenewSubscriber;

    return-object v0
.end method

.method public getSSDPPort()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpPort:I

    return v0
.end method

.method public getSearchMx()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lorg/cybergarage/upnp/ControlPoint;->searchMx:I

    return v0
.end method

.method public getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 901
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 902
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 903
    .local v1, "devCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 904
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 905
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 906
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    if-eqz v4, :cond_0

    .line 909
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :goto_1
    return-object v4

    .line 903
    .restart local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 909
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasDevice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 12
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    const/4 v11, 0x1

    .line 725
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v0

    if-ne v0, v11, :cond_0

    .line 726
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->print()V

    .line 729
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isNotifyRequest()Z

    move-result v0

    if-ne v0, v11, :cond_2

    .line 730
    new-instance v7, Lorg/cybergarage/upnp/event/NotifyRequest;

    invoke-direct {v7, p1}, Lorg/cybergarage/upnp/event/NotifyRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    .line 731
    .local v7, "notifyReq":Lorg/cybergarage/upnp/event/NotifyRequest;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/event/NotifyRequest;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "uuid":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/event/NotifyRequest;->getSEQ()J

    move-result-wide v2

    .line 733
    .local v2, "seq":J
    invoke-virtual {v7}, Lorg/cybergarage/upnp/event/NotifyRequest;->getPropertyList()Lorg/cybergarage/upnp/event/PropertyList;

    move-result-object v10

    .line 734
    .local v10, "props":Lorg/cybergarage/upnp/event/PropertyList;
    invoke-virtual {v10}, Lorg/cybergarage/upnp/event/PropertyList;->size()I

    move-result v9

    .line 735
    .local v9, "propCnt":I
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_0
    if-ge v6, v9, :cond_1

    .line 736
    invoke-virtual {v10, v6}, Lorg/cybergarage/upnp/event/PropertyList;->getProperty(I)Lorg/cybergarage/upnp/event/Property;

    move-result-object v8

    .line 737
    .local v8, "prop":Lorg/cybergarage/upnp/event/Property;
    invoke-virtual {v8}, Lorg/cybergarage/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v4

    .line 738
    .local v4, "varName":Ljava/lang/String;
    invoke-virtual {v8}, Lorg/cybergarage/upnp/event/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    .local v5, "varValue":Ljava/lang/String;
    move-object v0, p0

    .line 739
    invoke-virtual/range {v0 .. v5}, Lorg/cybergarage/upnp/ControlPoint;->performEventListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 735
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 741
    .end local v4    # "varName":Ljava/lang/String;
    .end local v5    # "varValue":Ljava/lang/String;
    .end local v8    # "prop":Lorg/cybergarage/upnp/event/Property;
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnOK()Z

    .line 746
    .end local v1    # "uuid":Ljava/lang/String;
    .end local v2    # "seq":J
    .end local v6    # "n":I
    .end local v7    # "notifyReq":Lorg/cybergarage/upnp/event/NotifyRequest;
    .end local v9    # "propCnt":I
    .end local v10    # "props":Lorg/cybergarage/upnp/event/PropertyList;
    :goto_1
    return-void

    .line 745
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_1
.end method

.method public isNMPRMode()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lorg/cybergarage/upnp/ControlPoint;->nmprMode:Z

    return v0
.end method

.method public isSubscribed(Lorg/cybergarage/upnp/Service;)Z
    .locals 1
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 850
    if-nez p1, :cond_0

    .line 851
    const/4 v0, 0x0

    .line 852
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->isSubscribed()Z

    move-result v0

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 178
    return-void
.end method

.method public notifyReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 2
    .param p1, "packet"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    const/4 v1, 0x1

    .line 638
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isHiMultiScreenDevice()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 640
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isAlive()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 642
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->addDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 648
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->performNotifyListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 652
    :cond_1
    return-void

    .line 644
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 646
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    goto :goto_0
.end method

.method public performAddDeviceListener(Lorg/cybergarage/upnp/Device;)V
    .locals 4
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 606
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 607
    .local v1, "listenerSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 608
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3, v2}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .line 609
    .local v0, "listener":Lorg/cybergarage/upnp/device/DeviceChangeListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/DeviceChangeListener;->deviceAdded(Lorg/cybergarage/upnp/Device;)V

    .line 607
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 611
    .end local v0    # "listener":Lorg/cybergarage/upnp/device/DeviceChangeListener;
    :cond_0
    return-void
.end method

.method public performEventListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "seq"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 766
    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v1}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v6

    .line 767
    .local v6, "listenerSize":I
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 768
    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v1, v7}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/event/EventListener;

    .local v0, "listener":Lorg/cybergarage/upnp/event/EventListener;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 769
    invoke-interface/range {v0 .. v5}, Lorg/cybergarage/upnp/event/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 767
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 771
    .end local v0    # "listener":Lorg/cybergarage/upnp/event/EventListener;
    :cond_0
    return-void
.end method

.method public performNotifyListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 5
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 543
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v4}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v2

    .line 544
    .local v2, "listenerSize":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 545
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v4, v3}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/device/NotifyListener;

    .line 547
    .local v1, "listener":Lorg/cybergarage/upnp/device/NotifyListener;
    :try_start_0
    invoke-interface {v1, p1}, Lorg/cybergarage/upnp/device/NotifyListener;->deviceNotifyReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "NotifyListener returned an error:"

    invoke-static {v4, v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 552
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lorg/cybergarage/upnp/device/NotifyListener;
    :cond_0
    return-void
.end method

.method public performRefreshDeviceListener(Lorg/cybergarage/upnp/Device;)V
    .locals 4
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 624
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 625
    .local v1, "listenerSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 626
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3, v2}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .line 627
    .local v0, "listener":Lorg/cybergarage/upnp/device/DeviceChangeListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/DeviceChangeListener;->deviceRefreshed(Lorg/cybergarage/upnp/Device;)V

    .line 625
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 629
    .end local v0    # "listener":Lorg/cybergarage/upnp/device/DeviceChangeListener;
    :cond_0
    return-void
.end method

.method public performRemoveDeviceListener(Lorg/cybergarage/upnp/Device;)V
    .locals 4
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 615
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v1

    .line 616
    .local v1, "listenerSize":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 617
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3, v2}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .line 618
    .local v0, "listener":Lorg/cybergarage/upnp/device/DeviceChangeListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/DeviceChangeListener;->deviceRemoved(Lorg/cybergarage/upnp/Device;)V

    .line 616
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 620
    .end local v0    # "listener":Lorg/cybergarage/upnp/device/DeviceChangeListener;
    :cond_0
    return-void
.end method

.method public performSearchResponseListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 5
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 572
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v4}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v2

    .line 573
    .local v2, "listenerSize":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 574
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v4, v3}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/device/SearchResponseListener;

    .line 576
    .local v1, "listener":Lorg/cybergarage/upnp/device/SearchResponseListener;
    :try_start_0
    invoke-interface {v1, p1}, Lorg/cybergarage/upnp/device/SearchResponseListener;->deviceSearchResponseReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SearchResponseListener returned an error:"

    invoke-static {v4, v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lorg/cybergarage/upnp/device/SearchResponseListener;
    :cond_0
    return-void
.end method

.method public print()V
    .locals 8

    .prologue
    .line 1122
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1123
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1124
    .local v1, "devCnt":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1125
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1126
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1127
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getElapsedTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1129
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    :cond_0
    return-void
.end method

.method protected removeDevice(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v1}, Lorg/cybergarage/xml/NodeList;->lock()V

    .line 464
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 465
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Lorg/cybergarage/upnp/Device;)V

    .line 466
    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v1}, Lorg/cybergarage/xml/NodeList;->unlock()V

    .line 468
    return-void
.end method

.method protected removeDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public removeDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .prologue
    .line 601
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 602
    return-void
.end method

.method public removeEventListener(Lorg/cybergarage/upnp/event/EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/event/EventListener;

    .prologue
    .line 761
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 762
    return-void
.end method

.method public removeExpiredDevices()V
    .locals 6

    .prologue
    .line 492
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 493
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 494
    .local v1, "devCnt":I
    new-array v0, v1, [Lorg/cybergarage/upnp/Device;

    .line 495
    .local v0, "dev":[Lorg/cybergarage/upnp/Device;
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 496
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v4

    aput-object v4, v0, v3

    .line 495
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 498
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Device;->isExpired()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expired device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 500
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Lorg/cybergarage/upnp/Device;)V

    .line 497
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 503
    :cond_2
    return-void
.end method

.method public removeNotifyListener(Lorg/cybergarage/upnp/device/NotifyListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/NotifyListener;

    .prologue
    .line 538
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 539
    return-void
.end method

.method public removeSearchResponseListener(Lorg/cybergarage/upnp/device/SearchResponseListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/cybergarage/upnp/device/SearchResponseListener;

    .prologue
    .line 567
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 568
    return-void
.end method

.method public renewSubscriberService()V
    .locals 2

    .prologue
    .line 950
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriberService(J)V

    .line 951
    return-void
.end method

.method public renewSubscriberService(J)V
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 940
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 941
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 942
    .local v1, "devCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 943
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 944
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0, p1, p2}, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriberService(Lorg/cybergarage/upnp/Device;J)V

    .line 942
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 946
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    :cond_0
    return-void
.end method

.method public renewSubscriberService(Lorg/cybergarage/upnp/Device;J)V
    .locals 10
    .param p1, "dev"    # Lorg/cybergarage/upnp/Device;
    .param p2, "timeout"    # J

    .prologue
    .line 918
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v7

    .line 919
    .local v7, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v7}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v6

    .line 920
    .local v6, "serviceCnt":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 921
    invoke-virtual {v7, v4}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v5

    .line 922
    .local v5, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v5}, Lorg/cybergarage/upnp/Service;->isSubscribed()Z

    move-result v9

    if-nez v9, :cond_1

    .line 920
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 924
    :cond_1
    invoke-virtual {v5}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v8

    .line 925
    .local v8, "sid":Ljava/lang/String;
    invoke-virtual {p0, v5, v8, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)Z

    move-result v3

    .line 926
    .local v3, "isRenewed":Z
    if-nez v3, :cond_0

    .line 927
    invoke-virtual {p0, v5, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;J)Z

    goto :goto_1

    .line 930
    .end local v3    # "isRenewed":Z
    .end local v5    # "service":Lorg/cybergarage/upnp/Service;
    .end local v8    # "sid":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 931
    .local v2, "cdevList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 932
    .local v1, "cdevCnt":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_3

    .line 933
    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 934
    .local v0, "cdev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriberService(Lorg/cybergarage/upnp/Device;J)V

    .line 932
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 936
    .end local v0    # "cdev":Lorg/cybergarage/upnp/Device;
    :cond_3
    return-void
.end method

.method public search()V
    .locals 2

    .prologue
    .line 696
    const-string v0, "upnp:rootdevice"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->search(Ljava/lang/String;I)V

    .line 697
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 691
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/ControlPoint;->search(Ljava/lang/String;I)V

    .line 692
    return-void
.end method

.method public search(Ljava/lang/String;I)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "mx"    # I

    .prologue
    .line 684
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;I)V

    .line 685
    .local v0, "msReq":Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v1

    .line 686
    .local v1, "ssdpSearchResponseSocketList":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->post(Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z

    .line 687
    return-void
.end method

.method public searchByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "locationURL"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "localAddress"    # Ljava/lang/String;

    .prologue
    .line 709
    invoke-direct {p0, p1, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public searchResponseReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 2
    .param p1, "packet"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 657
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isHiMultiScreenDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 659
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->addDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 660
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->performSearchResponseListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 664
    :cond_0
    return-void
.end method

.method public setDeviceDisposer(Lorg/cybergarage/upnp/device/Disposer;)V
    .locals 0
    .param p1, "disposer"    # Lorg/cybergarage/upnp/device/Disposer;

    .prologue
    .line 517
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceDisposer:Lorg/cybergarage/upnp/device/Disposer;

    .line 518
    return-void
.end method

.method public setEventSubURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 786
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    .line 787
    return-void
.end method

.method public setExpiredDeviceMonitoringInterval(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 507
    iput-wide p1, p0, Lorg/cybergarage/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    .line 508
    return-void
.end method

.method public setHTTPPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 210
    iput p1, p0, Lorg/cybergarage/upnp/ControlPoint;->httpPort:I

    .line 211
    return-void
.end method

.method public setNMPRMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lorg/cybergarage/upnp/ControlPoint;->nmprMode:Z

    .line 222
    return-void
.end method

.method public setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V
    .locals 0
    .param p1, "sub"    # Lorg/cybergarage/upnp/control/RenewSubscriber;

    .prologue
    .line 961
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriber:Lorg/cybergarage/upnp/control/RenewSubscriber;

    .line 962
    return-void
.end method

.method public setSSDPPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 196
    iput p1, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpPort:I

    .line 197
    return-void
.end method

.method public setSearchMx(I)V
    .locals 0
    .param p1, "mx"    # I

    .prologue
    .line 679
    iput p1, p0, Lorg/cybergarage/upnp/ControlPoint;->searchMx:I

    .line 680
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1108
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->userData:Ljava/lang/Object;

    .line 1109
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 1055
    const-string v0, "upnp:rootdevice"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->start(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 1050
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/ControlPoint;->start(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;I)Z
    .locals 12
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "mx"    # I

    .prologue
    const/16 v11, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 975
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->stop()Z

    .line 981
    const/4 v4, 0x0

    .line 982
    .local v4, "retryCnt":I
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    .line 983
    .local v0, "bindPort":I
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v2

    .line 984
    .local v2, "httpServerList":Lorg/cybergarage/http/HTTPServerList;
    :goto_0
    invoke-virtual {v2, v0}, Lorg/cybergarage/http/HTTPServerList;->open(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 985
    add-int/lit8 v4, v4, 0x1

    .line 986
    if-ge v11, v4, :cond_1

    .line 1045
    :cond_0
    :goto_1
    return v8

    .line 988
    :cond_1
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {p0, v10}, Lorg/cybergarage/upnp/ControlPoint;->setHTTPPort(I)V

    .line 989
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    goto :goto_0

    .line 991
    :cond_2
    invoke-virtual {v2, p0}, Lorg/cybergarage/http/HTTPServerList;->addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V

    .line 992
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPServerList;->start()V

    .line 998
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPNotifySocketList()Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v5

    .line 999
    .local v5, "ssdpNotifySocketList":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
    invoke-virtual {v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->open()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1001
    invoke-virtual {v5, p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 1002
    invoke-virtual {v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->start()V

    .line 1008
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPPort()I

    move-result v6

    .line 1009
    .local v6, "ssdpPort":I
    const/4 v4, 0x0

    .line 1010
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v7

    .line 1011
    .local v7, "ssdpSearchResponseSocketList":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    :goto_2
    invoke-virtual {v7, v6}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->open(I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1012
    add-int/lit8 v4, v4, 0x1

    .line 1013
    if-lt v11, v4, :cond_0

    .line 1015
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v10}, Lorg/cybergarage/upnp/ControlPoint;->setSSDPPort(I)V

    .line 1016
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPPort()I

    move-result v6

    goto :goto_2

    .line 1018
    :cond_3
    invoke-virtual {v7, p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 1019
    invoke-virtual {v7}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->start()V

    .line 1025
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/upnp/ControlPoint;->search(Ljava/lang/String;I)V

    .line 1031
    new-instance v1, Lorg/cybergarage/upnp/device/Disposer;

    invoke-direct {v1, p0}, Lorg/cybergarage/upnp/device/Disposer;-><init>(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 1032
    .local v1, "disposer":Lorg/cybergarage/upnp/device/Disposer;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/ControlPoint;->setDeviceDisposer(Lorg/cybergarage/upnp/device/Disposer;)V

    .line 1033
    invoke-virtual {v1}, Lorg/cybergarage/upnp/device/Disposer;->start()V

    .line 1039
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->isNMPRMode()Z

    move-result v8

    if-ne v8, v9, :cond_4

    .line 1040
    new-instance v3, Lorg/cybergarage/upnp/control/RenewSubscriber;

    invoke-direct {v3, p0}, Lorg/cybergarage/upnp/control/RenewSubscriber;-><init>(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 1041
    .local v3, "renewSub":Lorg/cybergarage/upnp/control/RenewSubscriber;
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V

    .line 1042
    invoke-virtual {v3}, Lorg/cybergarage/upnp/control/RenewSubscriber;->start()V

    .end local v3    # "renewSub":Lorg/cybergarage/upnp/control/RenewSubscriber;
    :cond_4
    move v8, v9

    .line 1045
    goto :goto_1
.end method

.method public stop()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1060
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->unsubscribe()V

    .line 1062
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPNotifySocketList()Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v3

    .line 1063
    .local v3, "ssdpNotifySocketList":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->stop()V

    .line 1064
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->close()V

    .line 1065
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->clear()V

    .line 1067
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v4

    .line 1068
    .local v4, "ssdpSearchResponseSocketList":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    .line 1069
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    .line 1070
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    .line 1072
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v1

    .line 1073
    .local v1, "httpServerList":Lorg/cybergarage/http/HTTPServerList;
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->stop()V

    .line 1074
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->close()V

    .line 1075
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->clear()V

    .line 1081
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceDisposer()Lorg/cybergarage/upnp/device/Disposer;

    move-result-object v0

    .line 1082
    .local v0, "disposer":Lorg/cybergarage/upnp/device/Disposer;
    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/Disposer;->stop()V

    .line 1084
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/ControlPoint;->setDeviceDisposer(Lorg/cybergarage/upnp/device/Disposer;)V

    .line 1091
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getRenewSubscriber()Lorg/cybergarage/upnp/control/RenewSubscriber;

    move-result-object v2

    .line 1092
    .local v2, "renewSub":Lorg/cybergarage/upnp/control/RenewSubscriber;
    if-eqz v2, :cond_1

    .line 1093
    invoke-virtual {v2}, Lorg/cybergarage/upnp/control/RenewSubscriber;->stop()V

    .line 1094
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V

    .line 1097
    :cond_1
    const/4 v5, 0x1

    return v5
.end method

.method public subscribe(Lorg/cybergarage/upnp/Service;)Z
    .locals 2
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 822
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;J)Z

    move-result v0

    return v0
.end method

.method public subscribe(Lorg/cybergarage/upnp/Service;J)Z
    .locals 10
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "timeout"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 796
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->isSubscribed()Z

    move-result v7

    if-ne v7, v6, :cond_1

    .line 797
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v2

    .line 798
    .local v2, "sid":Ljava/lang/String;
    invoke-virtual {p0, p1, v2, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)Z

    move-result v5

    .line 816
    .end local v2    # "sid":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 801
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 802
    .local v1, "rootDev":Lorg/cybergarage/upnp/Device;
    if-eqz v1, :cond_0

    .line 804
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "ifAddress":Ljava/lang/String;
    new-instance v3, Lorg/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v3}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 806
    .local v3, "subReq":Lorg/cybergarage/upnp/event/SubscriptionRequest;
    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p1, v7, p2, p3}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setSubscribeRequest(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)V

    .line 807
    invoke-virtual {v3}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post()Lorg/cybergarage/upnp/event/SubscriptionResponse;

    move-result-object v4

    .line 808
    .local v4, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v7

    if-ne v7, v6, :cond_2

    .line 809
    invoke-virtual {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/cybergarage/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lorg/cybergarage/upnp/Service;->setTimeout(J)V

    move v5, v6

    .line 812
    goto :goto_0

    .line 815
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->clearSID()V

    goto :goto_0
.end method

.method public subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;)Z
    .locals 2
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 845
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)Z
    .locals 7
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    const/4 v2, 0x1

    .line 827
    new-instance v0, Lorg/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 828
    .local v0, "subReq":Lorg/cybergarage/upnp/event/SubscriptionRequest;
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setRenewRequest(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)V

    .line 829
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 830
    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->print()V

    .line 831
    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post()Lorg/cybergarage/upnp/event/SubscriptionResponse;

    move-result-object v1

    .line 832
    .local v1, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 833
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->print()V

    .line 834
    :cond_1
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 835
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lorg/cybergarage/upnp/Service;->setTimeout(J)V

    .line 840
    :goto_0
    return v2

    .line 839
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->clearSID()V

    .line 840
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 183
    return-void
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    .line 887
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 888
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 889
    .local v1, "devCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 890
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 891
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Device;)V

    .line 889
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 893
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    :cond_0
    return-void
.end method

.method public unsubscribe(Lorg/cybergarage/upnp/Device;)V
    .locals 9
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 869
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 870
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 871
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 872
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 873
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->hasSID()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 874
    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/ControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Service;)Z

    .line 871
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 877
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 878
    .local v2, "childDevList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 879
    .local v1, "childDevCnt":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 880
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 881
    .local v0, "cdev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Device;)V

    .line 879
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 883
    .end local v0    # "cdev":Lorg/cybergarage/upnp/Device;
    :cond_2
    return-void
.end method

.method public unsubscribe(Lorg/cybergarage/upnp/Service;)Z
    .locals 4
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    const/4 v2, 0x1

    .line 857
    new-instance v0, Lorg/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 858
    .local v0, "subReq":Lorg/cybergarage/upnp/event/SubscriptionRequest;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setUnsubscribeRequest(Lorg/cybergarage/upnp/Service;)V

    .line 859
    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post()Lorg/cybergarage/upnp/event/SubscriptionResponse;

    move-result-object v1

    .line 860
    .local v1, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 861
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->clearSID()V

    .line 864
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
