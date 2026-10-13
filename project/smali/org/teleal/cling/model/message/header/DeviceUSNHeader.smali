.class public Lorg/teleal/cling/model/message/header/DeviceUSNHeader;
.super Lorg/teleal/cling/model/message/header/UpnpHeader;
.source "DeviceUSNHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/model/message/header/UpnpHeader",
        "<",
        "Lorg/teleal/cling/model/types/NamedDeviceType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/NamedDeviceType;)V
    .locals 0
    .param p1, "value"    # Lorg/teleal/cling/model/types/NamedDeviceType;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/message/header/DeviceUSNHeader;->setValue(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/types/DeviceType;)V
    .locals 1
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "deviceType"    # Lorg/teleal/cling/model/types/DeviceType;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/teleal/cling/model/message/header/UpnpHeader;-><init>()V

    .line 33
    new-instance v0, Lorg/teleal/cling/model/types/NamedDeviceType;

    invoke-direct {v0, p1, p2}, Lorg/teleal/cling/model/types/NamedDeviceType;-><init>(Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/types/DeviceType;)V

    invoke-virtual {p0, v0}, Lorg/teleal/cling/model/message/header/DeviceUSNHeader;->setValue(Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/header/DeviceUSNHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/types/NamedDeviceType;

    invoke-virtual {v0}, Lorg/teleal/cling/model/types/NamedDeviceType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    invoke-static {p1}, Lorg/teleal/cling/model/types/NamedDeviceType;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/model/types/NamedDeviceType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/teleal/cling/model/message/header/DeviceUSNHeader;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/teleal/cling/model/message/header/InvalidHeaderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid device USN header value, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
