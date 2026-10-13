.class public Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;
.super Ljava/lang/Object;
.source "MediaServer.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final deviceType:Ljava/lang/String; = "MediaServer"

.field private static final modelNumber:Ljava/lang/String; = "v1"

.field private static final version:I = 0x1


# instance fields
.field private contentDirectoryService:Lorg/teleal/cling/model/meta/LocalService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/teleal/cling/model/meta/LocalService",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalContentDirectoryService;",
            ">;"
        }
    .end annotation
.end field

.field private friendlyName:Ljava/lang/String;

.field private httpServer:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

.field private localDevice:Lorg/teleal/cling/model/meta/LocalDevice;

.field private manufacturer:Ljava/lang/String;

.field private udn:Lorg/teleal/cling/model/types/UDN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MediaServer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->friendlyName:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->manufacturer:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - DMS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "deviceName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->friendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/teleal/cling/model/types/UDN;->uniqueSystemIdentifier(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->udn:Lorg/teleal/cling/model/types/UDN;

    .line 49
    new-instance v12, Lorg/teleal/cling/model/types/UDADeviceType;

    const-string v1, "MediaServer"

    const/4 v2, 0x1

    invoke-direct {v12, v1, v2}, Lorg/teleal/cling/model/types/UDADeviceType;-><init>(Ljava/lang/String;I)V

    .line 51
    .local v12, "type":Lorg/teleal/cling/model/types/DeviceType;
    new-instance v8, Lorg/teleal/cling/model/meta/DeviceDetails;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->friendlyName:Ljava/lang/String;

    new-instance v2, Lorg/teleal/cling/model/meta/ManufacturerDetails;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->manufacturer:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/meta/ManufacturerDetails;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/teleal/cling/model/meta/ModelDetails;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MediaServer for Android"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "v1"

    invoke-direct {v3, v9, v4, v5}, Lorg/teleal/cling/model/meta/ModelDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v1, v2, v3}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;)V

    .line 55
    .local v8, "details":Lorg/teleal/cling/model/meta/DeviceDetails;
    new-instance v1, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;

    invoke-direct {v1}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;-><init>()V

    const-class v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalContentDirectoryService;

    invoke-virtual {v1, v2}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->read(Ljava/lang/Class;)Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->contentDirectoryService:Lorg/teleal/cling/model/meta/LocalService;

    .line 56
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->contentDirectoryService:Lorg/teleal/cling/model/meta/LocalService;

    new-instance v2, Lorg/teleal/cling/model/DefaultServiceManager;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->contentDirectoryService:Lorg/teleal/cling/model/meta/LocalService;

    const-class v4, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalContentDirectoryService;

    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/model/DefaultServiceManager;-><init>(Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lorg/teleal/cling/model/meta/LocalService;->setManager(Lorg/teleal/cling/model/ServiceManager;)V

    .line 58
    new-instance v1, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;

    invoke-direct {v1}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;-><init>()V

    const-class v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalConnectionManagerService;

    invoke-virtual {v1, v2}, Lorg/teleal/cling/binding/annotations/AnnotationLocalServiceBinder;->read(Ljava/lang/Class;)Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v7

    .line 59
    .local v7, "connectionManager":Lorg/teleal/cling/model/meta/LocalService;, "Lorg/teleal/cling/model/meta/LocalService<Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalConnectionManagerService;>;"
    new-instance v1, Lorg/teleal/cling/model/DefaultServiceManager;

    const-class v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/LocalConnectionManagerService;

    invoke-direct {v1, v7, v2}, Lorg/teleal/cling/model/DefaultServiceManager;-><init>(Lorg/teleal/cling/model/meta/LocalService;Ljava/lang/Class;)V

    invoke-virtual {v7, v1}, Lorg/teleal/cling/model/meta/LocalService;->setManager(Lorg/teleal/cling/model/ServiceManager;)V

    .line 62
    :try_start_0
    new-instance v0, Lorg/teleal/cling/model/meta/Icon;

    const-string v1, "image/png"

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x8

    const-string v5, ""

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v13, 0x7f060000

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/hisilicon/dlna/dmc/utility/Utility;->readStreamAsByte(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;[B)V

    .line 63
    .local v0, "icon":Lorg/teleal/cling/model/meta/Icon;
    new-instance v1, Lorg/teleal/cling/model/meta/LocalDevice;

    new-instance v2, Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->udn:Lorg/teleal/cling/model/types/UDN;

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;)V

    const/4 v3, 0x2

    new-array v6, v3, [Lorg/teleal/cling/model/meta/LocalService;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->contentDirectoryService:Lorg/teleal/cling/model/meta/LocalService;

    aput-object v4, v6, v3

    const/4 v3, 0x1

    aput-object v7, v6, v3

    move-object v3, v12

    move-object v4, v8

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/teleal/cling/model/meta/LocalDevice;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/LocalService;)V

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->localDevice:Lorg/teleal/cling/model/meta/LocalDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "icon":Lorg/teleal/cling/model/meta/Icon;
    :goto_0
    :try_start_1
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

    sget v2, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->PORT:I

    invoke-direct {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;-><init>(I)V

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->httpServer:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :goto_1
    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started Http Server on port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->PORT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 64
    :catch_0
    move-exception v10

    .line 65
    .local v10, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/teleal/cling/model/meta/LocalDevice;

    new-instance v2, Lorg/teleal/cling/model/meta/DeviceIdentity;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->udn:Lorg/teleal/cling/model/types/UDN;

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;-><init>(Lorg/teleal/cling/model/types/UDN;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/teleal/cling/model/meta/LocalService;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->contentDirectoryService:Lorg/teleal/cling/model/meta/LocalService;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v7, v3, v4

    invoke-direct {v1, v2, v12, v8, v3}, Lorg/teleal/cling/model/meta/LocalDevice;-><init>(Lorg/teleal/cling/model/meta/DeviceIdentity;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/LocalService;)V

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->localDevice:Lorg/teleal/cling/model/meta/LocalDevice;

    goto :goto_0

    .line 72
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 74
    .local v11, "ioe":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t start server:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_1
.end method


# virtual methods
.method public getDevice()Lorg/teleal/cling/model/meta/LocalDevice;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->localDevice:Lorg/teleal/cling/model/meta/LocalDevice;

    return-object v0
.end method

.method public getLocalService()Lorg/teleal/cling/model/meta/LocalService;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->contentDirectoryService:Lorg/teleal/cling/model/meta/LocalService;

    return-object v0
.end method

.method public stopHttpServer()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/MediaServer;->httpServer:Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServer;->stop()V

    .line 92
    return-void
.end method
