.class public Lorg/cybergarage/upnp/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lorg/cybergarage/http/HTTPRequestListener;
.implements Lorg/cybergarage/upnp/device/SearchListener;


# static fields
.field public static final DEFAULT_DESCRIPTION_URI:Ljava/lang/String; = "/description.xml"

.field public static final DEFAULT_DISCOVERY_WAIT_TIME:I = 0x12c

.field public static final DEFAULT_LEASE_TIME:I = 0x708

.field public static final DEFAULT_STARTUP_WAIT_TIME:I = 0x3e8

.field private static final DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final ELEM_NAME:Ljava/lang/String; = "device"

.field private static final FRIENDLY_NAME:Ljava/lang/String; = "friendlyName"

.field public static final HTTP_DEFAULT_PORT:I = 0xfa4

.field private static final MANUFACTURE:Ljava/lang/String; = "manufacturer"

.field private static final MANUFACTURE_URL:Ljava/lang/String; = "manufacturerURL"

.field private static final MODEL_DESCRIPTION:Ljava/lang/String; = "modelDescription"

.field private static final MODEL_NAME:Ljava/lang/String; = "modelName"

.field private static final MODEL_NUMBER:Ljava/lang/String; = "modelNumber"

.field private static final MODEL_URL:Ljava/lang/String; = "modelURL"

.field private static final SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field private static final UDN:Ljava/lang/String; = "UDN"

.field private static final UPC:Ljava/lang/String; = "UPC"

.field public static final UPNP_ROOTDEVICE:Ljava/lang/String; = "upnp:rootdevice"

.field private static final URLBASE_NAME:Ljava/lang/String; = "URLBase"

.field private static cal:Ljava/util/Calendar; = null

.field private static final presentationURL:Ljava/lang/String; = "presentationURL"


# instance fields
.field private devUUID:Ljava/lang/String;

.field private deviceNode:Lorg/cybergarage/xml/Node;

.field private mutex:Lorg/cybergarage/util/Mutex;

.field private rootNode:Lorg/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;

