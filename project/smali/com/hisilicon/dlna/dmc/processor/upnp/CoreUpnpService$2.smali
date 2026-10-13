.class Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$2;
.super Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;
.source "CoreUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;->createConfiguration(Landroid/net/wifi/WifiManager;)Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
    .param p2, "x0"    # Landroid/net/wifi/WifiManager;
    .param p3, "x1"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;

    invoke-direct {p0, p2, p3}, Lorg/teleal/cling/android/AndroidUpnpServiceConfiguration;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;)V

    return-void
.end method


# virtual methods
.method public getExclusiveServiceTypes()[Lorg/teleal/cling/model/types/ServiceType;
    .locals 4

    .prologue
    .line 200
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/teleal/cling/model/types/ServiceType;

    const/4 v1, 0x0

    new-instance v2, Lorg/teleal/cling/model/types/UDAServiceType;

    const-string v3, "AVTransport"

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/teleal/cling/model/types/UDAServiceType;

    const-string v3, "ContentDirectory"

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/teleal/cling/model/types/UDAServiceType;

    const-string v3, "RenderingControl"

    invoke-direct {v2, v3}, Lorg/teleal/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method
