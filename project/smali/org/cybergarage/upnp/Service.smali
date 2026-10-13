.class public Lorg/cybergarage/upnp/Service;
.super Ljava/lang/Object;
.source "Service.java"


# static fields
.field private static final CONTROL_URL:Ljava/lang/String; = "controlURL"

.field public static final ELEM_NAME:Ljava/lang/String; = "service"

.field private static final EVENT_SUB_URL:Ljava/lang/String; = "eventSubURL"

.field public static final MAJOR:Ljava/lang/String; = "major"

.field public static final MAJOR_VALUE:Ljava/lang/String; = "1"

.field public static final MINOR:Ljava/lang/String; = "minor"

.field public static final MINOR_VALUE:Ljava/lang/String; = "0"

.field private static final SCPDURL:Ljava/lang/String; = "SCPDURL"

.field public static final SCPD_ROOTNODE:Ljava/lang/String; = "scpd"

.field public static final SCPD_ROOTNODE_NS:Ljava/lang/String; = "urn:schemas-upnp-org:service-1-0"

.field private static final SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final SERVICE_TYPE:Ljava/lang/String; = "serviceType"

.field public static final SPEC_VERSION:Ljava/lang/String; = "specVersion"


# instance fields
.field private mutex:Lorg/cybergarage/util/Mutex;