.field private wirelessMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->initialize()V

    .line 1449
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lorg/cybergarage/upnp/Device;->cal:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, v0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "descriptionFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, v0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 228
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->loadDescription(Ljava/io/File;)Z

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, v0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 237
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->loadDescription(Ljava/io/InputStream;)Z

    .line 238
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "descriptionFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Ljava/io/File;)V

    .line 244
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "root"    # Lorg/cybergarage/xml/Node;
    .param p2, "device"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    .line 2139
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    .line 209
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 210
    iput-object p2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 211
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->createUUID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setUUID(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setWirelessMode(Z)V

    .line 213
    return-void
.end method

.method private deviceActionControlRecieved(Lorg/cybergarage/upnp/control/ActionRequest;Lorg/cybergarage/upnp/Service;)V
    .locals 7
    .param p1, "ctlReq"    # Lorg/cybergarage/upnp/control/ActionRequest;
    .param p2, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 1734
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1735
    invoke-virtual {p1}, Lorg/cybergarage/upnp/control/ActionRequest;->print()V

    .line 1737
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/control/ActionRequest;->getActionName()Ljava/lang/String;

    move-result-object v2

    .line 1738
    .local v2, "actionName":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 1739
    .local v0, "action":Lorg/cybergarage/upnp/Action;
    if-nez v0, :cond_2

    .line 1740
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V

    .line 1753
    :cond_1
    :goto_0
    return-void

    .line 1743
    :cond_2
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v1

    .line 1744
    .local v1, "actionArgList":Lorg/cybergarage/upnp/ArgumentList;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/control/ActionRequest;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v4

    .line 1746
    .local v4, "reqArgList":Lorg/cybergarage/upnp/ArgumentList;
    :try_start_0
    invoke-virtual {v1, v4}, Lorg/cybergarage/upnp/ArgumentList;->setReqArgs(Lorg/cybergarage/upnp/ArgumentList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Action;->performActionListener(Lorg/cybergarage/upnp/control/ActionRequest;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1752
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V

    goto :goto_0

    .line 1747
    :catch_0
    move-exception v3

    .line 1748
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidArgumentsControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V

    goto :goto_0
.end method

.method private deviceControlRequestRecieved(Lorg/cybergarage/upnp/control/ControlRequest;Lorg/cybergarage/upnp/Service;)V
    .locals 2
    .param p1, "ctlReq"    # Lorg/cybergarage/upnp/control/ControlRequest;
    .param p2, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 1712
    invoke-virtual {p1}, Lorg/cybergarage/upnp/control/ControlRequest;->isQueryControl()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1713
    new-instance v0, Lorg/cybergarage/upnp/control/QueryRequest;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/control/QueryRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    invoke-direct {p0, v0, p2}, Lorg/cybergarage/upnp/Device;->deviceQueryControlRecieved(Lorg/cybergarage/upnp/control/QueryRequest;Lorg/cybergarage/upnp/Service;)V

    .line 1716
    :goto_0
    return-void

    .line 1715
    :cond_0
    new-instance v0, Lorg/cybergarage/upnp/control/ActionRequest;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/control/ActionRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    invoke-direct {p0, v0, p2}, Lorg/cybergarage/upnp/Device;->deviceActionControlRecieved(Lorg/cybergarage/upnp/control/ActionRequest;Lorg/cybergarage/upnp/Service;)V

    goto :goto_0
.end method

.method private deviceEventNewSubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 9
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "subReq"    # Lorg/cybergarage/upnp/event/SubscriptionRequest;

    .prologue
    const/4 v8, 0x1

    .line 1816
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getCallback()Ljava/lang/String;

    move-result-object v0

    .line 1818
    .local v0, "callback":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1825
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getTimeout()J

    move-result-wide v6

    .line 1826
    .local v6, "timeOut":J
    invoke-static {}, Lorg/cybergarage/upnp/event/Subscription;->createSID()Ljava/lang/String;

    move-result-object v2

    .line 1828
    .local v2, "sid":Ljava/lang/String;
    new-instance v3, Lorg/cybergarage/upnp/event/Subscriber;

    invoke-direct {v3}, Lorg/cybergarage/upnp/event/Subscriber;-><init>()V

    .line 1829
    .local v3, "sub":Lorg/cybergarage/upnp/event/Subscriber;
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/event/Subscriber;->setDeliveryURL(Ljava/lang/String;)V

    .line 1830
    invoke-virtual {v3, v6, v7}, Lorg/cybergarage/upnp/event/Subscriber;->setTimeOut(J)V

    .line 1831
    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/event/Subscriber;->setSID(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/Service;->addSubscriber(Lorg/cybergarage/upnp/event/Subscriber;)V

    .line 1834
    new-instance v4, Lorg/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 1835
    .local v4, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 1836
    invoke-virtual {v4, v2}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setSID(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {v4, v6, v7}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setTimeout(J)V

    .line 1838
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v5

    if-ne v5, v8, :cond_0

    .line 1839
    invoke-virtual {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->print()V

    .line 1840
    :cond_0
    invoke-virtual {p2, v4}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post(Lorg/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 1842
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 1843
    invoke-virtual {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->print()V

    .line 1845
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->notifyAllStateVariables()V

    .line 1846
    .end local v2    # "sid":Ljava/lang/String;
    .end local v3    # "sub":Lorg/cybergarage/upnp/event/Subscriber;
    .end local v4    # "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    .end local v6    # "timeOut":J
    :goto_0
    return-void

    .line 1820
    :catch_0
    move-exception v1

    .line 1821
    .local v1, "e":Ljava/lang/Exception;
    const/16 v5, 0x19c

    invoke-direct {p0, p2, v5}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    goto :goto_0
.end method

.method private deviceEventRenewSubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 7
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "subReq"    # Lorg/cybergarage/upnp/event/SubscriptionRequest;

    .prologue
    .line 1850
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 1851
    .local v0, "sid":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/Service;->getSubscriber(Ljava/lang/String;)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v1

    .line 1853
    .local v1, "sub":Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v1, :cond_1

    .line 1854
    const/16 v3, 0x19c

    invoke-direct {p0, p2, v3}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    .line 1870
    :cond_0
    :goto_0
    return-void

    .line 1858
    :cond_1
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getTimeout()J

    move-result-wide v4

    .line 1859
    .local v4, "timeOut":J
    invoke-virtual {v1, v4, v5}, Lorg/cybergarage/upnp/event/Subscriber;->setTimeOut(J)V

    .line 1860
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/Subscriber;->renew()V

    .line 1862
    new-instance v2, Lorg/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v2}, Lorg/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 1863
    .local v2, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 1864
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setSID(Ljava/lang/String;)V

    .line 1865
    invoke-virtual {v2, v4, v5}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setTimeout(J)V

    .line 1866
    invoke-virtual {p2, v2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post(Lorg/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 1868
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 1869
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->print()V

    goto :goto_0
.end method

.method private deviceEventSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 5
    .param p1, "subReq"    # Lorg/cybergarage/upnp/event/SubscriptionRequest;

    .prologue
    const/16 v4, 0x19c

    const/4 v3, 0x1

    .line 1782
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 1783
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    .line 1784
    .local v0, "service":Lorg/cybergarage/upnp/Service;
    if-nez v0, :cond_0

    .line 1785
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->returnBadRequest()Z

    .line 1812
    :goto_0
    return-void

    .line 1788
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->hasCallback()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->hasSID()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1789
    invoke-direct {p0, p1, v4}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    goto :goto_0

    .line 1794
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->isUnsubscribeRequest()Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1795
    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->deviceEventUnsubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 1800
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->hasCallback()Z

    move-result v2

    if-ne v2, v3, :cond_3

    .line 1801
    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->deviceEventNewSubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 1806
    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->hasSID()Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 1807
    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->deviceEventRenewSubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 1811
    :cond_4
    invoke-direct {p0, p1, v4}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    goto :goto_0
.end method

.method private deviceEventUnsubscriptionRecieved(Lorg/cybergarage/upnp/Service;Lorg/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 5
    .param p1, "service"    # Lorg/cybergarage/upnp/Service;
    .param p2, "subReq"    # Lorg/cybergarage/upnp/event/SubscriptionRequest;

    .prologue
    .line 1874
    invoke-virtual {p2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 1875
    .local v0, "sid":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/Service;->getSubscriber(Ljava/lang/String;)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v1

    .line 1877
    .local v1, "sub":Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v1, :cond_1

    .line 1878
    const/16 v3, 0x19c

    invoke-direct {p0, p2, v3}, Lorg/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V

    .line 1890
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Service;->removeSubscriber(Lorg/cybergarage/upnp/event/Subscriber;)V

    .line 1884
    new-instance v2, Lorg/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v2}, Lorg/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 1885
    .local v2, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 1886
    invoke-virtual {p2, v2}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post(Lorg/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 1888
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1889
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->print()V

    goto :goto_0
.end method

.method private deviceQueryControlRecieved(Lorg/cybergarage/upnp/control/QueryRequest;Lorg/cybergarage/upnp/Service;)V
    .locals 4
    .param p1, "ctlReq"    # Lorg/cybergarage/upnp/control/QueryRequest;
    .param p2, "service"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 1757
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1758
    invoke-virtual {p1}, Lorg/cybergarage/upnp/control/QueryRequest;->print()V

    .line 1759
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/control/QueryRequest;->getVarName()Ljava/lang/String;

    move-result-object v1

    .line 1760
    .local v1, "varName":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lorg/cybergarage/upnp/Service;->hasStateVariable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1761
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V

    .line 1767
    :cond_1
    :goto_0
    return-void

    .line 1764
    :cond_2
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v0

    .line 1765
    .local v0, "stateVar":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/StateVariable;->performQueryListener(Lorg/cybergarage/upnp/control/QueryRequest;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1766
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V

    goto :goto_0
.end method

.method private getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;
    .locals 1

    .prologue
    .line 1982
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getDescriptionData(Ljava/lang/String;)[B
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1620
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isNMPRMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1621
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->updateURLBase(Ljava/lang/String;)V

    .line 1622
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 1623
    .local v1, "rootNode":Lorg/cybergarage/xml/Node;
    if-nez v1, :cond_1

    .line 1624
    const/4 v2, 0x0

    new-array v2, v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1626
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1627
    .local v0, "desc":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1630
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 1620
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "rootNode":Lorg/cybergarage/xml/Node;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getDescriptionURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getDescriptionURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;
    .locals 2

    .prologue
    .line 466
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 467
    .local v0, "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/xml/DeviceData;

    .line 468
    .local v1, "userData":Lorg/cybergarage/upnp/xml/DeviceData;
    if-nez v1, :cond_0

    .line 469
    new-instance v1, Lorg/cybergarage/upnp/xml/DeviceData;

    .end local v1    # "userData":Lorg/cybergarage/upnp/xml/DeviceData;
    invoke-direct {v1}, Lorg/cybergarage/upnp/xml/DeviceData;-><init>()V

    .line 470
    .restart local v1    # "userData":Lorg/cybergarage/upnp/xml/DeviceData;
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 471
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/xml/DeviceData;->setNode(Lorg/cybergarage/xml/Node;)V

    .line 473
    :cond_0
    return-object v1
.end method

.method private getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;
    .locals 1

    .prologue
    .line 1898
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1275
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1276
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 1277
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "upnp:rootdevice"

    goto :goto_0
.end method

.method private getNotifyDeviceTypeNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1289
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceTypeUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1282
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1283
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 1284
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "upnp:rootdevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    .locals 1

    .prologue
    .line 1972
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v0

    return-object v0
.end method

.method private getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->devUUID:Ljava/lang/String;

    return-object v0
.end method

.method private httpGetRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 9
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    const/4 v8, 0x1

    .line 1635
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v5

    .line 1636
    .local v5, "uri":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "httpGetRequestRecieved = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1637
    if-nez v5, :cond_0

    .line 1638
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    .line 1671
    :goto_0
    return-void

    .line 1645
    :cond_0
    const/4 v6, 0x0

    new-array v2, v6, [B

    .line 1646
    .local v2, "fileByte":[B
    invoke-direct {p0, v5}, Lorg/cybergarage/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v8, :cond_4

    .line 1647
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getLocalAddress()Ljava/lang/String;

    move-result-object v4

    .line 1648
    .local v4, "localAddr":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_2

    .line 1649
    :cond_1
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v4

    .line 1650
    :cond_2
    invoke-direct {p0, v4}, Lorg/cybergarage/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v2

    .line 1664
    .end local v4    # "localAddr":Ljava/lang/String;
    :goto_1
    new-instance v3, Lorg/cybergarage/http/HTTPResponse;

    invoke-direct {v3}, Lorg/cybergarage/http/HTTPResponse;-><init>()V

    .line 1665
    .local v3, "httpRes":Lorg/cybergarage/http/HTTPResponse;
    invoke-static {v5}, Lorg/cybergarage/util/FileUtil;->isXMLFileName(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v8, :cond_3

    .line 1666
    const-string v6, "text/xml; charset=\"utf-8\""

    invoke-virtual {v3, v6}, Lorg/cybergarage/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 1667
    :cond_3
    const/16 v6, 0xc8

    invoke-virtual {v3, v6}, Lorg/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 1668
    invoke-virtual {v3, v2}, Lorg/cybergarage/http/HTTPResponse;->setContent([B)V

    .line 1670
    invoke-virtual {p1, v3}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    goto :goto_0

    .line 1652
    .end local v3    # "httpRes":Lorg/cybergarage/http/HTTPResponse;
    :cond_4
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .local v0, "embDev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_5

    .line 1653
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getLocalAddress()Ljava/lang/String;

    move-result-object v4

    .line 1654
    .restart local v4    # "localAddr":Ljava/lang/String;
    invoke-direct {v0, v4}, Lorg/cybergarage/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v2

    .line 1655
    goto :goto_1

    .line 1656
    .end local v4    # "localAddr":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .local v1, "embService":Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_6

    .line 1657
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Service;->getSCPDData()[B

    move-result-object v2

    goto :goto_1

    .line 1660
    :cond_6
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0
.end method

.method private httpPostRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 2
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 1675
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isSOAPAction()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1677
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->soapActionRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    .line 1681
    :goto_0
    return-void

    .line 1680
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0
.end method

.method private initializeLoadedDescription()Z
    .locals 1

    .prologue
    .line 590
    const-string v0, "/description.xml"

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setDescriptionURI(Ljava/lang/String;)V

    .line 591
    const/16 v0, 0x708

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setLeaseTime(I)V

    .line 592
    const/16 v0, 0xfa4

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setHTTPPort(I)V

    .line 595
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->hasUDN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->updateUDN()V

    .line 598
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private invalidActionControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V
    .locals 2
    .param p1, "ctlReq"    # Lorg/cybergarage/upnp/control/ControlRequest;

    .prologue
    .line 1720
    new-instance v0, Lorg/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v0}, Lorg/cybergarage/upnp/control/ActionResponse;-><init>()V

    .line 1721
    .local v0, "actRes":Lorg/cybergarage/upnp/control/ControlResponse;
    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/control/ControlResponse;->setFaultResponse(I)V

    .line 1722
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/control/ControlRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 1723
    return-void
.end method

.method private invalidArgumentsControlRecieved(Lorg/cybergarage/upnp/control/ControlRequest;)V
    .locals 2
    .param p1, "ctlReq"    # Lorg/cybergarage/upnp/control/ControlRequest;

    .prologue
    .line 1727
    new-instance v0, Lorg/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v0}, Lorg/cybergarage/upnp/control/ActionResponse;-><init>()V

    .line 1728
    .local v0, "actRes":Lorg/cybergarage/upnp/control/ControlResponse;
    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/control/ControlResponse;->setFaultResponse(I)V

    .line 1729
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/control/ControlRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 1730
    return-void
.end method

.method private isDescriptionURI(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "descriptionURI":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 504
    :cond_0
    const/4 v1, 0x0

    .line 505
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isDeviceNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 607
    const-string v0, "device"

    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final notifyWait()V
    .locals 1

    .prologue
    .line 1299
    const/16 v0, 0x12c

    invoke-static {v0}, Lorg/cybergarage/util/TimerUtil;->waitRandom(I)V

    .line 1300
    return-void
.end method

.method private setAdvertiser(Lorg/cybergarage/upnp/device/Advertiser;)V
    .locals 1
    .param p1, "adv"    # Lorg/cybergarage/upnp/device/Advertiser;

    .prologue
    .line 1977
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setAdvertiser(Lorg/cybergarage/upnp/device/Advertiser;)V

    .line 1978
    return-void
.end method

.method private setDescriptionFile(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 482
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setDescriptionFile(Ljava/io/File;)V

    .line 483
    return-void
.end method

.method private setDescriptionURI(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setDescriptionURI(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method private setURLBase(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 707
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 708
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    const-string v3, "URLBase"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 709
    .local v1, "node":Lorg/cybergarage/xml/Node;
    if-eqz v1, :cond_1

    .line 710
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 720
    .end local v1    # "node":Lorg/cybergarage/xml/Node;
    :cond_0
    :goto_0
    return-void

    .line 713
    .restart local v1    # "node":Lorg/cybergarage/xml/Node;
    :cond_1
    new-instance v1, Lorg/cybergarage/xml/Node;

    .end local v1    # "node":Lorg/cybergarage/xml/Node;
    const-string v2, "URLBase"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 714
    .restart local v1    # "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 715
    const/4 v0, 0x1

    .line 716
    .local v0, "index":I
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-nez v2, :cond_2

    .line 717
    const/4 v0, 0x1

    .line 718
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/cybergarage/xml/Node;->insertNode(Lorg/cybergarage/xml/Node;I)V

    goto :goto_0
.end method

.method private setUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 360
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->devUUID:Ljava/lang/String;

    .line 361
    return-void
.end method

.method private soapActionRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 3
    .param p1, "soapReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 1696
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v2

    .line 1697
    .local v2, "uri":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 1698
    .local v1, "ctlService":Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 1699
    new-instance v0, Lorg/cybergarage/upnp/control/ActionRequest;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/control/ActionRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    .line 1700
    .local v0, "crlReq":Lorg/cybergarage/upnp/control/ActionRequest;
    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/Device;->deviceControlRequestRecieved(Lorg/cybergarage/upnp/control/ControlRequest;Lorg/cybergarage/upnp/Service;)V

    .line 1704
    .end local v0    # "crlReq":Lorg/cybergarage/upnp/control/ActionRequest;
    :goto_0
    return-void

    .line 1703
    :cond_0
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->soapBadActionRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    goto :goto_0
.end method

.method private soapBadActionRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 2
    .param p1, "soapReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    .line 1689
    new-instance v0, Lorg/cybergarage/soap/SOAPResponse;

    invoke-direct {v0}, Lorg/cybergarage/soap/SOAPResponse;-><init>()V

    .line 1690
    .local v0, "soapRes":Lorg/cybergarage/soap/SOAPResponse;
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lorg/cybergarage/soap/SOAPResponse;->setStatusCode(I)V

    .line 1691
    invoke-virtual {p1, v0}, Lorg/cybergarage/http/HTTPRequest;->post(Lorg/cybergarage/http/HTTPResponse;)Z

    .line 1692
    return-void
.end method

.method private stop(Z)Z
    .locals 5
    .param p1, "doByeBye"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2035
    if-ne p1, v4, :cond_0

    .line 2036
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->byebye()V

    .line 2038
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v1

    .line 2039
    .local v1, "httpServerList":Lorg/cybergarage/http/HTTPServerList;
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->stop()V

    .line 2040
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->close()V

    .line 2041
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->clear()V

    .line 2043
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v2

    .line 2044
    .local v2, "ssdpSearchSockList":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->stop()V

    .line 2045
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->close()V

    .line 2046
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->clear()V

    .line 2048
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    .line 2049
    .local v0, "adv":Lorg/cybergarage/upnp/device/Advertiser;
    if-eqz v0, :cond_1

    .line 2050
    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/Advertiser;->stop()V

    .line 2051
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/cybergarage/upnp/Device;->setAdvertiser(Lorg/cybergarage/upnp/device/Advertiser;)V

    .line 2054
    :cond_1
    return v4
.end method

.method private updateUDN()V
    .locals 2

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->setUDN(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method private updateURLBase(Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 724
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v1

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lorg/cybergarage/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "urlBase":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setURLBase(Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method private upnpBadSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;I)V
    .locals 1
    .param p1, "subReq"    # Lorg/cybergarage/upnp/event/SubscriptionRequest;
    .param p2, "code"    # I

    .prologue
    .line 1775
    new-instance v0, Lorg/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 1776
    .local v0, "subRes":Lorg/cybergarage/upnp/event/SubscriptionResponse;
    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->setErrorResponse(I)V

    .line 1777
    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post(Lorg/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 1778
    return-void
.end method


# virtual methods
.method public addDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 7
    .param p1, "d"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 436
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v5

    const-string v6, "deviceList"

    invoke-virtual {v5, v6}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 437
    .local v0, "deviceListNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 439
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0    # "deviceListNode":Lorg/cybergarage/xml/Node;
    const-string v5, "deviceList"

    invoke-direct {v0, v5}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 440
    .restart local v0    # "deviceListNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 442
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 443
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/cybergarage/upnp/Device;->setRootNode(Lorg/cybergarage/xml/Node;)V

    .line 444
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v5

    if-nez v5, :cond_1

    .line 445
    new-instance v3, Lorg/cybergarage/xml/Node;

    const-string v5, "root"

    invoke-direct {v3, v5}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 446
    .local v3, "root":Lorg/cybergarage/xml/Node;
    const-string v5, ""

    const-string v6, "urn:schemas-upnp-org:device-1-0"

    invoke-virtual {v3, v5, v6}, Lorg/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v4, Lorg/cybergarage/xml/Node;

    const-string v5, "specVersion"

    invoke-direct {v4, v5}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 448
    .local v4, "spec":Lorg/cybergarage/xml/Node;
    new-instance v1, Lorg/cybergarage/xml/Node;

    const-string v5, "major"

    invoke-direct {v1, v5}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 449
    .local v1, "maj":Lorg/cybergarage/xml/Node;
    const-string v5, "1"

    invoke-virtual {v1, v5}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 450
    new-instance v2, Lorg/cybergarage/xml/Node;

    const-string v5, "minor"

    invoke-direct {v2, v5}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 451
    .local v2, "min":Lorg/cybergarage/xml/Node;
    const-string v5, "0"

    invoke-virtual {v2, v5}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v4, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 453
    invoke-virtual {v4, v2}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 454
    invoke-virtual {v3, v4}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 455
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/Device;->setRootNode(Lorg/cybergarage/xml/Node;)V

    .line 457
    .end local v1    # "maj":Lorg/cybergarage/xml/Node;
    .end local v2    # "min":Lorg/cybergarage/xml/Node;
    .end local v3    # "root":Lorg/cybergarage/xml/Node;
    .end local v4    # "spec":Lorg/cybergarage/xml/Node;
    :cond_1
    return-void
.end method

.method public addService(Lorg/cybergarage/upnp/Service;)V
    .locals 3
    .param p1, "s"    # Lorg/cybergarage/upnp/Service;

    .prologue
    .line 415
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "serviceList"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 416
    .local v0, "serviceListNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0    # "serviceListNode":Lorg/cybergarage/xml/Node;
    const-string v1, "serviceList"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 418
    .restart local v0    # "serviceListNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 420
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 421
    return-void
.end method

.method public announce()V
    .locals 8

    .prologue
    .line 1353
    invoke-static {}, Lorg/cybergarage/upnp/Device;->notifyWait()V

    .line 1354
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v1

    .line 1356
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 1357
    array-length v7, v1

    new-array v0, v7, [Ljava/lang/String;

    .line 1358
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_1

    .line 1359
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 1358
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1362
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v5

    .line 1363
    .local v5, "nHostAddrs":I
    new-array v0, v5, [Ljava/lang/String;

    .line 1364
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 1365
    invoke-static {v4}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 1364
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1368
    .end local v4    # "n":I
    .end local v5    # "nHostAddrs":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 1369
    aget-object v7, v0, v3

    if-eqz v7, :cond_2

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 1368
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1371
    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v6

    .line 1372
    .local v6, "ssdpCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v6, :cond_2

    .line 1373
    aget-object v7, v0, v3

    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/Device;->announce(Ljava/lang/String;)V

    .line 1372
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1376
    .end local v2    # "i":I
    .end local v6    # "ssdpCount":I
    :cond_4
    return-void
.end method

.method public announce(Ljava/lang/String;)V
    .locals 16
    .param p1, "bindAddr"    # Ljava/lang/String;

    .prologue
    .line 1303
    invoke-virtual/range {p0 .. p1}, Lorg/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1305
    .local v4, "devLocation":Ljava/lang/String;
    new-instance v13, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 1307
    .local v13, "ssdpSock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    new-instance v12, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v12}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 1308
    .local v12, "ssdpReq":Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setServer(Ljava/lang/String;)V

    .line 1309
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v14

    invoke-virtual {v12, v14}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setLeaseTime(I)V

    .line 1310
    invoke-virtual {v12, v4}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setLocation(Ljava/lang/String;)V

    .line 1311
    const-string v14, "ssdp:alive"

    invoke-virtual {v12, v14}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 1315
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v5

    .line 1316
    .local v5, "devNT":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceUSN()Ljava/lang/String;

    move-result-object v7

    .line 1317
    .local v7, "devUSN":Ljava/lang/String;
    invoke-virtual {v12, v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v12, v7}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v13, v12}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1321
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v6

    .line 1322
    .local v6, "devUDN":Ljava/lang/String;
    invoke-virtual {v12, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v12, v6}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {v13, v12}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1328
    .end local v5    # "devNT":Ljava/lang/String;
    .end local v6    # "devUDN":Ljava/lang/String;
    .end local v7    # "devUSN":Ljava/lang/String;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceTypeNT()Ljava/lang/String;

    move-result-object v5

    .line 1329
    .restart local v5    # "devNT":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceTypeUSN()Ljava/lang/String;

    move-result-object v7

    .line 1330
    .restart local v7    # "devUSN":Ljava/lang/String;
    invoke-virtual {v12, v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v12, v7}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v13, v12}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1335
    invoke-virtual {v13}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->close()Z

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v11

    .line 1338
    .local v11, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v11}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v10

    .line 1339
    .local v10, "serviceCnt":I
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_0
    if-ge v8, v10, :cond_1

    .line 1340
    invoke-virtual {v11, v8}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v9

    .line 1341
    .local v9, "service":Lorg/cybergarage/upnp/Service;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/cybergarage/upnp/Service;->announce(Ljava/lang/String;)V

    .line 1339
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1344
    .end local v9    # "service":Lorg/cybergarage/upnp/Service;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v3

    .line 1345
    .local v3, "childDeviceList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 1346
    .local v2, "childDeviceCnt":I
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_2

    .line 1347
    invoke-virtual {v3, v8}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 1348
    .local v1, "childDevice":Lorg/cybergarage/upnp/Device;
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/Device;->announce(Ljava/lang/String;)V

    .line 1346
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1350
    .end local v1    # "childDevice":Lorg/cybergarage/upnp/Device;
    :cond_2
    return-void
.end method

.method public byebye()V
    .locals 8

    .prologue
    .line 1421
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v1

    .line 1423
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 1424
    array-length v7, v1

    new-array v0, v7, [Ljava/lang/String;

    .line 1425
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_1

    .line 1426
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 1425
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1429
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v5

    .line 1430
    .local v5, "nHostAddrs":I
    new-array v0, v5, [Ljava/lang/String;

    .line 1431
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 1432
    invoke-static {v4}, Lorg/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 1431
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1436
    .end local v4    # "n":I
    .end local v5    # "nHostAddrs":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_4

    .line 1437
    aget-object v7, v0, v3

    if-eqz v7, :cond_2

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_3

    .line 1436
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1439
    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v6

    .line 1440
    .local v6, "ssdpCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v6, :cond_2

    .line 1441
    aget-object v7, v0, v3

    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/Device;->byebye(Ljava/lang/String;)V

    .line 1440
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1443
    .end local v2    # "i":I
    .end local v6    # "ssdpCount":I
    :cond_4
    return-void
.end method

.method public byebye(Ljava/lang/String;)V
    .locals 13
    .param p1, "bindAddr"    # Ljava/lang/String;

    .prologue
    .line 1380
    new-instance v10, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v10, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 1382
    .local v10, "ssdpSock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    new-instance v9, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v9}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 1383
    .local v9, "ssdpReq":Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;
    const-string v11, "ssdp:byebye"

    invoke-virtual {v9, v11}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 1387
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v3

    .line 1388
    .local v3, "devNT":Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceUSN()Ljava/lang/String;

    move-result-object v4

    .line 1389
    .local v4, "devUSN":Ljava/lang/String;
    invoke-virtual {v9, v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {v9, v4}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {v10, v9}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1395
    .end local v3    # "devNT":Ljava/lang/String;
    .end local v4    # "devUSN":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceTypeNT()Ljava/lang/String;

    move-result-object v3

    .line 1396
    .restart local v3    # "devNT":Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceTypeUSN()Ljava/lang/String;

    move-result-object v4

    .line 1397
    .restart local v4    # "devUSN":Ljava/lang/String;
    invoke-virtual {v9, v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v9, v4}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v10, v9}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1402
    invoke-virtual {v10}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->close()Z

    .line 1404
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v8

    .line 1405
    .local v8, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v8}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v7

    .line 1406
    .local v7, "serviceCnt":I
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 1407
    invoke-virtual {v8, v5}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v6

    .line 1408
    .local v6, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v6, p1}, Lorg/cybergarage/upnp/Service;->byebye(Ljava/lang/String;)V

    .line 1406
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1411
    .end local v6    # "service":Lorg/cybergarage/upnp/Service;
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1412
    .local v2, "childDeviceList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1413
    .local v1, "childDeviceCnt":I
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_2

    .line 1414
    invoke-virtual {v2, v5}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1415
    .local v0, "childDevice":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->byebye(Ljava/lang/String;)V

    .line 1413
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1417
    .end local v0    # "childDevice":Lorg/cybergarage/upnp/Device;
    :cond_2
    return-void
.end method

.method public deviceSearchReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 0
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 1534
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->deviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 1535
    return-void
.end method

.method public deviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 19
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 1482
    invoke-virtual/range {p1 .. p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v16

    .line 1484
    .local v16, "ssdpST":Ljava/lang/String;
    if-nez v16, :cond_1

    .line 1530
    :cond_0
    return-void

    .line 1487
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v10

    .line 1489
    .local v10, "isRootDevice":Z
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v9

    .line 1490
    .local v9, "devUSN":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    .line 1491
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "::upnp:rootdevice"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1493
    :cond_2
    invoke-static/range {v16 .. v16}, Lorg/cybergarage/upnp/device/ST;->isAllDevice(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1494
    invoke-direct/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v6

    .line 1495
    .local v6, "devNT":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_3

    const/4 v12, 0x3

    .line 1496
    .local v12, "repeatCnt":I
    :goto_0
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_1
    if-ge v11, v12, :cond_5

    .line 1497
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1496
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1495
    .end local v11    # "n":I
    .end local v12    # "repeatCnt":I
    :cond_3
    const/4 v12, 0x2

    goto :goto_0

    .line 1499
    .end local v6    # "devNT":Ljava/lang/String;
    :cond_4
    invoke-static/range {v16 .. v16}, Lorg/cybergarage/upnp/device/ST;->isRootDevice(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1500
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_5

    .line 1501
    const-string v17, "upnp:rootdevice"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1517
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v15

    .line 1518
    .local v15, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v15}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v14

    .line 1519
    .local v14, "serviceCnt":I
    const/4 v11, 0x0

    .restart local v11    # "n":I
    :goto_3
    if-ge v11, v14, :cond_8

    .line 1520
    invoke-virtual {v15, v11}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v13

    .line 1521
    .local v13, "service":Lorg/cybergarage/upnp/Service;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/cybergarage/upnp/Service;->serviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)Z

    .line 1519
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1503
    .end local v11    # "n":I
    .end local v13    # "service":Lorg/cybergarage/upnp/Service;
    .end local v14    # "serviceCnt":I
    .end local v15    # "serviceList":Lorg/cybergarage/upnp/ServiceList;
    :cond_6
    invoke-static/range {v16 .. v16}, Lorg/cybergarage/upnp/device/ST;->isUUIDDevice(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1504
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v8

    .line 1505
    .local v8, "devUDN":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1506
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 1508
    .end local v8    # "devUDN":Ljava/lang/String;
    :cond_7
    invoke-static/range {v16 .. v16}, Lorg/cybergarage/upnp/device/ST;->isURNDevice(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1509
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    .line 1510
    .local v7, "devType":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1512
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "::"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1513
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v9}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 1524
    .end local v7    # "devType":Ljava/lang/String;
    .restart local v11    # "n":I
    .restart local v14    # "serviceCnt":I
    .restart local v15    # "serviceList":Lorg/cybergarage/upnp/ServiceList;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v5

    .line 1525
    .local v5, "childDeviceList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v5}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v4

    .line 1526
    .local v4, "childDeviceCnt":I
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v4, :cond_0

    .line 1527
    invoke-virtual {v5, v11}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    .line 1528
    .local v3, "childDevice":Lorg/cybergarage/upnp/Device;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/Device;->deviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 1526
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method

.method public getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 269
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 270
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 300
    .end local v5    # "url":Ljava/net/URL;
    :goto_0
    return-object v7

    .line 272
    :catch_0
    move-exception v7

    .line 274
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v4

    .line 275
    .local v4, "rootDev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, "urlBaseStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    .line 279
    :cond_0
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "location":Ljava/lang/String;
    invoke-static {v1}, Lorg/cybergarage/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "locationHost":Ljava/lang/String;
    invoke-static {v1}, Lorg/cybergarage/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v3

    .line 282
    .local v3, "locationPort":I
    invoke-static {v2, v3}, Lorg/cybergarage/http/HTTP;->getRequestHostURL(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 285
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "locationHost":Ljava/lang/String;
    .end local v3    # "locationPort":I
    :cond_1
    invoke-static {p1}, Lorg/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "absUrl":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 289
    .restart local v5    # "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_0

    .line 291
    .end local v5    # "url":Ljava/net/URL;
    :catch_1
    move-exception v7

    .line 293
    invoke-static {v6, p1}, Lorg/cybergarage/http/HTTP;->getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    :try_start_2
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 296
    .restart local v5    # "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    goto :goto_0

    .line 298
    .end local v5    # "url":Ljava/net/URL;
    :catch_2
    move-exception v7

    .line 300
    const-string v7, ""

    goto :goto_0
.end method

.method public getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1189
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v11

    .line 1190
    .local v11, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v11}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v10

    .line 1191
    .local v10, "serviceCnt":I
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_0
    if-ge v8, v10, :cond_4

    .line 1192
    invoke-virtual {v11, v8}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v9

    .line 1193
    .local v9, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v9}, Lorg/cybergarage/upnp/Service;->getActionList()Lorg/cybergarage/upnp/ActionList;

    move-result-object v2

    .line 1194
    .local v2, "actionList":Lorg/cybergarage/upnp/ActionList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ActionList;->size()I

    move-result v1

    .line 1195
    .local v1, "actionCnt":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_3

    .line 1196
    invoke-virtual {v2, v7}, Lorg/cybergarage/upnp/ActionList;->getAction(I)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 1197
    .local v0, "action":Lorg/cybergarage/upnp/Action;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1198
    .local v3, "actionName":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1195
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1200
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 1214
    .end local v0    # "action":Lorg/cybergarage/upnp/Action;
    .end local v1    # "actionCnt":I
    .end local v2    # "actionList":Lorg/cybergarage/upnp/ActionList;
    .end local v3    # "actionName":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "service":Lorg/cybergarage/upnp/Service;
    :cond_2
    :goto_2
    return-object v0

    .line 1191
    .restart local v1    # "actionCnt":I
    .restart local v2    # "actionList":Lorg/cybergarage/upnp/ActionList;
    .restart local v7    # "i":I
    .restart local v9    # "service":Lorg/cybergarage/upnp/Service;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1205
    .end local v1    # "actionCnt":I
    .end local v2    # "actionList":Lorg/cybergarage/upnp/ActionList;
    .end local v7    # "i":I
    .end local v9    # "service":Lorg/cybergarage/upnp/Service;
    :cond_4
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v6

    .line 1206
    .local v6, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v5

    .line 1207
    .local v5, "devCnt":I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_5

    .line 1208
    invoke-virtual {v6, v8}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v4

    .line 1209
    .local v4, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Device;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 1210
    .restart local v0    # "action":Lorg/cybergarage/upnp/Action;
    if-nez v0, :cond_2

    .line 1207
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1214
    .end local v0    # "action":Lorg/cybergarage/upnp/Action;
    .end local v4    # "dev":Lorg/cybergarage/upnp/Device;
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getDescriptionFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 487
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getDescriptionFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 510
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionFile()Ljava/io/File;

    move-result-object v0

    .line 511
    .local v0, "descriptionFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 512
    const-string v1, ""

    .line 513
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 983
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v3

    .line 984
    .local v3, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 985
    .local v2, "devCnt":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 986
    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 987
    .local v1, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 993
    .end local v1    # "dev":Lorg/cybergarage/upnp/Device;
    :goto_1
    return-object v1

    .line 989
    .restart local v1    # "dev":Lorg/cybergarage/upnp/Device;
    :cond_0
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 990
    .local v0, "cdev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 991
    goto :goto_1

    .line 985
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 993
    .end local v0    # "cdev":Lorg/cybergarage/upnp/Device;
    .end local v1    # "dev":Lorg/cybergarage/upnp/Device;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDeviceByDescriptionURI(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 998
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v3

    .line 999
    .local v3, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 1000
    .local v2, "devCnt":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 1001
    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 1002
    .local v1, "dev":Lorg/cybergarage/upnp/Device;
    invoke-direct {v1, p1}, Lorg/cybergarage/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1008
    .end local v1    # "dev":Lorg/cybergarage/upnp/Device;
    :goto_1
    return-object v1

    .line 1004
    .restart local v1    # "dev":Lorg/cybergarage/upnp/Device;
    :cond_0
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1005
    .local v0, "cdev":Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 1006
    goto :goto_1

    .line 1000
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1008
    .end local v0    # "cdev":Lorg/cybergarage/upnp/Device;
    .end local v1    # "dev":Lorg/cybergarage/upnp/Device;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDeviceList()Lorg/cybergarage/upnp/DeviceList;
    .locals 8

    .prologue
    .line 949
    new-instance v1, Lorg/cybergarage/upnp/DeviceList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/DeviceList;-><init>()V

    .line 950
    .local v1, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    const-string v7, "deviceList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 951
    .local v2, "devListNode":Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_0

    .line 965
    :goto_0
    return-object v1

    .line 954
    :cond_0
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->lock()V

    .line 955
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 956
    .local v4, "nNode":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 957
    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 958
    .local v5, "node":Lorg/cybergarage/xml/Node;
    invoke-static {v5}, Lorg/cybergarage/upnp/Device;->isDeviceNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 956
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 960
    :cond_1
    new-instance v0, Lorg/cybergarage/upnp/Device;

    invoke-direct {v0, v5}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 961
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 963
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v5    # "node":Lorg/cybergarage/xml/Node;
    :cond_2
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->unlock()V

    goto :goto_0
.end method

.method public getDeviceNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 748
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 772
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "friendlyName"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPBindAddress()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1556
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPPort()I
    .locals 1

    .prologue
    .line 1548
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getHTTPPort()I

    move-result v0

    return v0
.end method

.method public getIcon(I)Lorg/cybergarage/upnp/Icon;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 1240
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getIconList()Lorg/cybergarage/upnp/IconList;

    move-result-object v0

    .line 1241
    .local v0, "iconList":Lorg/cybergarage/upnp/IconList;
    if-gez p1, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/IconList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p1, :cond_0

    .line 1242
    const/4 v1, 0x0

    .line 1243
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    move-result-object v1

    goto :goto_0
.end method

.method public getIconList()Lorg/cybergarage/upnp/IconList;
    .locals 8

    .prologue
    .line 1223
    new-instance v1, Lorg/cybergarage/upnp/IconList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/IconList;-><init>()V

    .line 1224
    .local v1, "iconList":Lorg/cybergarage/upnp/IconList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    const-string v7, "iconList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 1225
    .local v2, "iconListNode":Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_1

    .line 1235
    :cond_0
    return-object v1

    .line 1227
    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 1228
    .local v4, "nNode":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1229
    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 1230
    .local v5, "node":Lorg/cybergarage/xml/Node;
    invoke-static {v5}, Lorg/cybergarage/upnp/Icon;->isIconNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1228
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1232
    :cond_2
    new-instance v0, Lorg/cybergarage/upnp/Icon;

    invoke-direct {v0, v5}, Lorg/cybergarage/upnp/Icon;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 1233
    .local v0, "icon":Lorg/cybergarage/upnp/Icon;
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/IconList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2073
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 2074
    .local v0, "ssdpPacket":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-nez v0, :cond_0

    .line 2075
    const-string v1, ""

    .line 2076
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLeaseTime()I
    .locals 2

    .prologue
    .line 667
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 668
    .local v0, "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLeaseTime()I

    move-result v1

    .line 670
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/xml/DeviceData;->getLeaseTime()I

    move-result v1

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 645
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 646
    .local v0, "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 648
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/xml/DeviceData;->getLocation()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLocationURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1270
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v0

    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/cybergarage/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacture()Ljava/lang/String;
    .locals 2

    .prologue
    .line 788
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufactureURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 804
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "manufacturerURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 820
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelDescription"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 836
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelName"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 852
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelNumber"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 868
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastIPv4Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1950
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getMulticastIPv4Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastIPv6Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1966
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getMulticastIPv6Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentDevice()Lorg/cybergarage/upnp/Device;
    .locals 3

    .prologue
    .line 401
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    const/4 v2, 0x0

    .line 407
    :goto_0
    return-object v2

    .line 403
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 404
    .local v1, "devNode":Lorg/cybergarage/xml/Node;
    const/4 v0, 0x0

    .line 406
    .local v0, "aux":Lorg/cybergarage/xml/Node;
    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 407
    new-instance v2, Lorg/cybergarage/upnp/Device;

    invoke-direct {v2, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getPresentationURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 940
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "presentationURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootDevice()Lorg/cybergarage/upnp/Device;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 379
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 380
    .local v1, "rootNode":Lorg/cybergarage/xml/Node;
    if-nez v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-object v2

    .line 382
    :cond_1
    const-string v3, "device"

    invoke-virtual {v1, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 383
    .local v0, "devNode":Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 385
    new-instance v2, Lorg/cybergarage/upnp/Device;

    invoke-direct {v2, v1, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getRootNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 176
    :goto_0
    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    if-nez v0, :cond_1

    .line 175
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getSSDPAnnounceCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 347
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isNMPRMode()Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isWirelessMode()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 348
    const/4 v0, 0x4

    .line 349
    :cond_0
    return v0
.end method

.method public getSSDPBindAddress()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1934
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getSSDPBindAddress()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv4MulticastAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1565
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getMulticastIPv4Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv4MulticastAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 1574
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setMulticastIPv4Address(Ljava/lang/String;)V

    .line 1575
    return-void
.end method

.method public getSSDPIPv6MulticastAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1583
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getMulticastIPv6Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv6MulticastAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 1592
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setMulticastIPv6Address(Ljava/lang/String;)V

    .line 1593
    return-void
.end method

.method public getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    const/4 v0, 0x0

    .line 631
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    goto :goto_0
.end method

.method public getSSDPPort()I
    .locals 1

    .prologue
    .line 1913
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/DeviceData;->getSSDPPort()I

    move-result v0

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 884
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serialNumber"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1034
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 1035
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 1036
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1037
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1038
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Service;->isService(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1051
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_0
    :goto_1
    return-object v4

    .line 1036
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1042
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1043
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1044
    .local v1, "devCnt":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1045
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1046
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1047
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 1044
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1051
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getServiceByControlURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 9
    .param p1, "searchUrl"    # Ljava/lang/String;

    .prologue
    .line 1078
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 1079
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 1080
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1081
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1082
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Service;->isControlURL(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1095
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_0
    :goto_1
    return-object v4

    .line 1080
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1086
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1087
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1088
    .local v1, "devCnt":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1089
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1090
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1091
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 1088
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1095
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getServiceByEventSubURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 9
    .param p1, "searchUrl"    # Ljava/lang/String;

    .prologue
    .line 1100
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 1101
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 1102
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1103
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1104
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Service;->isEventSubURL(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1117
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_0
    :goto_1
    return-object v4

    .line 1102
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1108
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1109
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1110
    .local v1, "devCnt":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1111
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1112
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1113
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 1110
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1117
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getServiceBySCPDURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 9
    .param p1, "searchUrl"    # Ljava/lang/String;

    .prologue
    .line 1056
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 1057
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 1058
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1059
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1060
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/Service;->isSCPDURL(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 1073
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_0
    :goto_1
    return-object v4

    .line 1058
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1064
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1065
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1066
    .local v1, "devCnt":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1067
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1068
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1069
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 1066
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1073
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getServiceList()Lorg/cybergarage/upnp/ServiceList;
    .locals 8

    .prologue
    .line 1017
    new-instance v4, Lorg/cybergarage/upnp/ServiceList;

    invoke-direct {v4}, Lorg/cybergarage/upnp/ServiceList;-><init>()V

    .line 1018
    .local v4, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    const-string v7, "serviceList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 1019
    .local v5, "serviceListNode":Lorg/cybergarage/xml/Node;
    if-nez v5, :cond_1

    .line 1029
    :cond_0
    return-object v4

    .line 1021
    :cond_1
    invoke-virtual {v5}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v1

    .line 1022
    .local v1, "nNode":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1023
    invoke-virtual {v5, v0}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 1024
    .local v2, "node":Lorg/cybergarage/xml/Node;
    invoke-static {v2}, Lorg/cybergarage/upnp/Service;->isServiceNode(Lorg/cybergarage/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1022
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1026
    :cond_2
    new-instance v3, Lorg/cybergarage/upnp/Service;

    invoke-direct {v3, v2}, Lorg/cybergarage/upnp/Service;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 1027
    .local v3, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4, v3}, Lorg/cybergarage/upnp/ServiceList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getSmallestIcon()Lorg/cybergarage/upnp/Icon;
    .locals 7

    .prologue
    .line 1248
    const/4 v4, 0x0

    .line 1249
    .local v4, "smallestIcon":Lorg/cybergarage/upnp/Icon;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getIconList()Lorg/cybergarage/upnp/IconList;

    move-result-object v2

    .line 1250
    .local v2, "iconList":Lorg/cybergarage/upnp/IconList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/IconList;->size()I

    move-result v1

    .line 1251
    .local v1, "iconCount":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1252
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/IconList;->getIcon(I)Lorg/cybergarage/upnp/Icon;

    move-result-object v0

    .line 1253
    .local v0, "icon":Lorg/cybergarage/upnp/Icon;
    if-nez v4, :cond_1

    .line 1254
    move-object v4, v0

    .line 1251
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1257
    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Icon;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Icon;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1258
    move-object v4, v0

    goto :goto_1

    .line 1261
    .end local v0    # "icon":Lorg/cybergarage/upnp/Icon;
    :cond_2
    return-object v4
.end method

.method public getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1180
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;
    .locals 10
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1149
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move-object v7, v8

    .line 1175
    :cond_0
    :goto_0
    return-object v7

    .line 1152
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 1153
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 1154
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 1155
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1157
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    if-eqz p1, :cond_3

    .line 1158
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1154
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1161
    :cond_3
    invoke-virtual {v4, p2}, Lorg/cybergarage/upnp/Service;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v7

    .line 1162
    .local v7, "stateVar":Lorg/cybergarage/upnp/StateVariable;
    if-eqz v7, :cond_2

    goto :goto_0

    .line 1166
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    .end local v7    # "stateVar":Lorg/cybergarage/upnp/StateVariable;
    :cond_4
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1167
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1168
    .local v1, "devCnt":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    .line 1169
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1170
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v7

    .line 1171
    .restart local v7    # "stateVar":Lorg/cybergarage/upnp/StateVariable;
    if-nez v7, :cond_0

    .line 1168
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v7    # "stateVar":Lorg/cybergarage/upnp/StateVariable;
    :cond_5
    move-object v7, v8

    .line 1175
    goto :goto_0
.end method

.method public getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 10
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1122
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 1123
    .local v6, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    .line 1124
    .local v5, "serviceCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1125
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1126
    .local v4, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v7

    .line 1127
    .local v7, "sid":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1140
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    .end local v7    # "sid":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    .line 1124
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    .restart local v7    # "sid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1131
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    .end local v7    # "sid":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1132
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 1133
    .local v1, "devCnt":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1134
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1135
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 1136
    .restart local v4    # "service":Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_0

    .line 1133
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1140
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v4    # "service":Lorg/cybergarage/upnp/Service;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getTimeStamp()J
    .locals 4

    .prologue
    .line 679
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 680
    .local v0, "packet":Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getTimeStamp()J

    move-result-wide v2

    .line 682
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getUDN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 900
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUPC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 924
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UPC"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURLBase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 730
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 731
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasUDN()Z
    .locals 2

    .prologue
    .line 905
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "udn":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 907
    :cond_0
    const/4 v1, 0x0

    .line 908
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 3
    .param p1, "httpReq"    # Lorg/cybergarage/http/HTTPRequest;

    .prologue
    const/4 v2, 0x1

    .line 1597
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1598
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->print()V

    .line 1600
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isGetRequest()Z

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isHeadRequest()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1601
    :cond_1
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->httpGetRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    .line 1616
    :goto_0
    return-void

    .line 1604
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isPostRequest()Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 1605
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->httpPostRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    goto :goto_0

    .line 1609
    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isSubscribeRequest()Z

    move-result v1

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isUnsubscribeRequest()Z

    move-result v1

    if-ne v1, v2, :cond_5

    .line 1610
    :cond_4
    new-instance v0, Lorg/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    .line 1611
    .local v0, "subReq":Lorg/cybergarage/upnp/event/SubscriptionRequest;
    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->deviceEventSubscriptionRecieved(Lorg/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 1615
    .end local v0    # "subReq":Lorg/cybergarage/upnp/event/SubscriptionRequest;
    :cond_5
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0
.end method

.method public isDevice(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 970
    if-nez p1, :cond_1

    .line 978
    :cond_0
    :goto_0
    return v0

    .line 972
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 973
    goto :goto_0

    .line 974
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_3

    move v0, v1

    .line 975
    goto :goto_0

    .line 976
    :cond_3
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 977
    goto :goto_0
.end method

.method public isDeviceType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 753
    if-nez p1, :cond_0

    .line 754
    const/4 v0, 0x0

    .line 755
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 5

    .prologue
    .line 692
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getElapsedTime()J

    move-result-wide v0

    .line 693
    .local v0, "elipsedTime":J
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    int-to-long v2, v4

    .line 694
    .local v2, "leaseTime":J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 695
    const/4 v4, 0x1

    .line 696
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isNMPRMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 324
    .local v0, "devNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "INMPR03"

    invoke-virtual {v0, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRootDevice()Z
    .locals 2

    .prologue
    .line 615
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 2064
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWirelessMode()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lorg/cybergarage/upnp/Device;->wirelessMode:Z

    return v0
.end method

.method public loadDescription(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 568
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 569
    .local v1, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/File;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 570
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_0

    .line 571
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root node"

    invoke-direct {v2, v3, p1}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;Ljava/io/File;)V

    throw v2
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v1    # "parser":Lorg/cybergarage/xml/Parser;
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Lorg/cybergarage/xml/ParserException;
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v2, v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 572
    .end local v0    # "e":Lorg/cybergarage/xml/ParserException;
    .restart local v1    # "parser":Lorg/cybergarage/xml/Parser;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    const-string v3, "device"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 573
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_1

    .line 574
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root device node"

    invoke-direct {v2, v3, p1}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;Ljava/io/File;)V

    throw v2
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 580
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v2

    if-nez v2, :cond_2

    .line 581
    const/4 v2, 0x0

    .line 585
    :goto_0
    return v2

    .line 583
    :cond_2
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    .line 585
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public loadDescription(Ljava/io/InputStream;)Z
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 522
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 523
    .local v1, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 524
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_0

    .line 525
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root node"

    invoke-direct {v2, v3}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v1    # "parser":Lorg/cybergarage/xml/Parser;
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Lorg/cybergarage/xml/ParserException;
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v2, v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 526
    .end local v0    # "e":Lorg/cybergarage/xml/ParserException;
    .restart local v1    # "parser":Lorg/cybergarage/xml/Parser;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    const-string v3, "device"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 527
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_1

    .line 528
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root device node"

    invoke-direct {v2, v3}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 534
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v2

    if-nez v2, :cond_2

    .line 535
    const/4 v2, 0x0

    .line 539
    :goto_0
    return v2

    .line 537
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    .line 539
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public loadDescription(Ljava/lang/String;)Z
    .locals 4
    .param p1, "descString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 545
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 546
    .local v1, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 547
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_0

    .line 548
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root node"

    invoke-direct {v2, v3}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v1    # "parser":Lorg/cybergarage/xml/Parser;
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Lorg/cybergarage/xml/ParserException;
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v2, v0}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 549
    .end local v0    # "e":Lorg/cybergarage/xml/ParserException;
    .restart local v1    # "parser":Lorg/cybergarage/xml/Parser;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    const-string v3, "device"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 550
    iget-object v2, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    if-nez v2, :cond_1

    .line 551
    new-instance v2, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root device node"

    invoke-direct {v2, v3}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 557
    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v2

    if-nez v2, :cond_2

    .line 558
    const/4 v2, 0x0

    .line 562
    :goto_0
    return v2

    .line 560
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    .line 562
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 255
    return-void
.end method

.method public postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    .param p2, "st"    # Ljava/lang/String;
    .param p3, "usn"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 1452
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    .line 1453
    .local v1, "localAddr":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v5

    .line 1454
    .local v5, "rootDev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v5, v1}, Lorg/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1456
    .local v6, "rootDevLocation":Ljava/lang/String;
    new-instance v8, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;

    invoke-direct {v8}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;-><init>()V

    .line 1457
    .local v8, "ssdpRes":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setLeaseTime(I)V

    .line 1458
    sget-object v10, Lorg/cybergarage/upnp/Device;->cal:Ljava/util/Calendar;

    invoke-virtual {v8, v10}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setDate(Ljava/util/Calendar;)V

    .line 1459
    invoke-virtual {v8, p2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setST(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v8, p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setUSN(Ljava/lang/String;)V

    .line 1461
    invoke-virtual {v8, v6}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setLocation(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->setMYNAME(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getMX()I

    move-result v2

    .line 1466
    .local v2, "mx":I
    mul-int/lit16 v10, v2, 0x3e8

    invoke-static {v10}, Lorg/cybergarage/util/TimerUtil;->waitRandom(I)V

    .line 1468
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v3

    .line 1469
    .local v3, "remoteAddr":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getRemotePort()I

    move-result v4

    .line 1470
    .local v4, "remotePort":I
    new-instance v9, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    invoke-direct {v9}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;-><init>()V

    .line 1471
    .local v9, "ssdpResSock":Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v10

    if-ne v10, v11, :cond_0

    .line 1472
    invoke-virtual {v8}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponse;->print()V

    .line 1473
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v7

    .line 1474
    .local v7, "ssdpCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 1475
    invoke-virtual {v9, v3, v4, v8}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/SSDPSearchResponse;)Z

    .line 1474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1477
    :cond_1
    return v11
.end method

.method public setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/cybergarage/upnp/control/ActionListener;

    .prologue
    .line 2085
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v3

    .line 2086
    .local v3, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v1

    .line 2087
    .local v1, "nServices":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2088
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v2

    .line 2089
    .local v2, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Service;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 2087
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2091
    .end local v2    # "service":Lorg/cybergarage/upnp/Service;
    :cond_0
    return-void
.end method

.method public setActionListener(Lorg/cybergarage/upnp/control/ActionListener;Z)V
    .locals 5
    .param p1, "listener"    # Lorg/cybergarage/upnp/control/ActionListener;
    .param p2, "includeSubDevices"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2110
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 2111
    if-ne p2, v4, :cond_0

    .line 2112
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 2113
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 2114
    .local v1, "devCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 2115
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 2116
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1, v4}, Lorg/cybergarage/upnp/Device;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;Z)V

    .line 2114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2119
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v1    # "devCnt":I
    .end local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    .end local v3    # "n":I
    :cond_0
    return-void
.end method

.method public setDeviceNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->deviceNode:Lorg/cybergarage/xml/Node;

    .line 192
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 743
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 766
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "friendlyName"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method public setHTTPBindAddress([Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "inets"    # [Ljava/net/InetAddress;

    .prologue
    .line 1552
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setHTTPBindAddress([Ljava/net/InetAddress;)V

    .line 1553
    return-void
.end method

.method public setHTTPPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 1543
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setHTTPPort(I)V

    .line 1544
    return-void
.end method

.method public setLeaseTime(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 657
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setLeaseTime(I)V

    .line 658
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getAdvertiser()Lorg/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    .line 659
    .local v0, "adv":Lorg/cybergarage/upnp/device/Advertiser;
    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->announce()V

    .line 661
    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/Advertiser;->restart()V

    .line 663
    :cond_0
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 640
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setLocation(Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public setManufacture(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 783
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method public setManufactureURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 799
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "manufacturerURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method public setModelDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 815
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelDescription"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 831
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelName"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    return-void
.end method

.method public setModelNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 847
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelNumber"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method public setModelURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 863
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public setMulticastIPv4Address(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 1942
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setMulticastIPv4Address(Ljava/lang/String;)V

    .line 1943
    return-void
.end method

.method public setMulticastIPv6Address(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 1958
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setMulticastIPv6Address(Ljava/lang/String;)V

    .line 1959
    return-void
.end method

.method public setNMPRMode(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 310
    .local v0, "devNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 312
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 313
    const-string v1, "INMPR03"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    goto :goto_0

    .line 317
    :cond_1
    const-string v1, "INMPR03"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setPresentationURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 935
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "presentationURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    return-void
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/cybergarage/upnp/control/QueryListener;

    .prologue
    .line 2095
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v3

    .line 2096
    .local v3, "serviceList":Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v1

    .line 2097
    .local v1, "nServices":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2098
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v2

    .line 2099
    .local v2, "service":Lorg/cybergarage/upnp/Service;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Service;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 2097
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2101
    .end local v2    # "service":Lorg/cybergarage/upnp/Service;
    :cond_0
    return-void
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;Z)V
    .locals 5
    .param p1, "listener"    # Lorg/cybergarage/upnp/control/QueryListener;
    .param p2, "includeSubDevices"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2124
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 2125
    if-ne p2, v4, :cond_0

    .line 2126
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 2127
    .local v2, "devList":Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v1

    .line 2128
    .local v1, "devCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 2129
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 2130
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1, v4}, Lorg/cybergarage/upnp/Device;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;Z)V

    .line 2128
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2133
    .end local v0    # "dev":Lorg/cybergarage/upnp/Device;
    .end local v1    # "devCnt":I
    .end local v2    # "devList":Lorg/cybergarage/upnp/DeviceList;
    .end local v3    # "n":I
    :cond_0
    return-void
.end method

.method public setRootNode(Lorg/cybergarage/xml/Node;)V
    .locals 0
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 186
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->rootNode:Lorg/cybergarage/xml/Node;

    .line 187
    return-void
.end method

.method public setSSDPBindAddress([Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "inets"    # [Ljava/net/InetAddress;

    .prologue
    .line 1924
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setSSDPBindAddress([Ljava/net/InetAddress;)V

    .line 1925
    return-void
.end method

.method public setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 1
    .param p1, "packet"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    .line 624
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 625
    return-void
.end method

.method public setSSDPPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 1905
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getDeviceData()Lorg/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/DeviceData;->setSSDPPort(I)V

    .line 1906
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 879
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serialNumber"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method public setUDN(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 895
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method public setUPC(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 919
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UPC"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 2143
    iput-object p1, p0, Lorg/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    .line 2144
    return-void
.end method

.method public setWirelessMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Lorg/cybergarage/upnp/Device;->wirelessMode:Z

    .line 338
    return-void
.end method

.method public start()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1987
    invoke-direct {p0, v6}, Lorg/cybergarage/upnp/Device;->stop(Z)Z

    .line 1993
    const/4 v3, 0x0

    .line 1994
    .local v3, "retryCnt":I
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v1

    .line 1995
    .local v1, "bindPort":I
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v2

    .line 1996
    .local v2, "httpServerList":Lorg/cybergarage/http/HTTPServerList;
    :goto_0
    invoke-virtual {v2, v1}, Lorg/cybergarage/http/HTTPServerList;->open(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1997
    add-int/lit8 v3, v3, 0x1

    .line 1998
    const/16 v7, 0x64

    if-ge v7, v3, :cond_1

    .line 2030
    :cond_0
    :goto_1
    return v5

    .line 2000
    :cond_1
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/Device;->setHTTPPort(I)V

    .line 2001
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v1

    goto :goto_0

    .line 2003
    :cond_2
    invoke-virtual {v2, p0}, Lorg/cybergarage/http/HTTPServerList;->addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V

    .line 2004
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPServerList;->start()V

    .line 2010
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;->getSSDPSearchSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v4

    .line 2011
    .local v4, "ssdpSearchSockList":Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->open()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2013
    invoke-virtual {v4, p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->addSearchListener(Lorg/cybergarage/upnp/device/SearchListener;)V

    .line 2014
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;->start()V

    .line 2020
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->announce()V

    .line 2026
    new-instance v0, Lorg/cybergarage/upnp/device/Advertiser;

    invoke-direct {v0, p0}, Lorg/cybergarage/upnp/device/Advertiser;-><init>(Lorg/cybergarage/upnp/Device;)V

    .line 2027
    .local v0, "adv":Lorg/cybergarage/upnp/device/Advertiser;
    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->setAdvertiser(Lorg/cybergarage/upnp/device/Advertiser;)V

    .line 2028
    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/Advertiser;->start()V

    move v5, v6

    .line 2030
    goto :goto_1
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 2059
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;->stop(Z)Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/cybergarage/upnp/Device;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 260
    return-void
.end method
