.class public Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;
.super Ljava/lang/Object;
.source "HiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_RETRY_TIMES_ADD_SERVICES:I = 0x1


# instance fields
.field private mIpAddress:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/hisilicon/multiscreen/protocol/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo$1;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mIpAddress:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mName:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mIpAddress:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mName:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mIpAddress:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mName:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    .line 304
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 305
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)V
    .locals 2
    .param p1, "controlPoint"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mIpAddress:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mName:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    .line 78
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 79
    .local v0, "device":Lorg/cybergarage/upnp/Device;
    if-nez v0, :cond_0

    .line 81
    const-string v1, "Current device is null, fail to construct HiDeviceInfo."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->uri2Ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mIpAddress:Ljava/lang/String;

    .line 89
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mIpAddress:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mName:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    .line 67
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mIpAddress:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mName:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    .line 70
    return-void
.end method

.method private addAllUpnpServices(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z
    .locals 1
    .param p1, "controlPoint"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .prologue
    .line 372
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->addAllUpnpServices(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;I)Z

    move-result v0

    return v0
.end method

.method private addAllUpnpServices(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;I)Z
    .locals 5
    .param p1, "controlPoint"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;
    .param p2, "retryTimes"    # I

    .prologue
    .line 383
    const/4 v1, 0x0

    .line 384
    .local v1, "isOK":Z
    const/4 v3, 0x0

    .line 385
    .local v3, "vinputOK":Z
    const/4 v0, 0x0

    .line 386
    .local v0, "gsensorOK":Z
    const/4 v2, 0x0

    .line 388
    .local v2, "vimeOK":Z
    const/4 v4, 0x1

    if-lt p2, v4, :cond_0

    const/4 v4, 0x4

    if-le p2, v4, :cond_1

    .line 391
    :cond_0
    const/4 p2, 0x1

    .line 394
    :cond_1
    iget-object v4, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    if-nez v4, :cond_2

    .line 396
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    .line 407
    :cond_2
    if-nez v3, :cond_3

    .line 409
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->addVinputService(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z

    move-result v3

    .line 413
    :cond_3
    if-nez v0, :cond_4

    .line 415
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->addGsensorService(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z

    move-result v0

    .line 419
    :cond_4
    if-nez v2, :cond_5

    .line 421
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->addVIMEService(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z

    move-result v2

    .line 424
    :cond_5
    and-int v4, v3, v0

    and-int v1, v4, v2

    .line 425
    if-eqz v1, :cond_6

    .line 434
    :goto_0
    return v1

    .line 430
    :cond_6
    add-int/lit8 p2, p2, -0x1

    .line 432
    const/4 v4, -0x1

    if-gt p2, v4, :cond_2

    goto :goto_0
.end method

.method private addOneUpnpService(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "controlPoint"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "VarName"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-virtual {p1, p2, p3}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/StateVariable;

    move-result-object v1

    .line 447
    .local v1, "var":Lorg/cybergarage/upnp/StateVariable;
    if-nez v1, :cond_0

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add service fail: state variable not exist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 450
    const/4 v2, 0x0

    .line 457
    :goto_0
    return v2

    .line 452
    :cond_0
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;-><init>()V

    .line 453
    .local v0, "sInfo":Lcom/hisilicon/multiscreen/protocol/ServiceInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v1}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v1}, Lorg/cybergarage/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->uri2port(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->setServicePort(I)V

    .line 456
    invoke-virtual {v1}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->addService(Ljava/lang/String;Lcom/hisilicon/multiscreen/protocol/ServiceInfo;)V

    .line 457
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addGsensorService(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z
    .locals 3
    .param p1, "controlPoint"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .prologue
    .line 340
    const-string v1, "urn:schemas-upnp-org:service:GsensorControlServer:1"

    const-string v2, "HI_UPNP_VAR_GsensorServerURI"

    .line 341
    invoke-direct {p0, p1, v1, v2}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->addOneUpnpService(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 344
    .local v0, "retValue":Z
    return v0
.end method

.method public addService(Ljava/lang/String;Lcom/hisilicon/multiscreen/protocol/ServiceInfo;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    invoke-virtual {p2}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    invoke-virtual {p2}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->getServicePort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->setServicePort(I)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addVIMEService(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z
    .locals 5
    .param p1, "controlPoint"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 351
    .local v1, "retValue":Z
    const-string v3, "urn:schemas-upnp-org:service:VIMEControlServer:1"

    const-string v4, "HI_UPNP_VAR_VIMEControlServerURI"

    .line 352
    invoke-direct {p0, p1, v3, v4}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->addOneUpnpService(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 357
    .local v0, "controlReslut":Z
    const-string v3, "urn:schemas-upnp-org:service:VIMEControlServer:1"

    const-string v4, "HI_UPNP_VAR_VIMEDataServerURI"

    .line 358
    invoke-direct {p0, p1, v3, v4}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->addOneUpnpService(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 361
    .local v2, "transferReslut":Z
    and-int v1, v0, v2

    .line 362
    return v1
.end method

.method public addVinputService(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z
    .locals 3
    .param p1, "controlPoint"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .prologue
    .line 330
    const-string v1, "urn:schemas-upnp-org:service:VinputControlServer:1"

    const-string v2, "HI_UPNP_VAR_VinpuServerURI"

    .line 331
    invoke-direct {p0, p1, v1, v2}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->addOneUpnpService(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 334
    .local v0, "retValue":Z
    return v0
.end method

.method public canSyncInfo(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z
    .locals 1
    .param p1, "controlPoint"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->addAllUpnpServices(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z

    move-result v0

    return v0
.end method

.method public canSyncInfo(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;I)Z
    .locals 1
    .param p1, "controlPoint"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;
    .param p2, "retryTimes"    # I

    .prologue
    .line 324
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->addAllUpnpServices(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;I)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    return-object v0
.end method

.method public getDeviceIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/hisilicon/multiscreen/protocol/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/hisilicon/multiscreen/protocol/ServiceInfo;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mIpAddress:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mName:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 296
    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    const-class v2, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    .line 297
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    .line 296
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method public removeService(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method public resetIp(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z
    .locals 5
    .param p1, "controlPoint"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 100
    .local v2, "isOK":Z
    const/4 v1, 0x0

    .line 102
    .local v1, "ipAddress":Ljava/lang/String;
    const/4 v3, 0x0

    .line 104
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 105
    .local v0, "device":Lorg/cybergarage/upnp/Device;
    if-nez v0, :cond_0

    .line 107
    const-string v4, "Current device is null, fail to reset ipAddress of HiDeviceInfo."

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 108
    const/4 v4, 0x0

    .line 124
    :goto_0
    return v4

    .line 111
    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->uri2Ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    .line 113
    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    :cond_1
    const/4 v2, 0x0

    .line 116
    const-string v4, "Reset ipAddress of HiDeviceInfo failed."

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    :goto_1
    move v4, v2

    .line 124
    goto :goto_0

    .line 120
    :cond_2
    const/4 v2, 0x1

    .line 121
    invoke-virtual {p0, v1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->setDeviceIP(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v3}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public resetServices(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z
    .locals 3
    .param p1, "controlPoint"    # Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    .prologue
    .line 135
    const/4 v0, 0x2

    .line 136
    .local v0, "RETRY_TIMES":I
    const/4 v1, 0x0

    .line 138
    .local v1, "isOK":Z
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->resetIp(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;)Z

    move-result v1

    .line 139
    if-eqz v1, :cond_0

    .line 143
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->canSyncInfo(Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;I)Z

    .line 146
    :cond_0
    return v1
.end method

.method public setDeviceIP(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mIpAddress:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mName:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 265
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->mServices:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 273
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method
