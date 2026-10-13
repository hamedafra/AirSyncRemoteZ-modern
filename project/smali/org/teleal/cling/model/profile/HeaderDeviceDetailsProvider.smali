.class public Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider;
.super Ljava/lang/Object;
.source "HeaderDeviceDetailsProvider.java"

# interfaces
.implements Lorg/teleal/cling/model/profile/DeviceDetailsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;
    }
.end annotation


# instance fields
.field private final defaultDeviceDetails:Lorg/teleal/cling/model/meta/DeviceDetails;

.field private final headerDetails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;",
            "Lorg/teleal/cling/model/meta/DeviceDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceDetails;)V
    .locals 1
    .param p1, "defaultDeviceDetails"    # Lorg/teleal/cling/model/meta/DeviceDetails;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider;-><init>(Lorg/teleal/cling/model/meta/DeviceDetails;Ljava/util/Map;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/DeviceDetails;Ljava/util/Map;)V
    .locals 0
    .param p1, "defaultDeviceDetails"    # Lorg/teleal/cling/model/meta/DeviceDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/meta/DeviceDetails;",
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;",
            "Lorg/teleal/cling/model/meta/DeviceDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "headerDetails":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;Lorg/teleal/cling/model/meta/DeviceDetails;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider;->defaultDeviceDetails:Lorg/teleal/cling/model/meta/DeviceDetails;

    .line 78
    if-eqz p2, :cond_0

    .end local p2    # "headerDetails":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;Lorg/teleal/cling/model/meta/DeviceDetails;>;"
    :goto_0
    iput-object p2, p0, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider;->headerDetails:Ljava/util/Map;

    .line 79
    return-void

    .line 78
    .restart local p2    # "headerDetails":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;Lorg/teleal/cling/model/meta/DeviceDetails;>;"
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "headerDetails":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;Lorg/teleal/cling/model/meta/DeviceDetails;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getDefaultDeviceDetails()Lorg/teleal/cling/model/meta/DeviceDetails;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider;->defaultDeviceDetails:Lorg/teleal/cling/model/meta/DeviceDetails;

    return-object v0
.end method

.method public getHeaderDetails()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;",
            "Lorg/teleal/cling/model/meta/DeviceDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider;->headerDetails:Ljava/util/Map;

    return-object v0
.end method

.method public provide(Lorg/teleal/cling/model/profile/ControlPointInfo;)Lorg/teleal/cling/model/meta/DeviceDetails;
    .locals 6
    .param p1, "info"    # Lorg/teleal/cling/model/profile/ControlPointInfo;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/teleal/cling/model/profile/ControlPointInfo;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/message/UpnpHeaders;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider;->getDefaultDeviceDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v3

    .line 100
    :goto_0
    return-object v3

    .line 92
    :cond_1
    invoke-virtual {p0}, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider;->getHeaderDetails()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 100
    invoke-virtual {p0}, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider;->getDefaultDeviceDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v3

    goto :goto_0

    .line 92
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;

    .line 94
    .local v2, "key":Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;
    invoke-virtual {p1}, Lorg/teleal/cling/model/profile/ControlPointInfo;->getHeaders()Lorg/teleal/cling/model/message/UpnpHeaders;

    move-result-object v4

    invoke-virtual {v2}, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;->getHeaderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/teleal/cling/model/message/UpnpHeaders;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .local v1, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "headerValue":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider$Key;->isValuePatternMatch(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    invoke-virtual {p0}, Lorg/teleal/cling/model/profile/HeaderDeviceDetailsProvider;->getHeaderDetails()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/meta/DeviceDetails;

    goto :goto_0
.end method
