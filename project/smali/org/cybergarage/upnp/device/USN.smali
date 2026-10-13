.class public Lorg/cybergarage/upnp/device/USN;
.super Ljava/lang/Object;
.source "USN.java"


# static fields
.field public static final ROOTDEVICE:Ljava/lang/String; = "upnp:rootdevice"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "usnValue"    # Ljava/lang/String;

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 41
    const-string v2, ""

    .line 46
    :goto_0
    return-object v2

    .line 42
    :cond_0
    const-string v2, "::"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "idx":I
    if-gez v0, :cond_1

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 45
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 46
    .local v1, "udnValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static final isHiMultiScreenDevice(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ntValue"    # Ljava/lang/String;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    const-string v0, "urn:schemas-upnp-org:device:HiMultiScreenServerDevice:1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final isRootDevice(Ljava/lang/String;)Z
    .locals 1
    .param p0, "usnValue"    # Ljava/lang/String;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0

    :cond_0
    const-string v0, "upnp:rootdevice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