.field private serviceNode:Lorg/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 132
    new-instance v4, Lorg/cybergarage/xml/Node;

    const-string v5, "service"

    invoke-direct {v4, v5}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lorg/cybergarage/upnp/Service;-><init>(Lorg/cybergarage/xml/Node;)V

    .line 134
    new-instance v3, Lorg/cybergarage/xml/Node;

    const-string v4, "specVersion"

    invoke-direct {v3, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 136
    .local v3, "sp":Lorg/cybergarage/xml/Node;
    new-instance v0, Lorg/cybergarage/xml/Node;

    const-string v4, "major"

    invoke-direct {v0, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "M":Lorg/cybergarage/xml/Node;
    const-string v4, "1"

    invoke-virtual {v0, v4}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 140
    new-instance v1, Lorg/cybergarage/xml/Node;

    const-string v4, "minor"

    invoke-direct {v1, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "m":Lorg/cybergarage/xml/Node;
    const-string v4, "0"

    invoke-virtual {v1, v4}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v3, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 145
    new-instance v2, Lorg/cybergarage/xml/Node;

    const-string v4, "scpd"

    invoke-direct {v2, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, "scpd":Lorg/cybergarage/xml/Node;
    const-string v4, "xmlns"

    const-string v5, "urn:schemas-upnp-org:service-1-0"

    invoke-virtual {v2, v4, v5}, Lorg/cybergarage/xml/Node;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 148
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/Service;->mutex:Lorg/cybergarage/util/Mutex;

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/Service;->userData:Ljava/lang/Object;

    .line 153
    iput-object p1, p0, Lorg/cybergarage/upnp/Service;->serviceNode:Lorg/cybergarage/xml/Node;

    .line 154
    return-void
.end method

.method private getDeviceNode()Lorg/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 188
    .local v0, "node":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 189
    const/4 v1, 0x0

    .line 190
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getParentNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    goto :goto_0
.end method

.method private getNotifyServiceTypeNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyServiceTypeUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRootNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method private getSCPDNode()Lorg/cybergarage/xml/Node;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 397
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    .line 398
    .local v0, "data":Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 399
    .local v6, "scpdNode":Lorg/cybergarage/xml/Node;
    if-eqz v6, :cond_1

    move-object v9, v6

    .line 448
    :cond_0
    :goto_0
    return-object v9

    .line 403
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v4

    .line 404
    .local v4, "rootDev":Lorg/cybergarage/upnp/Device;
    if-eqz v4, :cond_0

    .line 407
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSCPDURL()Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, "scpdURLStr":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Device;->getDescriptionFilePath()Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, "rootDevPath":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 413
    new-instance v2, Ljava/io/File;

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 417
    :try_start_0
    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/Service;->getSCPDNode(Ljava/io/File;)Lorg/cybergarage/xml/Node;
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 422
    :goto_1
    if-eqz v6, :cond_2

    .line 423
    invoke-virtual {v0, v6}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    move-object v9, v6

    .line 424
    goto :goto_0

    .line 418
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Lorg/cybergarage/xml/ParserException;
    invoke-virtual {v1}, Lorg/cybergarage/xml/ParserException;->printStackTrace()V

    goto :goto_1

    .line 430
    .end local v1    # "e":Lorg/cybergarage/xml/ParserException;
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    :try_start_1
    new-instance v8, Ljava/net/URL;

    invoke-virtual {v4, v7}, Lorg/cybergarage/upnp/Device;->getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 431
    .local v8, "scpdUrl":Ljava/net/URL;
    invoke-direct {p0, v8}, Lorg/cybergarage/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 432
    if-eqz v6, :cond_3

    .line 433
    invoke-virtual {v0, v6}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v6

    .line 434
    goto :goto_0

    .line 437
    .end local v8    # "scpdUrl":Ljava/net/URL;
    :catch_1
    move-exception v10

    .line 439
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Device;->getDescriptionFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Lorg/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, "newScpdURLStr":Ljava/lang/String;
    :try_start_2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v10}, Lorg/cybergarage/upnp/Service;->getSCPDNode(Ljava/io/File;)Lorg/cybergarage/xml/Node;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    move-object v9, v6

    .line 442
    goto :goto_0

    .line 444
    :catch_2
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getSCPDNode(Ljava/io/File;)Lorg/cybergarage/xml/Node;
    .locals 2
    .param p1, "scpdFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v0

    .line 392
    .local v0, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/File;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    return-object v1
.end method

.method private getSCPDNode(Ljava/net/URL;)Lorg/cybergarage/xml/Node;
    .locals 2
    .param p1, "scpdUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v0

    .line 386
    .local v0, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v1

    return-object v1
.end method

.method private getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;
    .locals 2

    .prologue
    .line 596
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 597
    .local v0, "node":Lorg/cybergarage/xml/Node;
    invoke-virtual {v0}, Lorg/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/xml/ServiceData;

    .line 598
    .local v1, "userData":Lorg/cybergarage/upnp/xml/ServiceData;
    if-nez v1, :cond_0

    .line 599
    new-instance v1, Lorg/cybergarage/upnp/xml/ServiceData;

    .end local v1    # "userData":Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-direct {v1}, Lorg/cybergarage/upnp/xml/ServiceData;-><init>()V

    .line 600
    .restart local v1    # "userData":Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 601
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/xml/ServiceData;->setNode(Lorg/cybergarage/xml/Node;)V

    .line 603
    :cond_0
    return-object v1
.end method

.method public static isServiceNode(Lorg/cybergarage/xml/Node;)Z
    .locals 2
    .param p0, "node"    # Lorg/cybergarage/xml/Node;

    .prologue
    .line 178
    const-string v0, "service"

    invoke-virtual {p0}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isURL(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "referenceUrl"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 251
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v2, v3

    .line 260
    :cond_1
    :goto_0
    return v2

    .line 253
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 254
    .local v1, "ret":Z
    if-eq v1, v2, :cond_1

    .line 256
    invoke-static {p1, v3}, Lorg/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "relativeRefUrl":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 258
    if-eq v1, v2, :cond_1

    move v2, v3

    .line 260
    goto :goto_0
.end method

.method private notify(Lorg/cybergarage/upnp/event/Subscriber;Lorg/cybergarage/upnp/StateVariable;)Z
    .locals 7
    .param p1, "sub"    # Lorg/cybergarage/upnp/event/Subscriber;
    .param p2, "stateVar"    # Lorg/cybergarage/upnp/StateVariable;

    .prologue
    .line 742
    invoke-virtual {p2}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, "varName":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/cybergarage/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 745
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v2

    .line 748
    .local v2, "port":I
    new-instance v1, Lorg/cybergarage/upnp/event/NotifyRequest;

    invoke-direct {v1}, Lorg/cybergarage/upnp/event/NotifyRequest;-><init>()V

    .line 749
    .local v1, "notifyReq":Lorg/cybergarage/upnp/event/NotifyRequest;
    invoke-virtual {v1, p1, v5, v4}, Lorg/cybergarage/upnp/event/NotifyRequest;->setRequest(Lorg/cybergarage/upnp/event/Subscriber;Ljava/lang/String;Ljava/lang/String;)Z

    .line 751
    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/upnp/event/NotifyRequest;->post(Ljava/lang/String;I)Lorg/cybergarage/http/HTTPResponse;

    move-result-object v3

    .line 752
    .local v3, "res":Lorg/cybergarage/http/HTTPResponse;
    invoke-virtual {v3}, Lorg/cybergarage/http/HTTPResponse;->isSuccessful()Z

    move-result v6

    if-nez v6, :cond_0

    .line 753
    const/4 v6, 0x0

    .line 757
    :goto_0
    return v6

    .line 755
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/Subscriber;->incrementNotifyCount()V

    .line 757
    const/4 v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAction(Lorg/cybergarage/upnp/Action;)V
    .locals 5
    .param p1, "a"    # Lorg/cybergarage/upnp/Action;

    .prologue
    .line 504
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cybergarage/upnp/ArgumentList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 505
    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/Argument;

    .line 507
    .local v1, "arg":Lorg/cybergarage/upnp/Argument;
    invoke-virtual {v1, p0}, Lorg/cybergarage/upnp/Argument;->setService(Lorg/cybergarage/upnp/Service;)V

    goto :goto_0

    .line 510
    .end local v1    # "arg":Lorg/cybergarage/upnp/Argument;
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 511
    .local v3, "scdpNode":Lorg/cybergarage/xml/Node;
    const-string v4, "actionList"

    invoke-virtual {v3, v4}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 512
    .local v0, "actionListNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 513
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0    # "actionListNode":Lorg/cybergarage/xml/Node;
    const-string v4, "actionList"

    invoke-direct {v0, v4}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 514
    .restart local v0    # "actionListNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v3, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 516
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getActionNode()Lorg/cybergarage/xml/Node;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 517
    return-void
.end method

.method public addStateVariable(Lorg/cybergarage/upnp/StateVariable;)V
    .locals 3
    .param p1, "var"    # Lorg/cybergarage/upnp/StateVariable;

    .prologue
    .line 885
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "serviceStateTable"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 886
    .local v0, "stateTableNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_0

    .line 887
    new-instance v0, Lorg/cybergarage/xml/Node;

    .end local v0    # "stateTableNode":Lorg/cybergarage/xml/Node;
    const-string v1, "serviceStateTable"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 892
    .restart local v0    # "stateTableNode":Lorg/cybergarage/xml/Node;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 894
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/StateVariable;->setServiceNode(Lorg/cybergarage/xml/Node;)V

    .line 895
    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->getStateVariableNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->addNode(Lorg/cybergarage/xml/Node;)V

    .line 896
    return-void
.end method

.method public addSubscriber(Lorg/cybergarage/upnp/event/Subscriber;)V
    .locals 1
    .param p1, "sub"    # Lorg/cybergarage/upnp/event/Subscriber;

    .prologue
    .line 715
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/event/SubscriberList;->add(Ljava/lang/Object;)Z

    .line 716
    return-void
.end method

.method public announce(Ljava/lang/String;)V
    .locals 8
    .param p1, "bindAddr"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 624
    .local v2, "rootDev":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "devLocation":Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "serviceNT":Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, "serviceUSN":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 630
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    new-instance v5, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 631
    .local v5, "ssdpReq":Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setServer(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setLeaseTime(I)V

    .line 633
    invoke-virtual {v5, v1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setLocation(Ljava/lang/String;)V

    .line 634
    const-string v7, "ssdp:alive"

    invoke-virtual {v5, v7}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v5, v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v5, v4}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 638
    new-instance v6, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v6, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 639
    .local v6, "ssdpSock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-static {}, Lorg/cybergarage/upnp/Device;->notifyWait()V

    .line 640
    invoke-virtual {v6, v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 641
    return-void
.end method

.method public byebye(Ljava/lang/String;)V
    .locals 5
    .param p1, "bindAddr"    # Ljava/lang/String;

    .prologue
    .line 647
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "devNT":Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "devUSN":Ljava/lang/String;
    new-instance v2, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 651
    .local v2, "ssdpReq":Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;
    const-string v4, "ssdp:byebye"

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 655
    new-instance v3, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v3, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 656
    .local v3, "ssdpSock":Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;
    invoke-static {}, Lorg/cybergarage/upnp/Device;->notifyWait()V

    .line 657
    invoke-virtual {v3, v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lorg/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 658
    return-void
.end method

.method public clearSID()V
    .locals 2

    .prologue
    .line 829
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 830
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/Service;->setTimeout(J)V

    .line 831
    return-void
.end method

.method public getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;
    .locals 7
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 490
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getActionList()Lorg/cybergarage/upnp/ActionList;

    move-result-object v1

    .line 491
    .local v1, "actionList":Lorg/cybergarage/upnp/ActionList;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ActionList;->size()I

    move-result v3

    .line 492
    .local v3, "nActions":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 493
    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/ActionList;->getAction(I)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 494
    .local v0, "action":Lorg/cybergarage/upnp/Action;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 492
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 500
    .end local v0    # "action":Lorg/cybergarage/upnp/Action;
    .end local v4    # "name":Ljava/lang/String;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getActionList()Lorg/cybergarage/upnp/ActionList;
    .locals 8

    .prologue
    .line 470
    new-instance v1, Lorg/cybergarage/upnp/ActionList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/ActionList;-><init>()V

    .line 471
    .local v1, "actionList":Lorg/cybergarage/upnp/ActionList;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 472
    .local v6, "scdpNode":Lorg/cybergarage/xml/Node;
    if-nez v6, :cond_1

    .line 485
    :cond_0
    return-object v1

    .line 474
    :cond_1
    const-string v7, "actionList"

    invoke-virtual {v6, v7}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 475
    .local v2, "actionListNode":Lorg/cybergarage/xml/Node;
    if-eqz v2, :cond_0

    .line 477
    invoke-virtual {v2}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 478
    .local v4, "nNode":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 479
    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v5

    .line 480
    .local v5, "node":Lorg/cybergarage/xml/Node;
    invoke-static {v5}, Lorg/cybergarage/upnp/Action;->isActionNode(Lorg/cybergarage/xml/Node;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 478
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    :cond_2
    new-instance v0, Lorg/cybergarage/upnp/Action;

    iget-object v7, p0, Lorg/cybergarage/upnp/Service;->serviceNode:Lorg/cybergarage/xml/Node;

    invoke-direct {v0, v7, v5}, Lorg/cybergarage/upnp/Action;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 483
    .local v0, "action":Lorg/cybergarage/upnp/Action;
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ActionList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getControlURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "controlURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getDescriptionURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Lorg/cybergarage/upnp/Device;
    .locals 3

    .prologue
    .line 204
    new-instance v0, Lorg/cybergarage/upnp/Device;

    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getDeviceNode()Lorg/cybergarage/xml/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    return-object v0
.end method

.method public getEventSubURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "eventSubURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootDevice()Lorg/cybergarage/upnp/Device;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    return-object v0
.end method

.method public getSCPDData()[B
    .locals 4

    .prologue
    .line 453
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v1

    .line 454
    .local v1, "scpdNode":Lorg/cybergarage/xml/Node;
    if-nez v1, :cond_0

    .line 455
    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 461
    :goto_0
    return-object v2

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 458
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

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
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

    .line 461
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_0
.end method

.method public getSCPDURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "SCPDURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 819
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceNode()Lorg/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/cybergarage/upnp/Service;->serviceNode:Lorg/cybergarage/xml/Node;

    return-object v0
.end method

.method public getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;
    .locals 9

    .prologue
    .line 525
    new-instance v6, Lorg/cybergarage/upnp/ServiceStateTable;

    invoke-direct {v6}, Lorg/cybergarage/upnp/ServiceStateTable;-><init>()V

    .line 527
    .local v6, "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getSCPDNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 528
    .local v0, "SCPDNode":Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    .line 546
    :cond_0
    return-object v6

    .line 532
    :cond_1
    const-string v8, "serviceStateTable"

    invoke-virtual {v0, v8}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v7

    .line 535
    .local v7, "stateTableNode":Lorg/cybergarage/xml/Node;
    if-eqz v7, :cond_0

    .line 537
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v4

    .line 538
    .local v4, "serviceNode":Lorg/cybergarage/xml/Node;
    invoke-virtual {v7}, Lorg/cybergarage/xml/Node;->getNNodes()I

    move-result v2

    .line 539
    .local v2, "nNode":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 540
    invoke-virtual {v7, v1}, Lorg/cybergarage/xml/Node;->getNode(I)Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 541
    .local v3, "node":Lorg/cybergarage/xml/Node;
    invoke-static {v3}, Lorg/cybergarage/upnp/StateVariable;->isStateVariableNode(Lorg/cybergarage/xml/Node;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 539
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    :cond_2
    new-instance v5, Lorg/cybergarage/upnp/StateVariable;

    invoke-direct {v5, v4, v3}, Lorg/cybergarage/upnp/StateVariable;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 544
    .local v5, "serviceVar":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v6, v5}, Lorg/cybergarage/upnp/ServiceStateTable;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceType"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    .line 558
    .local v1, "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 559
    .local v2, "tableSize":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 560
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v3

    .line 561
    .local v3, "var":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 562
    .local v4, "varName":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 559
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 567
    .end local v3    # "var":Lorg/cybergarage/upnp/StateVariable;
    .end local v4    # "varName":Ljava/lang/String;
    :goto_1
    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getSubscriber(Ljava/lang/String;)Lorg/cybergarage/upnp/event/Subscriber;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 725
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v3

    .line 726
    .local v3, "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v4

    .line 727
    .local v4, "subListCnt":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 728
    invoke-virtual {v3, v0}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v2

    .line 729
    .local v2, "sub":Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v2, :cond_1

    .line 727
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "sid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 734
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 737
    .end local v1    # "sid":Ljava/lang/String;
    .end local v2    # "sub":Lorg/cybergarage/upnp/event/Subscriber;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSubscriberList()Lorg/cybergarage/upnp/event/SubscriberList;
    .locals 1

    .prologue
    .line 710
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getSubscriberList()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 849
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/xml/ServiceData;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lorg/cybergarage/upnp/Service;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasSID()Z
    .locals 1

    .prologue
    .line 835
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/StringUtil;->hasData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasStateVariable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Service;->getStateVariable(Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isControlURL(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getControlURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEventSubURL(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getEventSubURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSCPDURL(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSCPDURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 581
    if-nez p1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return v0

    .line 583
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 584
    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 586
    goto :goto_0
.end method

.method public isSubscribed()Z
    .locals 1

    .prologue
    .line 840
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->hasSID()Z

    move-result v0

    return v0
.end method

.method public loadSCPD(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 349
    .local v1, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/File;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 350
    .local v2, "scpdNode":Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_0

    .line 351
    const/4 v3, 0x0

    .line 354
    :goto_0
    return v3

    .line 352
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    .line 353
    .local v0, "data":Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    .line 354
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public loadSCPD(Ljava/io/InputStream;)Z
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v1

    .line 363
    .local v1, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/Node;

    move-result-object v2

    .line 364
    .local v2, "scpdNode":Lorg/cybergarage/xml/Node;
    if-nez v2, :cond_0

    .line 365
    const/4 v3, 0x0

    .line 368
    :goto_0
    return v3

    .line 366
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    .line 367
    .local v0, "data":Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V

    .line 368
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public loadSCPD(Ljava/lang/String;)Z
    .locals 5
    .param p1, "scpdStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 333
    :try_start_0
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v2

    .line 334
    .local v2, "parser":Lorg/cybergarage/xml/Parser;
    invoke-virtual {v2, p1}, Lorg/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v3

    .line 335
    .local v3, "scpdNode":Lorg/cybergarage/xml/Node;
    if-nez v3, :cond_0

    .line 336
    const/4 v4, 0x0

    .line 343
    :goto_0
    return v4

    .line 337
    :cond_0
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    .line 338
    .local v0, "data":Lorg/cybergarage/upnp/xml/ServiceData;
    invoke-virtual {v0, v3}, Lorg/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lorg/cybergarage/xml/Node;)V
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    const/4 v4, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "data":Lorg/cybergarage/upnp/xml/ServiceData;
    .end local v2    # "parser":Lorg/cybergarage/xml/Parser;
    .end local v3    # "scpdNode":Lorg/cybergarage/xml/Node;
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Lorg/cybergarage/xml/ParserException;
    new-instance v4, Lorg/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v4, v1}, Lorg/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/cybergarage/upnp/Service;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 165
    return-void
.end method

.method public notify(Lorg/cybergarage/upnp/StateVariable;)V
    .locals 7
    .param p1, "stateVar"    # Lorg/cybergarage/upnp/StateVariable;

    .prologue
    .line 762
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v2

    .line 767
    .local v2, "subList":Lorg/cybergarage/upnp/event/SubscriberList;
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 768
    .local v3, "subListCnt":I
    new-array v4, v3, [Lorg/cybergarage/upnp/event/Subscriber;

    .line 769
    .local v4, "subs":[Lorg/cybergarage/upnp/event/Subscriber;
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 770
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v0

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 771
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    .line 772
    aget-object v1, v4, v0

    .line 773
    .local v1, "sub":Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v1, :cond_2

    .line 771
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 775
    :cond_2
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/Subscriber;->isExpired()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 776
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/Service;->removeSubscriber(Lorg/cybergarage/upnp/event/Subscriber;)V

    goto :goto_2

    .line 780
    .end local v1    # "sub":Lorg/cybergarage/upnp/event/Subscriber;
    :cond_3
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 781
    new-array v4, v3, [Lorg/cybergarage/upnp/event/Subscriber;

    .line 782
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_4

    .line 783
    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v0

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 784
    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_7

    .line 785
    aget-object v1, v4, v0

    .line 786
    .restart local v1    # "sub":Lorg/cybergarage/upnp/event/Subscriber;
    if-nez v1, :cond_6

    .line 784
    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 788
    :cond_6
    invoke-direct {p0, v1, p1}, Lorg/cybergarage/upnp/Service;->notify(Lorg/cybergarage/upnp/event/Subscriber;Lorg/cybergarage/upnp/StateVariable;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    .line 794
    .end local v1    # "sub":Lorg/cybergarage/upnp/event/Subscriber;
    :cond_7
    return-void
.end method

.method public notifyAllStateVariables()V
    .locals 6

    .prologue
    .line 798
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    .line 805
    .local v1, "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 806
    .local v2, "tableSize":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 807
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v3

    .line 808
    .local v3, "var":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/StateVariable;->isSendEvents()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 809
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/Service;->notify(Lorg/cybergarage/upnp/StateVariable;)V

    .line 806
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    .end local v3    # "var":Lorg/cybergarage/upnp/StateVariable;
    :cond_1
    return-void
.end method

.method public removeSubscriber(Lorg/cybergarage/upnp/event/Subscriber;)V
    .locals 1
    .param p1, "sub"    # Lorg/cybergarage/upnp/event/Subscriber;

    .prologue
    .line 720
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getSubscriberList()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/event/SubscriberList;->remove(Ljava/lang/Object;)Z

    .line 721
    return-void
.end method

.method public serviceSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)Z
    .locals 7
    .param p1, "ssdpPacket"    # Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    .prologue
    const/4 v5, 0x1

    .line 662
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v4

    .line 664
    .local v4, "ssdpST":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 665
    const/4 v5, 0x0

    .line 681
    :cond_0
    :goto_0
    return v5

    .line 667
    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 669
    .local v0, "dev":Lorg/cybergarage/upnp/Device;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "serviceNT":Ljava/lang/String;
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v3

    .line 672
    .local v3, "serviceUSN":Ljava/lang/String;
    invoke-static {v4}, Lorg/cybergarage/upnp/device/ST;->isAllDevice(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v5, :cond_2

    .line 673
    invoke-virtual {v0, p1, v1, v3}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 675
    :cond_2
    invoke-static {v4}, Lorg/cybergarage/upnp/device/ST;->isURNService(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v5, :cond_0

    .line 676
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, "serviceType":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v5, :cond_0

    .line 678
    invoke-virtual {v0, p1, v2, v3}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/cybergarage/upnp/control/ActionListener;

    .prologue
    .line 863
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getActionList()Lorg/cybergarage/upnp/ActionList;

    move-result-object v1

    .line 864
    .local v1, "actionList":Lorg/cybergarage/upnp/ActionList;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ActionList;->size()I

    move-result v3

    .line 865
    .local v3, "nActions":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 866
    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/ActionList;->getAction(I)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 867
    .local v0, "action":Lorg/cybergarage/upnp/Action;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Action;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 865
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 869
    .end local v0    # "action":Lorg/cybergarage/upnp/Action;
    :cond_0
    return-void
.end method

.method public setControlURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "controlURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public setDescriptionURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/ServiceData;->setDescriptionURL(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public setEventSubURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "eventSubURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V
    .locals 4
    .param p1, "queryListener"    # Lorg/cybergarage/upnp/control/QueryListener;

    .prologue
    .line 690
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceStateTable()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    .line 697
    .local v1, "stateTable":Lorg/cybergarage/upnp/ServiceStateTable;
    invoke-virtual {v1}, Lorg/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 698
    .local v2, "tableSize":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 699
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v3

    .line 700
    .local v3, "var":Lorg/cybergarage/upnp/StateVariable;
    invoke-virtual {v3, p1}, Lorg/cybergarage/upnp/StateVariable;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    .end local v3    # "var":Lorg/cybergarage/upnp/StateVariable;
    :cond_0
    return-void
.end method

.method public setSCPDURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "SCPDURL"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 824
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/xml/ServiceData;->setSID(Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method public setServiceID(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/cybergarage/upnp/Service;->getServiceNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceType"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public setTimeout(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 854
    invoke-direct {p0}, Lorg/cybergarage/upnp/Service;->getServiceData()Lorg/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/upnp/xml/ServiceData;->setTimeout(J)V

    .line 855
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 906
    iput-object p1, p0, Lorg/cybergarage/upnp/Service;->userData:Ljava/lang/Object;

    .line 907
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/cybergarage/upnp/Service;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 170
    return-void
.end method
