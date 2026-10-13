.class public Lorg/teleal/cling/binding/staging/MutableDevice;
.super Ljava/lang/Object;
.source "MutableDevice.java"


# instance fields
.field public baseURL:Ljava/net/URL;

.field public deviceType:Ljava/lang/String;

.field public dlnaCaps:Lorg/teleal/cling/model/types/DLNACaps;

.field public dlnaDocs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/model/types/DLNADoc;",
            ">;"
        }
    .end annotation
.end field

.field public embeddedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/binding/staging/MutableDevice;",
            ">;"
        }
    .end annotation
.end field

.field public friendlyName:Ljava/lang/String;

.field public icons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/binding/staging/MutableIcon;",
            ">;"
        }
    .end annotation
.end field

.field public manufacturer:Ljava/lang/String;

.field public manufacturerURI:Ljava/net/URI;

.field public modelDescription:Ljava/lang/String;

.field public modelName:Ljava/lang/String;

.field public modelNumber:Ljava/lang/String;

.field public modelURI:Ljava/net/URI;

.field public parentDevice:Lorg/teleal/cling/binding/staging/MutableDevice;

.field public presentationURI:Ljava/net/URI;

.field public serialNumber:Ljava/lang/String;

.field public services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/binding/staging/MutableService;",
            ">;"
        }
    .end annotation
.end field

.field public udaVersion:Lorg/teleal/cling/binding/staging/MutableUDAVersion;

.field public udn:Lorg/teleal/cling/model/types/UDN;

