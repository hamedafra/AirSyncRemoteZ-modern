.class abstract Lorg/teleal/cling/registry/RegistryItems;
.super Ljava/lang/Object;
.source "RegistryItems.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/teleal/cling/model/meta/Device;",
        "S:",
        "Lorg/teleal/cling/model/gena/GENASubscription;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final deviceItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/teleal/cling/registry/RegistryItem",
            "<",
            "Lorg/teleal/cling/model/types/UDN;",
            "TD;>;>;"
        }
    .end annotation
.end field

.field protected final registry:Lorg/teleal/cling/registry/RegistryImpl;

.field protected final subscriptionItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/teleal/cling/registry/RegistryItem",
            "<",
            "Ljava/lang/String;",
            "TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/teleal/cling/registry/RegistryImpl;)V
    .locals 1
    .param p1, "registry"    # Lorg/teleal/cling/registry/RegistryImpl;

    .prologue
    .line 45
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/registry/RegistryItems;->subscriptionItems:Ljava/util/Set;

    .line 46
    iput-object p1, p0, Lorg/teleal/cling/registry/RegistryItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    .line 47
    return-void
.end method


# virtual methods
.method abstract add(Lorg/teleal/cling/model/meta/Device;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation
.end method

.method addSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    .local p1, "subscription":Lorg/teleal/cling/model/gena/GENASubscription;, "TS;"
    new-instance v0, Lorg/teleal/cling/registry/RegistryItem;

    .line 144
    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/GENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/GENASubscription;->getActualDurationSeconds()I

    move-result v2

    .line 143
    invoke-direct {v0, v1, p1, v2}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 149
    .local v0, "subscriptionItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;TS;>;"
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryItems;->subscriptionItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method contains(Lorg/teleal/cling/model/meta/Device;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    .local p1, "device":Lorg/teleal/cling/model/meta/Device;, "TD;"
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/registry/RegistryItems;->contains(Lorg/teleal/cling/model/types/UDN;)Z

    move-result v0

    return v0
.end method

.method contains(Lorg/teleal/cling/model/types/UDN;)Z
    .locals 2
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;

    .prologue
    .line 137
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

    new-instance v1, Lorg/teleal/cling/registry/RegistryItem;

    invoke-direct {v1, p1}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method get()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 126
    .local v0, "devices":Ljava/util/Collection;, "Ljava/util/Collection<TD;>;"
    iget-object v2, p0, Lorg/teleal/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    return-object v0

    .line 126
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/registry/RegistryItem;

    .line 127
    .local v1, "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;TD;>;"
    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/Device;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method get(Lorg/teleal/cling/model/types/DeviceType;)Ljava/util/Collection;
    .locals 5
    .param p1, "deviceType"    # Lorg/teleal/cling/model/types/DeviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/DeviceType;",
            ")",
            "Ljava/util/Collection",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 97
    .local v1, "devices":Ljava/util/Collection;, "Ljava/util/Collection<TD;>;"
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    return-object v1

    .line 97
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/registry/RegistryItem;

    .line 98
    .local v2, "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;TD;>;"
    invoke-virtual {v2}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v3, p1}, Lorg/teleal/cling/model/meta/Device;->findDevices(Lorg/teleal/cling/model/types/DeviceType;)[Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 99
    .local v0, "d":[Lorg/teleal/cling/model/meta/Device;
    if-eqz v0, :cond_0

    .line 100
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method get(Lorg/teleal/cling/model/types/ServiceType;)Ljava/util/Collection;
    .locals 5
    .param p1, "serviceType"    # Lorg/teleal/cling/model/types/ServiceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/ServiceType;",
            ")",
            "Ljava/util/Collection",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 114
    .local v1, "devices":Ljava/util/Collection;, "Ljava/util/Collection<TD;>;"
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    return-object v1

    .line 114
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/registry/RegistryItem;

    .line 116
    .local v2, "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;TD;>;"
    invoke-virtual {v2}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v3, p1}, Lorg/teleal/cling/model/meta/Device;->findDevices(Lorg/teleal/cling/model/types/ServiceType;)[Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 117
    .local v0, "d":[Lorg/teleal/cling/model/meta/Device;
    if-eqz v0, :cond_0

    .line 118
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method get(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;
    .locals 5
    .param p1, "udn"    # Lorg/teleal/cling/model/types/UDN;
    .param p2, "rootOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/teleal/cling/model/types/UDN;",
            "Z)TD;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    iget-object v3, p0, Lorg/teleal/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    .line 73
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/registry/RegistryItem;

    .line 74
    .local v2, "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;TD;>;"
    invoke-virtual {v2}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/Device;

    .line 75
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;, "TD;"
    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 78
    if-nez p2, :cond_0

    .line 79
    invoke-virtual {v2}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/meta/Device;

    invoke-virtual {v3, p1}, Lorg/teleal/cling/model/meta/Device;->findDevice(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    .line 80
    .local v1, "foundDevice":Lorg/teleal/cling/model/meta/Device;, "TD;"
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method getDeviceItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/teleal/cling/registry/RegistryItem",
            "<",
            "Lorg/teleal/cling/model/types/UDN;",
            "TD;>;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryItems;->deviceItems:Ljava/util/Set;

    return-object v0
.end method

.method getResources(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/resource/Resource;
    .locals 4
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/registry/RegistrationException;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/teleal/cling/UpnpServiceConfiguration;->getNamespace()Lorg/teleal/cling/model/Namespace;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/teleal/cling/model/Namespace;->getResources(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/resource/Resource;
    :try_end_0
    .catch Lorg/teleal/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "ex":Lorg/teleal/cling/model/ValidationException;
    new-instance v1, Lorg/teleal/cling/registry/RegistrationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resource discover error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/teleal/cling/model/ValidationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/teleal/cling/registry/RegistrationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getSubscription(Ljava/lang/String;)Lorg/teleal/cling/model/gena/GENASubscription;
    .locals 3
    .param p1, "subscriptionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    iget-object v1, p0, Lorg/teleal/cling/registry/RegistryItems;->subscriptionItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 165
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/registry/RegistryItem;

    .line 166
    .local v0, "registryItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;TS;>;"
    invoke-virtual {v0}, Lorg/teleal/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v0}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/gena/GENASubscription;

    goto :goto_0
.end method

.method getSubscriptionItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/teleal/cling/registry/RegistryItem",
            "<",
            "Ljava/lang/String;",
            "TS;>;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryItems;->subscriptionItems:Ljava/util/Set;

    return-object v0
.end method

.method abstract maintain()V
.end method

.method abstract remove(Lorg/teleal/cling/model/meta/Device;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation
.end method

.method abstract removeAll()V
.end method

.method removeSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    .local p1, "subscription":Lorg/teleal/cling/model/gena/GENASubscription;, "TS;"
    iget-object v0, p0, Lorg/teleal/cling/registry/RegistryItems;->subscriptionItems:Ljava/util/Set;

    new-instance v1, Lorg/teleal/cling/registry/RegistryItem;

    invoke-virtual {p1}, Lorg/teleal/cling/model/gena/GENASubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract shutdown()V
.end method

.method updateSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lorg/teleal/cling/registry/RegistryItems;, "Lorg/teleal/cling/registry/RegistryItems<TD;TS;>;"
    .local p1, "subscription":Lorg/teleal/cling/model/gena/GENASubscription;, "TS;"
    invoke-virtual {p0, p1}, Lorg/teleal/cling/registry/RegistryItems;->removeSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Lorg/teleal/cling/registry/RegistryItems;->addSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)V

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
