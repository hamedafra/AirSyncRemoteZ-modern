.class Lorg/teleal/cling/registry/RemoteItems;
.super Lorg/teleal/cling/registry/RegistryItems;
.source "RemoteItems.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/registry/RegistryItems",
        "<",
        "Lorg/teleal/cling/model/meta/RemoteDevice;",
        "Lorg/teleal/cling/model/gena/RemoteGENASubscription;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/teleal/cling/registry/Registry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/teleal/cling/registry/RegistryImpl;)V
    .locals 0
    .param p1, "registry"    # Lorg/teleal/cling/registry/RegistryImpl;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/teleal/cling/registry/RegistryItems;-><init>(Lorg/teleal/cling/registry/RegistryImpl;)V

    .line 49
    return-void
.end method


# virtual methods
.method bridge synthetic add(Lorg/teleal/cling/model/meta/Device;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/registry/RemoteItems;->add(Lorg/teleal/cling/model/meta/RemoteDevice;)V

    return-void
.end method

.method add(Lorg/teleal/cling/model/meta/RemoteDevice;)V
    .locals 13
    .param p1, "device"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    const/4 v8, 0x0

    .line 65
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {p0, v7}, Lorg/teleal/cling/registry/RemoteItems;->update(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 66
    sget-object v7, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Ignoring addition, device already registered: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0, p1}, Lorg/teleal/cling/registry/RemoteItems;->getResources(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/resource/Resource;

    move-result-object v4

    .line 72
    .local v4, "resources":[Lorg/teleal/cling/model/resource/Resource;
    array-length v9, v4

    move v7, v8

    :goto_0
    if-lt v7, v9, :cond_3

    .line 79
    array-length v9, v4

    move v7, v8

    :goto_1
    if-lt v7, v9, :cond_5

    .line 84
    new-instance v1, Lorg/teleal/cling/registry/RegistryItem;

    .line 85
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v7}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v8

    .line 87
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v7}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 84
    invoke-direct {v1, v8, p1, v7}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 89
    .local v1, "item":Lorg/teleal/cling/registry/RegistryItem;
    sget-object v7, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Adding hydrated remote device to registry with "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryItem;->getExpirationDetails()Lorg/teleal/cling/model/ExpirationDetails;

    move-result-object v9

    invoke-virtual {v9}, Lorg/teleal/cling/model/ExpirationDetails;->getMaxAgeSeconds()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seconds expiration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 91
    iget-object v7, p0, Lorg/teleal/cling/registry/RemoteItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v7, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v7, "-------------------------- START Registry Namespace -----------------------------------\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v7, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v7}, Lorg/teleal/cling/registry/RegistryImpl;->getResources()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 100
    const-string v7, "-------------------------- END Registry Namespace -----------------------------------"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    sget-object v7, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 105
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    sget-object v7, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Completely hydrated remote device graph available, calling listeners: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    iget-object v7, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v7}, Lorg/teleal/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/registry/RegistryListener;

    .line 107
    .local v2, "listener":Lorg/teleal/cling/registry/RegistryListener;
    iget-object v8, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v8}, Lorg/teleal/cling/registry/RegistryImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v8

    invoke-interface {v8}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    .line 108
    new-instance v9, Lorg/teleal/cling/registry/RemoteItems$1;

    invoke-direct {v9, p0, v2, p1}, Lorg/teleal/cling/registry/RemoteItems$1;-><init>(Lorg/teleal/cling/registry/RemoteItems;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    .line 107
    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 72
    .end local v1    # "item":Lorg/teleal/cling/registry/RegistryItem;
    .end local v2    # "listener":Lorg/teleal/cling/registry/RegistryListener;
    :cond_3
    aget-object v0, v4, v7

    .line 73
    .local v0, "deviceResource":Lorg/teleal/cling/model/resource/Resource;
    sget-object v10, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Validating remote device resource; "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 74
    iget-object v10, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/teleal/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/teleal/cling/registry/RegistryImpl;->getResource(Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 75
    new-instance v7, Lorg/teleal/cling/registry/RegistrationException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "URI namespace conflict with already registered resource: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/teleal/cling/registry/RegistrationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 72
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 79
    .end local v0    # "deviceResource":Lorg/teleal/cling/model/resource/Resource;
    :cond_5
    aget-object v6, v4, v7

    .line 80
    .local v6, "validatedResource":Lorg/teleal/cling/model/resource/Resource;
    iget-object v8, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v8, v6}, Lorg/teleal/cling/registry/RegistryImpl;->addResource(Lorg/teleal/cling/model/resource/Resource;)V

    .line 81
    sget-object v8, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Added remote device resource: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 79
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 97
    .end local v6    # "validatedResource":Lorg/teleal/cling/model/resource/Resource;
    .restart local v1    # "item":Lorg/teleal/cling/registry/RegistryItem;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/resource/Resource;

    .line 98
    .local v3, "resource":Lorg/teleal/cling/model/resource/Resource;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method maintain()V
    .locals 12

    .prologue
    .line 249
    iget-object v6, p0, Lorg/teleal/cling/registry/RemoteItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 279
    :cond_0
    return-void

    .line 252
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v1, "expiredRemoteDevices":Ljava/util/Map;, "Ljava/util/Map<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/RemoteDevice;>;"
    iget-object v6, p0, Lorg/teleal/cling/registry/RemoteItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 261
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 268
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 269
    .local v0, "expiredOutgoingSubscriptions":Ljava/util/Set;, "Ljava/util/Set<Lorg/teleal/cling/model/gena/RemoteGENASubscription;>;"
    iget-object v6, p0, Lorg/teleal/cling/registry/RemoteItems;->subscriptionItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_9

    .line 274
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .line 275
    .local v5, "subscription":Lorg/teleal/cling/model/gena/RemoteGENASubscription;
    sget-object v7, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 276
    sget-object v7, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Renewing outgoing subscription: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 277
    :cond_4
    invoke-virtual {p0, v5}, Lorg/teleal/cling/registry/RemoteItems;->renewOutgoingSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V

    goto :goto_3

    .line 253
    .end local v0    # "expiredOutgoingSubscriptions":Ljava/util/Set;, "Ljava/util/Set<Lorg/teleal/cling/model/gena/RemoteGENASubscription;>;"
    .end local v5    # "subscription":Lorg/teleal/cling/model/gena/RemoteGENASubscription;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/registry/RegistryItem;

    .line 254
    .local v4, "remoteItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/RemoteDevice;>;"
    sget-object v6, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 255
    sget-object v6, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Device \'"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\' expires in seconds: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 256
    invoke-virtual {v4}, Lorg/teleal/cling/registry/RegistryItem;->getExpirationDetails()Lorg/teleal/cling/model/ExpirationDetails;

    move-result-object v9

    invoke-virtual {v9}, Lorg/teleal/cling/model/ExpirationDetails;->getSecondsUntilExpiration()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 255
    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 257
    :cond_6
    invoke-virtual {v4}, Lorg/teleal/cling/registry/RegistryItem;->getExpirationDetails()Lorg/teleal/cling/model/ExpirationDetails;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/teleal/cling/model/ExpirationDetails;->hasExpired(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 258
    invoke-virtual {v4}, Lorg/teleal/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/types/UDN;

    invoke-virtual {v4}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 261
    .end local v4    # "remoteItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/RemoteDevice;>;"
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 262
    .local v3, "remoteDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    sget-object v7, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 263
    sget-object v7, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Removing expired: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 264
    :cond_8
    invoke-virtual {p0, v3}, Lorg/teleal/cling/registry/RemoteItems;->remove(Lorg/teleal/cling/model/meta/RemoteDevice;)Z

    goto/16 :goto_1

    .line 269
    .end local v3    # "remoteDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    .restart local v0    # "expiredOutgoingSubscriptions":Ljava/util/Set;, "Ljava/util/Set<Lorg/teleal/cling/model/gena/RemoteGENASubscription;>;"
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/registry/RegistryItem;

    .line 270
    .local v2, "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/RemoteGENASubscription;>;"
    invoke-virtual {v2}, Lorg/teleal/cling/registry/RegistryItem;->getExpirationDetails()Lorg/teleal/cling/model/ExpirationDetails;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lorg/teleal/cling/model/ExpirationDetails;->hasExpired(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 271
    invoke-virtual {v2}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method bridge synthetic remove(Lorg/teleal/cling/model/meta/Device;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/registry/RemoteItems;->remove(Lorg/teleal/cling/model/meta/RemoteDevice;)Z

    move-result v0

    return v0
.end method

.method remove(Lorg/teleal/cling/model/meta/RemoteDevice;)Z
    .locals 1
    .param p1, "remoteDevice"    # Lorg/teleal/cling/model/meta/RemoteDevice;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/registry/RemoteItems;->remove(Lorg/teleal/cling/model/meta/RemoteDevice;Z)Z

    move-result v0

    return v0
.end method

.method remove(Lorg/teleal/cling/model/meta/RemoteDevice;Z)Z
    .locals 13
    .param p1, "remoteDevice"    # Lorg/teleal/cling/model/meta/RemoteDevice;
    .param p2, "shuttingDown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/registry/RegistrationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 173
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lorg/teleal/cling/registry/RemoteItems;->get(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 174
    .local v4, "registeredDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    if-eqz v4, :cond_6

    .line 176
    sget-object v6, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Removing remote device from registry: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v4}, Lorg/teleal/cling/registry/RemoteItems;->getResources(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/resource/Resource;

    move-result-object v6

    array-length v9, v6

    :goto_0
    if-lt v8, v9, :cond_2

    .line 186
    iget-object v6, p0, Lorg/teleal/cling/registry/RemoteItems;->subscriptionItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 187
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/RemoteGENASubscription;>;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 209
    if-nez p2, :cond_1

    .line 210
    iget-object v6, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v6}, Lorg/teleal/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 222
    :cond_1
    iget-object v8, p0, Lorg/teleal/cling/registry/RemoteItems;->deviceItems:Ljava/util/Set;

    new-instance v9, Lorg/teleal/cling/registry/RegistryItem;

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v6

    invoke-direct {v9, v6}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move v6, v7

    .line 227
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/RemoteGENASubscription;>;>;"
    :goto_3
    return v6

    .line 179
    :cond_2
    aget-object v0, v6, v8

    .line 180
    .local v0, "deviceResource":Lorg/teleal/cling/model/resource/Resource;
    iget-object v10, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v10, v0}, Lorg/teleal/cling/registry/RegistryImpl;->removeResource(Lorg/teleal/cling/model/resource/Resource;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 181
    sget-object v10, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unregistered resource: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 179
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "deviceResource":Lorg/teleal/cling/model/resource/Resource;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/RemoteGENASubscription;>;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/registry/RegistryItem;

    .line 191
    .local v3, "outgoingSubscription":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/RemoteGENASubscription;>;"
    invoke-virtual {v3}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-virtual {v6}, Lorg/teleal/cling/model/gena/RemoteGENASubscription;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/meta/RemoteService;

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/RemoteService;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v5

    .line 193
    .local v5, "subscriptionForUDN":Lorg/teleal/cling/model/types/UDN;
    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 194
    sget-object v8, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v6, "Removing outgoing subscription: "

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/teleal/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 196
    if-nez p2, :cond_0

    .line 197
    iget-object v6, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v6}, Lorg/teleal/cling/registry/RegistryImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 198
    new-instance v8, Lorg/teleal/cling/registry/RemoteItems$3;

    invoke-direct {v8, p0, v3}, Lorg/teleal/cling/registry/RemoteItems$3;-><init>(Lorg/teleal/cling/registry/RemoteItems;Lorg/teleal/cling/registry/RegistryItem;)V

    .line 197
    invoke-interface {v6, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 210
    .end local v3    # "outgoingSubscription":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/RemoteGENASubscription;>;"
    .end local v5    # "subscriptionForUDN":Lorg/teleal/cling/model/types/UDN;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/registry/RegistryListener;

    .line 211
    .local v2, "listener":Lorg/teleal/cling/registry/RegistryListener;
    iget-object v8, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v8}, Lorg/teleal/cling/registry/RegistryImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v8

    invoke-interface {v8}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    .line 212
    new-instance v9, Lorg/teleal/cling/registry/RemoteItems$4;

    invoke-direct {v9, p0, v2, v4}, Lorg/teleal/cling/registry/RemoteItems$4;-><init>(Lorg/teleal/cling/registry/RemoteItems;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/RemoteDevice;)V

    .line 211
    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/RemoteGENASubscription;>;>;"
    .end local v2    # "listener":Lorg/teleal/cling/registry/RegistryListener;
    :cond_6
    move v6, v8

    .line 227
    goto/16 :goto_3
.end method

.method removeAll()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/registry/RemoteItems;->removeAll(Z)V

    .line 232
    return-void
.end method

.method removeAll(Z)V
    .locals 4
    .param p1, "shuttingDown"    # Z

    .prologue
    .line 235
    invoke-virtual {p0}, Lorg/teleal/cling/registry/RemoteItems;->get()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0}, Lorg/teleal/cling/registry/RemoteItems;->get()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 236
    .local v0, "allDevices":[Lorg/teleal/cling/model/meta/RemoteDevice;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 239
    return-void

    .line 236
    :cond_0
    aget-object v1, v0, v2

    .line 237
    .local v1, "device":Lorg/teleal/cling/model/meta/RemoteDevice;
    invoke-virtual {p0, v1, p1}, Lorg/teleal/cling/registry/RemoteItems;->remove(Lorg/teleal/cling/model/meta/RemoteDevice;Z)Z

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected renewOutgoingSubscription(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)V
    .locals 2
    .param p1, "subscription"    # Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .prologue
    .line 312
    iget-object v0, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    .line 313
    iget-object v1, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryImpl;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/teleal/cling/protocol/ProtocolFactory;->createSendingRenewal(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingRenewal;

    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Lorg/teleal/cling/registry/RegistryImpl;->executeAsyncProtocol(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 282
    sget-object v3, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    const-string v4, "Updating remote device expiration timestamps on resume"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v2, "toUpdate":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;>;"
    iget-object v3, p0, Lorg/teleal/cling/registry/RemoteItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 290
    return-void

    .line 284
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/registry/RegistryItem;

    .line 285
    .local v1, "remoteItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/RemoteDevice;>;"
    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    .end local v1    # "remoteItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/RemoteDevice;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    .line 288
    .local v0, "identity":Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;
    invoke-virtual {p0, v0}, Lorg/teleal/cling/registry/RemoteItems;->update(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)Z

    goto :goto_1
.end method

.method shutdown()V
    .locals 5

    .prologue
    .line 293
    sget-object v3, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    const-string v4, "Cancelling all outgoing subscriptions to remote devices during shutdown"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 294
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v2, "remoteSubscriptions":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/gena/RemoteGENASubscription;>;"
    iget-object v3, p0, Lorg/teleal/cling/registry/RemoteItems;->subscriptionItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 298
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 305
    sget-object v3, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    const-string v4, "Removing all remote devices from registry during shutdown"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 306
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/teleal/cling/registry/RemoteItems;->removeAll(Z)V

    .line 307
    return-void

    .line 295
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/registry/RegistryItem;

    .line 296
    .local v0, "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/RemoteGENASubscription;>;"
    invoke-virtual {v0}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    .end local v0    # "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/RemoteGENASubscription;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/model/gena/RemoteGENASubscription;

    .line 300
    .local v1, "remoteSubscription":Lorg/teleal/cling/model/gena/RemoteGENASubscription;
    iget-object v4, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v4}, Lorg/teleal/cling/registry/RegistryImpl;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v4

    .line 301
    invoke-interface {v4, v1}, Lorg/teleal/cling/protocol/ProtocolFactory;->createSendingUnsubscribe(Lorg/teleal/cling/model/gena/RemoteGENASubscription;)Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;

    move-result-object v4

    .line 302
    invoke-virtual {v4}, Lorg/teleal/cling/protocol/sync/SendingUnsubscribe;->run()V

    goto :goto_1
.end method

.method start()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method update(Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;)Z
    .locals 8
    .param p1, "rdIdentity"    # Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    iget-object v6, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v6}, Lorg/teleal/cling/registry/RegistryImpl;->getLocalDevices()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 127
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lorg/teleal/cling/registry/RemoteItems;->get(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 128
    .local v3, "registeredRemoteDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    if-eqz v3, :cond_2

    .line 130
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/RemoteDevice;->isRoot()Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    sget-object v4, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Updating root device of embedded: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/RemoteDevice;->getRoot()Lorg/teleal/cling/model/meta/RemoteDevice;

    move-result-object v3

    .line 135
    :cond_1
    new-instance v0, Lorg/teleal/cling/registry/RegistryItem;

    .line 136
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v4

    .line 138
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 135
    invoke-direct {v0, v4, v3, v6}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 141
    .local v0, "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/RemoteDevice;>;"
    sget-object v4, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Updating expiration of: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 142
    iget-object v4, p0, Lorg/teleal/cling/registry/RemoteItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 143
    iget-object v4, p0, Lorg/teleal/cling/registry/RemoteItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v4, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remote device updated, calling listeners: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v4}, Lorg/teleal/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 159
    .end local v0    # "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/RemoteDevice;>;"
    .end local v3    # "registeredRemoteDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    :cond_2
    :goto_1
    return v4

    .line 120
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/LocalDevice;

    .line 121
    .local v2, "localDevice":Lorg/teleal/cling/model/meta/LocalDevice;
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/teleal/cling/model/meta/LocalDevice;->findDevice(Lorg/teleal/cling/model/types/UDN;)Lorg/teleal/cling/model/meta/LocalDevice;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 122
    sget-object v4, Lorg/teleal/cling/registry/RemoteItems;->log:Ljava/util/logging/Logger;

    const-string v6, "Ignoring update, a local device graph contains UDN"

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move v4, v5

    .line 123
    goto :goto_1

    .line 146
    .end local v2    # "localDevice":Lorg/teleal/cling/model/meta/LocalDevice;
    .restart local v0    # "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/RemoteDevice;>;"
    .restart local v3    # "registeredRemoteDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/registry/RegistryListener;

    .line 147
    .local v1, "listener":Lorg/teleal/cling/registry/RegistryListener;
    iget-object v6, p0, Lorg/teleal/cling/registry/RemoteItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v6}, Lorg/teleal/cling/registry/RegistryImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 148
    new-instance v7, Lorg/teleal/cling/registry/RemoteItems$2;

    invoke-direct {v7, p0, v1, v0}, Lorg/teleal/cling/registry/RemoteItems$2;-><init>(Lorg/teleal/cling/registry/RemoteItems;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/registry/RegistryItem;)V

    .line 147
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