.field public upc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    invoke-direct {v0}, Lorg/teleal/cling/binding/staging/MutableUDAVersion;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->udaVersion:Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->dlnaDocs:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->icons:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->services:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->embeddedDevices:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public build(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Device;
    .locals 2
    .param p1, "prototype"    # Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/teleal/cling/binding/staging/MutableDevice;->createDeviceVersion()Lorg/teleal/cling/model/meta/UDAVersion;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->baseURL:Ljava/net/URL;

    invoke-virtual {p0, p1, v0, v1}, Lorg/teleal/cling/binding/staging/MutableDevice;->build(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/meta/UDAVersion;Ljava/net/URL;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/meta/UDAVersion;Ljava/net/URL;)Lorg/teleal/cling/model/meta/Device;
    .locals 9
    .param p1, "prototype"    # Lorg/teleal/cling/model/meta/Device;
    .param p2, "deviceVersion"    # Lorg/teleal/cling/model/meta/UDAVersion;
    .param p3, "baseURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v7, "embeddedDevicesList":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/Device;>;"
    iget-object v0, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->embeddedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->udn:Lorg/teleal/cling/model/types/UDN;

    .line 78
    invoke-virtual {p0}, Lorg/teleal/cling/binding/staging/MutableDevice;->createDeviceType()Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v3

    .line 79
    invoke-virtual {p0, p3}, Lorg/teleal/cling/binding/staging/MutableDevice;->createDeviceDetails(Ljava/net/URL;)Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v4

    .line 80
    invoke-virtual {p0}, Lorg/teleal/cling/binding/staging/MutableDevice;->createIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v5

    .line 81
    invoke-virtual {p0, p1}, Lorg/teleal/cling/binding/staging/MutableDevice;->createServices(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/meta/Service;

    move-result-object v6

    move-object v0, p1

    move-object v2, p2

    .line 75
    invoke-virtual/range {v0 .. v7}, Lorg/teleal/cling/model/meta/Device;->newInstance(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/UDAVersion;Lorg/teleal/cling/model/types/DeviceType;Lorg/teleal/cling/model/meta/DeviceDetails;[Lorg/teleal/cling/model/meta/Icon;[Lorg/teleal/cling/model/meta/Service;Ljava/util/List;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/teleal/cling/binding/staging/MutableDevice;

    .line 73
    .local v8, "embeddedDevice":Lorg/teleal/cling/binding/staging/MutableDevice;
    invoke-virtual {v8, p1, p2, p3}, Lorg/teleal/cling/binding/staging/MutableDevice;->build(Lorg/teleal/cling/model/meta/Device;Lorg/teleal/cling/model/meta/UDAVersion;Ljava/net/URL;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createDeviceDetails(Ljava/net/URL;)Lorg/teleal/cling/model/meta/DeviceDetails;
    .locals 10
    .param p1, "baseURL"    # Ljava/net/URL;

    .prologue
    .line 95
    new-instance v0, Lorg/teleal/cling/model/meta/DeviceDetails;

    .line 97
    iget-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->friendlyName:Ljava/lang/String;

    .line 98
    new-instance v3, Lorg/teleal/cling/model/meta/ManufacturerDetails;

    iget-object v1, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->manufacturer:Ljava/lang/String;

    iget-object v4, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->manufacturerURI:Ljava/net/URI;

    invoke-direct {v3, v1, v4}, Lorg/teleal/cling/model/meta/ManufacturerDetails;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    .line 99
    new-instance v4, Lorg/teleal/cling/model/meta/ModelDetails;

    iget-object v1, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->modelName:Ljava/lang/String;

    iget-object v5, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->modelDescription:Ljava/lang/String;

    iget-object v6, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->modelNumber:Ljava/lang/String;

    iget-object v7, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->modelURI:Ljava/net/URI;

    invoke-direct {v4, v1, v5, v6, v7}, Lorg/teleal/cling/model/meta/ModelDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 100
    iget-object v5, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->serialNumber:Ljava/lang/String;

    iget-object v6, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->upc:Ljava/lang/String;

    iget-object v7, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->presentationURI:Ljava/net/URI;

    iget-object v1, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->dlnaDocs:Ljava/util/List;

    iget-object v8, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->dlnaDocs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/teleal/cling/model/types/DLNADoc;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/teleal/cling/model/types/DLNADoc;

    iget-object v9, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->dlnaCaps:Lorg/teleal/cling/model/types/DLNACaps;

    move-object v1, p1

    .line 95
    invoke-direct/range {v0 .. v9}, Lorg/teleal/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/teleal/cling/model/meta/ManufacturerDetails;Lorg/teleal/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/teleal/cling/model/types/DLNADoc;Lorg/teleal/cling/model/types/DLNACaps;)V

    return-object v0
.end method

.method public createDeviceType()Lorg/teleal/cling/model/types/DeviceType;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->deviceType:Ljava/lang/String;

    invoke-static {v0}, Lorg/teleal/cling/model/types/DeviceType;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public createDeviceVersion()Lorg/teleal/cling/model/meta/UDAVersion;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lorg/teleal/cling/model/meta/UDAVersion;

    iget-object v1, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->udaVersion:Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    iget v1, v1, Lorg/teleal/cling/binding/staging/MutableUDAVersion;->major:I

    iget-object v2, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->udaVersion:Lorg/teleal/cling/binding/staging/MutableUDAVersion;

    iget v2, v2, Lorg/teleal/cling/binding/staging/MutableUDAVersion;->minor:I

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/meta/UDAVersion;-><init>(II)V

    return-object v0
.end method

.method public createIcons()[Lorg/teleal/cling/model/meta/Icon;
    .locals 6

    .prologue
    .line 105
    iget-object v4, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->icons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Lorg/teleal/cling/model/meta/Icon;

    .line 106
    .local v3, "iconArray":[Lorg/teleal/cling/model/meta/Icon;
    const/4 v0, 0x0

    .line 107
    .local v0, "i":I
    iget-object v4, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->icons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    return-object v3

    .line 107
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableIcon;

    .line 108
    .local v2, "icon":Lorg/teleal/cling/binding/staging/MutableIcon;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v2}, Lorg/teleal/cling/binding/staging/MutableIcon;->build()Lorg/teleal/cling/model/meta/Icon;

    move-result-object v5

    aput-object v5, v3, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public createServices(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/meta/Service;
    .locals 6
    .param p1, "prototype"    # Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v4, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->services:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/teleal/cling/model/meta/Device;->newServiceArray(I)[Lorg/teleal/cling/model/meta/Service;

    move-result-object v3

    .line 115
    .local v3, "services":[Lorg/teleal/cling/model/meta/Service;
    const/4 v0, 0x0

    .line 116
    .local v0, "i":I
    iget-object v4, p0, Lorg/teleal/cling/binding/staging/MutableDevice;->services:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    return-object v3

    .line 116
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableService;

    .line 117
    .local v2, "service":Lorg/teleal/cling/binding/staging/MutableService;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v2, p1}, Lorg/teleal/cling/binding/staging/MutableService;->build(Lorg/teleal/cling/model/meta/Device;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v5

    aput-object v5, v3, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method
