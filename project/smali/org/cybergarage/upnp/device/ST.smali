.class public Lorg/cybergarage/upnp/device/ST;
.super Ljava/lang/Object;
.source "ST.java"


# static fields
.field public static final ALL_DEVICE:Ljava/lang/String; = "ssdp:all"

.field public static final MULTISCREEN_DEVICE:Ljava/lang/String; = "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

.field public static final ROOT_DEVICE:Ljava/lang/String; = "upnp:rootdevice"

.field public static final URN_DEVICE:Ljava/lang/String; = "urn:schemas-upnp-org:device:"

.field public static final URN_SERVICE:Ljava/lang/String; = "urn:schemas-upnp-org:service:"

.field public static final UUID_DEVICE:Ljava/lang/String; = "uuid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAllDevice(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 33
    if-nez p0, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    const-string v1, "ssdp:all"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 37
    const-string v0, "\"ssdp:all\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final isHiMultiScreenDevice(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 79
    if-nez p0, :cond_1

    .line 80
    const/4 v0, 0x0

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    const-string v1, "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 83
    const-string v0, "\"urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final isRootDevice(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 42
    if-nez p0, :cond_1

    .line 43
    const/4 v0, 0x0

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    const-string v1, "upnp:rootdevice"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 46
    const-string v0, "\"upnp:rootdevice\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final isURNDevice(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 60
    if-nez p0, :cond_1

    .line 61
    const/4 v0, 0x0

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    const-string v1, "urn:schemas-upnp-org:device:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 64
    const-string v0, "\"urn:schemas-upnp-org:device:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final isURNService(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 69
    if-nez p0, :cond_1

    .line 70
    const/4 v0, 0x0

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    const-string v1, "urn:schemas-upnp-org:service:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 73
    const-string v0, "\"urn:schemas-upnp-org:service:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final isUUIDDevice(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 51
    if-nez p0, :cond_1

    .line 52
    const/4 v0, 0x0

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    const-string v1, "uuid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 55
    const-string v0, "\"uuid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
