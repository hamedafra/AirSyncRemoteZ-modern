.class public Lorg/teleal/cling/support/model/DeviceItem;
.super Ljava/lang/Object;
.source "DeviceItem.java"


# instance fields
.field private device:Lorg/teleal/cling/model/meta/Device;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private label:[Ljava/lang/String;

.field private udn:Lorg/teleal/cling/model/types/UDN;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/model/DeviceItem;->udn:Lorg/teleal/cling/model/types/UDN;

    .line 40
    iput-object p1, p0, Lorg/teleal/cling/support/model/DeviceItem;->device:Lorg/teleal/cling/model/meta/Device;

    .line 41
    return-void
.end method

.method public varargs constructor <init>(Lorg/teleal/cling/model/meta/Device;[Ljava/lang/String;)V
    .locals 1
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;
    .param p2, "label"    # [Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/model/DeviceItem;->udn:Lorg/teleal/cling/model/types/UDN;

    .line 45
    iput-object p1, p0, Lorg/teleal/cling/support/model/DeviceItem;->device:Lorg/teleal/cling/model/meta/Device;

    .line 46
    iput-object p2, p0, Lorg/teleal/cling/support/model/DeviceItem;->label:[Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    if-ne p0, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 78
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 80
    check-cast v0, Lorg/teleal/cling/support/model/DeviceItem;

    .line 82
    .local v0, "that":Lorg/teleal/cling/support/model/DeviceItem;
    iget-object v3, p0, Lorg/teleal/cling/support/model/DeviceItem;->udn:Lorg/teleal/cling/model/types/UDN;

    iget-object v4, v0, Lorg/teleal/cling/support/model/DeviceItem;->udn:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 83
    goto :goto_0
.end method

.method public getDevice()Lorg/teleal/cling/model/meta/Device;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/teleal/cling/support/model/DeviceItem;->device:Lorg/teleal/cling/model/meta/Device;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/teleal/cling/support/model/DeviceItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/teleal/cling/support/model/DeviceItem;->label:[Ljava/lang/String;

    return-object v0
.end method

.method public getUdn()Lorg/teleal/cling/model/types/UDN;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/teleal/cling/support/model/DeviceItem;->udn:Lorg/teleal/cling/model/types/UDN;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/teleal/cling/support/model/DeviceItem;->udn:Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/UDN;->hashCode()I

    move-result v0

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/teleal/cling/support/model/DeviceItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 71
    return-void
.end method

.method public setLabel([Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # [Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/teleal/cling/support/model/DeviceItem;->label:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lorg/teleal/cling/support/model/DeviceItem;->device:Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/teleal/cling/support/model/DeviceItem;->device:Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "display":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/teleal/cling/support/model/DeviceItem;->device:Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Device;->isFullyHydrated()Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v0    # "display":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 100
    :cond_0
    iget-object v1, p0, Lorg/teleal/cling/support/model/DeviceItem;->device:Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Device;->getDisplayString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "display":Ljava/lang/String;
    goto :goto_0

    .line 104
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " *"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
