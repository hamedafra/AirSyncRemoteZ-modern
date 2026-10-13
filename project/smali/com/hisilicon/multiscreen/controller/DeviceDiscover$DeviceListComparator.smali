.class Lcom/hisilicon/multiscreen/controller/DeviceDiscover$DeviceListComparator;
.super Ljava/lang/Object;
.source "DeviceDiscover.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/controller/DeviceDiscover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceListComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/cybergarage/upnp/Device;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/controller/DeviceDiscover;


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/controller/DeviceDiscover;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/hisilicon/multiscreen/controller/DeviceDiscover$DeviceListComparator;->this$0:Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 245
    check-cast p1, Lorg/cybergarage/upnp/Device;

    check-cast p2, Lorg/cybergarage/upnp/Device;

    invoke-virtual {p0, p1, p2}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover$DeviceListComparator;->compare(Lorg/cybergarage/upnp/Device;Lorg/cybergarage/upnp/Device;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/cybergarage/upnp/Device;Lorg/cybergarage/upnp/Device;)I
    .locals 2
    .param p1, "lDevice"    # Lorg/cybergarage/upnp/Device;
    .param p2, "rDevice"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 251
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 253
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    .line 255
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 257
    const/4 v0, -0x1

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
