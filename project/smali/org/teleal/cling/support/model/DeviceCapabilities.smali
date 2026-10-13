.class public Lorg/teleal/cling/support/model/DeviceCapabilities;
.super Ljava/lang/Object;
.source "DeviceCapabilities.java"


# instance fields
.field private playMedia:[Lorg/teleal/cling/support/model/StorageMedium;

.field private recMedia:[Lorg/teleal/cling/support/model/StorageMedium;

.field private recQualityModes:[Lorg/teleal/cling/support/model/RecordQualityMode;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/cling/model/action/ActionArgumentValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .line 36
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/teleal/cling/model/action/ActionArgumentValue;>;"
    const-string v0, "PlayMedia"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/teleal/cling/support/model/StorageMedium;->valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v1

    .line 37
    const-string v0, "RecMedia"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/teleal/cling/support/model/StorageMedium;->valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/teleal/cling/support/model/StorageMedium;

    move-result-object v2

    .line 38
    const-string v0, "RecQualityModes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/teleal/cling/support/model/RecordQualityMode;->valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/teleal/cling/support/model/RecordQualityMode;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lorg/teleal/cling/support/model/DeviceCapabilities;-><init>([Lorg/teleal/cling/support/model/StorageMedium;[Lorg/teleal/cling/support/model/StorageMedium;[Lorg/teleal/cling/support/model/RecordQualityMode;)V

    .line 40
    return-void
.end method

.method public constructor <init>([Lorg/teleal/cling/support/model/StorageMedium;)V
    .locals 4
    .param p1, "playMedia"    # [Lorg/teleal/cling/support/model/StorageMedium;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, v3, [Lorg/teleal/cling/support/model/StorageMedium;

    sget-object v1, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/teleal/cling/support/model/StorageMedium;

    .line 32
    new-array v0, v3, [Lorg/teleal/cling/support/model/RecordQualityMode;

    sget-object v1, Lorg/teleal/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 43
    iput-object p1, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->playMedia:[Lorg/teleal/cling/support/model/StorageMedium;

    .line 44
    return-void
.end method

.method public constructor <init>([Lorg/teleal/cling/support/model/StorageMedium;[Lorg/teleal/cling/support/model/StorageMedium;[Lorg/teleal/cling/support/model/RecordQualityMode;)V
    .locals 4
    .param p1, "playMedia"    # [Lorg/teleal/cling/support/model/StorageMedium;
    .param p2, "recMedia"    # [Lorg/teleal/cling/support/model/StorageMedium;
    .param p3, "recQualityModes"    # [Lorg/teleal/cling/support/model/RecordQualityMode;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, v3, [Lorg/teleal/cling/support/model/StorageMedium;

    sget-object v1, Lorg/teleal/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/StorageMedium;

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/teleal/cling/support/model/StorageMedium;

    .line 32
    new-array v0, v3, [Lorg/teleal/cling/support/model/RecordQualityMode;

    sget-object v1, Lorg/teleal/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/teleal/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 47
    iput-object p1, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->playMedia:[Lorg/teleal/cling/support/model/StorageMedium;

    .line 48
    iput-object p2, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/teleal/cling/support/model/StorageMedium;

    .line 49
    iput-object p3, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/teleal/cling/support/model/RecordQualityMode;

    .line 50
    return-void
.end method


# virtual methods
.method public getPlayMedia()[Lorg/teleal/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->playMedia:[Lorg/teleal/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getPlayMediaString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->playMedia:[Lorg/teleal/cling/support/model/StorageMedium;

    invoke-static {v0}, Lorg/teleal/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecMedia()[Lorg/teleal/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/teleal/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getRecMediaString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/teleal/cling/support/model/StorageMedium;

    invoke-static {v0}, Lorg/teleal/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecQualityModes()[Lorg/teleal/cling/support/model/RecordQualityMode;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/teleal/cling/support/model/RecordQualityMode;

    return-object v0
.end method

.method public getRecQualityModesString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/teleal/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/teleal/cling/support/model/RecordQualityMode;

    invoke-static {v0}, Lorg/teleal/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
