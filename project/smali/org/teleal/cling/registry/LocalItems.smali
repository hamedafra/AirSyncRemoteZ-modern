.class Lorg/teleal/cling/registry/LocalItems;
.super Lorg/teleal/cling/registry/RegistryItems;
.source "LocalItems.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/registry/RegistryItems",
        "<",
        "Lorg/teleal/cling/model/meta/LocalDevice;",
        "Lorg/teleal/cling/model/gena/LocalGENASubscription;",
        ">;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected randomGenerator:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/teleal/cling/registry/Registry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/teleal/cling/registry/RegistryImpl;)V
    .locals 1
    .param p1, "registry"    # Lorg/teleal/cling/registry/RegistryImpl;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/teleal/cling/registry/RegistryItems;-><init>(Lorg/teleal/cling/registry/RegistryImpl;)V

    .line 213
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/registry/LocalItems;->randomGenerator:Ljava/util/Random;

    .line 46
    return-void
.end method

.method static synthetic access$2()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method bridge synthetic add(Lorg/teleal/cling/model/meta/Device;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/registry/LocalItems;->add(Lorg/teleal/cling/model/meta/LocalDevice;)V

    return-void
.end method

.method add(Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 9
    .param p1, "localDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/registry/RegistrationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v4, p0, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/teleal/cling/registry/RegistryImpl;->getDevice(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 51
    sget-object v3, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring addition, device already registered: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void

    .line 55
    :cond_1
    sget-object v4, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Adding local device to registry: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lorg/teleal/cling/registry/LocalItems;->getResources(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/resource/Resource;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-lt v3, v5, :cond_2

    .line 68
    sget-object v3, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding item to registry with expiration in seconds: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 70
    new-instance v2, Lorg/teleal/cling/registry/RegistryItem;

    .line 71
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v3

    .line 73
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 70
    invoke-direct {v2, v3, p1, v4}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 76
    .local v2, "localItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/LocalDevice;>;"
    iget-object v3, p0, Lorg/teleal/cling/registry/LocalItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v3, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Registered local device: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1}, Lorg/teleal/cling/registry/LocalItems;->advertiseAlive(Lorg/teleal/cling/model/meta/LocalDevice;)V

    .line 81
    iget-object v3, p0, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v3}, Lorg/teleal/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/registry/RegistryListener;

    .line 82
    .local v1, "listener":Lorg/teleal/cling/registry/RegistryListener;
    iget-object v4, p0, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-interface {v1, v4, p1}, Lorg/teleal/cling/registry/RegistryListener;->localDeviceAdded(Lorg/teleal/cling/registry/Registry;Lorg/teleal/cling/model/meta/LocalDevice;)V

    goto :goto_1

    .line 57
    .end local v1    # "listener":Lorg/teleal/cling/registry/RegistryListener;
    .end local v2    # "localItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/LocalDevice;>;"
    :cond_2
    aget-object v0, v4, v3

    .line 59
    .local v0, "deviceResource":Lorg/teleal/cling/model/resource/Resource;
    iget-object v6, p0, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v0}, Lorg/teleal/cling/model/resource/Resource;->getPathQuery()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/teleal/cling/registry/RegistryImpl;->getResource(Ljava/net/URI;)Lorg/teleal/cling/model/resource/Resource;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 60
    new-instance v3, Lorg/teleal/cling/registry/RegistrationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "URI namespace conflict with already registered resource: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/teleal/cling/registry/RegistrationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_3
    iget-object v6, p0, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v6, v0}, Lorg/teleal/cling/registry/RegistryImpl;->addResource(Lorg/teleal/cling/model/resource/Resource;)V

    .line 64
    sget-object v6, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Registered resource: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method protected advertiseAlive(Lorg/teleal/cling/model/meta/LocalDevice;)V
    .locals 2
    .param p1, "localDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;

    .prologue
    .line 216
    iget-object v0, p0, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    new-instance v1, Lorg/teleal/cling/registry/LocalItems$3;

    invoke-direct {v1, p0, p1}, Lorg/teleal/cling/registry/LocalItems$3;-><init>(Lorg/teleal/cling/registry/LocalItems;Lorg/teleal/cling/model/meta/LocalDevice;)V

    invoke-virtual {v0, v1}, Lorg/teleal/cling/registry/RegistryImpl;->executeAsyncProtocol(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method protected advertiseByebye(Lorg/teleal/cling/model/meta/LocalDevice;Z)V
    .locals 2
    .param p1, "localDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .param p2, "asynchronous"    # Z

    .prologue
    .line 230
    iget-object v1, p0, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryImpl;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/teleal/cling/protocol/ProtocolFactory;->createSendingNotificationByebye(Lorg/teleal/cling/model/meta/LocalDevice;)Lorg/teleal/cling/protocol/async/SendingNotificationByebye;

    move-result-object v0

    .line 231
    .local v0, "prot":Lorg/teleal/cling/protocol/SendingAsync;
    if-eqz p2, :cond_0

    .line 232
    iget-object v1, p0, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v1, v0}, Lorg/teleal/cling/registry/RegistryImpl;->executeAsyncProtocol(Ljava/lang/Runnable;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {v0}, Lorg/teleal/cling/protocol/SendingAsync;->run()V

    goto :goto_0
.end method

.method get()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/teleal/cling/model/meta/LocalDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 89
    .local v0, "c":Ljava/util/Set;, "Ljava/util/Set<Lorg/teleal/cling/model/meta/LocalDevice;>;"
    iget-object v2, p0, Lorg/teleal/cling/registry/LocalItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2

    .line 89
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/registry/RegistryItem;

    .line 90
    .local v1, "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/LocalDevice;>;"
    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method maintain()V
    .locals 10

    .prologue
    .line 172
    iget-object v6, p0, Lorg/teleal/cling/registry/LocalItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 201
    :cond_0
    return-void

    .line 175
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v2, "expiredLocalItems":Ljava/util/Set;, "Ljava/util/Set<Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/LocalDevice;>;>;"
    iget-object v6, p0, Lorg/teleal/cling/registry/LocalItems;->deviceItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 182
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 189
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 190
    .local v0, "expiredIncomingSubscriptions":Ljava/util/Set;, "Ljava/util/Set<Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/LocalGENASubscription;>;>;"
    iget-object v6, p0, Lorg/teleal/cling/registry/LocalItems;->subscriptionItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 195
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/registry/RegistryItem;

    .line 196
    .local v5, "subscription":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/LocalGENASubscription;>;"
    sget-object v6, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Removing expired: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v5}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {p0, v6}, Lorg/teleal/cling/registry/LocalItems;->removeSubscription(Lorg/teleal/cling/model/gena/GENASubscription;)Z

    .line 198
    invoke-virtual {v5}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/gena/LocalGENASubscription;

    sget-object v8, Lorg/teleal/cling/model/gena/CancelReason;->EXPIRED:Lorg/teleal/cling/model/gena/CancelReason;

    invoke-virtual {v6, v8}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->end(Lorg/teleal/cling/model/gena/CancelReason;)V

    goto :goto_3

    .line 176
    .end local v0    # "expiredIncomingSubscriptions":Ljava/util/Set;, "Ljava/util/Set<Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/LocalGENASubscription;>;>;"
    .end local v5    # "subscription":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/LocalGENASubscription;>;"
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/registry/RegistryItem;

    .line 177
    .local v4, "localItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/LocalDevice;>;"
    invoke-virtual {v4}, Lorg/teleal/cling/registry/RegistryItem;->getExpirationDetails()Lorg/teleal/cling/model/ExpirationDetails;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/teleal/cling/model/ExpirationDetails;->hasExpired(Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 178
    sget-object v7, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Local item has expired: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 179
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 182
    .end local v4    # "localItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/LocalDevice;>;"
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/registry/RegistryItem;

    .line 183
    .local v1, "expiredLocalItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/LocalDevice;>;"
    sget-object v6, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Refreshing local device advertisement: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-virtual {p0, v6}, Lorg/teleal/cling/registry/LocalItems;->advertiseAlive(Lorg/teleal/cling/model/meta/LocalDevice;)V

    .line 185
    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryItem;->getExpirationDetails()Lorg/teleal/cling/model/ExpirationDetails;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/ExpirationDetails;->stampLastRefresh()V

    goto/16 :goto_1

    .line 190
    .end local v1    # "expiredLocalItem":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Lorg/teleal/cling/model/types/UDN;Lorg/teleal/cling/model/meta/LocalDevice;>;"
    .restart local v0    # "expiredIncomingSubscriptions":Ljava/util/Set;, "Ljava/util/Set<Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/LocalGENASubscription;>;>;"
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/registry/RegistryItem;

    .line 191
    .local v3, "item":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/LocalGENASubscription;>;"
    invoke-virtual {v3}, Lorg/teleal/cling/registry/RegistryItem;->getExpirationDetails()Lorg/teleal/cling/model/ExpirationDetails;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/teleal/cling/model/ExpirationDetails;->hasExpired(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 192
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method bridge synthetic remove(Lorg/teleal/cling/model/meta/Device;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/registry/LocalItems;->remove(Lorg/teleal/cling/model/meta/LocalDevice;)Z

    move-result v0

    return v0
.end method

.method remove(Lorg/teleal/cling/model/meta/LocalDevice;)Z
    .locals 1
    .param p1, "localDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/registry/RegistrationException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/registry/LocalItems;->remove(Lorg/teleal/cling/model/meta/LocalDevice;Z)Z

    move-result v0

    return v0
.end method

.method remove(Lorg/teleal/cling/model/meta/LocalDevice;Z)Z
    .locals 12
    .param p1, "localDevice"    # Lorg/teleal/cling/model/meta/LocalDevice;
    .param p2, "shuttingDown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/registry/RegistrationException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lorg/teleal/cling/registry/LocalItems;->get(Lorg/teleal/cling/model/types/UDN;Z)Lorg/teleal/cling/model/meta/Device;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/meta/LocalDevice;

    .line 102
    .local v4, "registeredDevice":Lorg/teleal/cling/model/meta/LocalDevice;
    if-eqz v4, :cond_7

    .line 104
    sget-object v6, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Removing local device from registry: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    iget-object v6, p0, Lorg/teleal/cling/registry/LocalItems;->deviceItems:Ljava/util/Set;

    new-instance v7, Lorg/teleal/cling/registry/RegistryItem;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/teleal/cling/registry/RegistryItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p0, p1}, Lorg/teleal/cling/registry/LocalItems;->getResources(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/resource/Resource;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v8, :cond_2

    .line 115
    iget-object v6, p0, Lorg/teleal/cling/registry/LocalItems;->subscriptionItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 116
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/LocalGENASubscription;>;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 137
    if-eqz p2, :cond_5

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p0, p1, v6}, Lorg/teleal/cling/registry/LocalItems;->advertiseByebye(Lorg/teleal/cling/model/meta/LocalDevice;Z)V

    .line 139
    if-nez p2, :cond_1

    .line 140
    iget-object v6, p0, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v6}, Lorg/teleal/cling/registry/RegistryImpl;->getListeners()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 151
    :cond_1
    const/4 v6, 0x1

    .line 154
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/LocalGENASubscription;>;>;"
    :goto_4
    return v6

    .line 108
    :cond_2
    aget-object v0, v7, v6

    .line 109
    .local v0, "deviceResource":Lorg/teleal/cling/model/resource/Resource;
    iget-object v9, p0, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v9, v0}, Lorg/teleal/cling/registry/RegistryImpl;->removeResource(Lorg/teleal/cling/model/resource/Resource;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 110
    sget-object v9, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unregistered resource: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 108
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "deviceResource":Lorg/teleal/cling/model/resource/Resource;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/LocalGENASubscription;>;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/registry/RegistryItem;

    .line 120
    .local v1, "incomingSubscription":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/LocalGENASubscription;>;"
    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryItem;->getItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/gena/LocalGENASubscription;

    invoke-virtual {v6}, Lorg/teleal/cling/model/gena/LocalGENASubscription;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/meta/LocalService;

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/LocalService;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v5

    .line 122
    .local v5, "subscriptionForUDN":Lorg/teleal/cling/model/types/UDN;
    invoke-virtual {v4}, Lorg/teleal/cling/model/meta/LocalDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/teleal/cling/model/types/UDN;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    sget-object v7, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v6, "Removing incoming subscription: "

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/registry/RegistryItem;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 125
    if-nez p2, :cond_0

    .line 126
    iget-object v6, p0, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v6}, Lorg/teleal/cling/registry/RegistryImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 127
    new-instance v7, Lorg/teleal/cling/registry/LocalItems$1;

    invoke-direct {v7, p0, v1}, Lorg/teleal/cling/registry/LocalItems$1;-><init>(Lorg/teleal/cling/registry/LocalItems;Lorg/teleal/cling/registry/RegistryItem;)V

    .line 126
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 137
    .end local v1    # "incomingSubscription":Lorg/teleal/cling/registry/RegistryItem;, "Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/LocalGENASubscription;>;"
    .end local v5    # "subscriptionForUDN":Lorg/teleal/cling/model/types/UDN;
    :cond_5
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 140
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/registry/RegistryListener;

    .line 141
    .local v3, "listener":Lorg/teleal/cling/registry/RegistryListener;
    iget-object v7, p0, Lorg/teleal/cling/registry/LocalItems;->registry:Lorg/teleal/cling/registry/RegistryImpl;

    invoke-virtual {v7}, Lorg/teleal/cling/registry/RegistryImpl;->getConfiguration()Lorg/teleal/cling/UpnpServiceConfiguration;

    move-result-object v7

    invoke-interface {v7}, Lorg/teleal/cling/UpnpServiceConfiguration;->getRegistryListenerExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    .line 142
    new-instance v8, Lorg/teleal/cling/registry/LocalItems$2;

    invoke-direct {v8, p0, v3, p1}, Lorg/teleal/cling/registry/LocalItems$2;-><init>(Lorg/teleal/cling/registry/LocalItems;Lorg/teleal/cling/registry/RegistryListener;Lorg/teleal/cling/model/meta/LocalDevice;)V

    .line 141
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 154
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/registry/RegistryItem<Ljava/lang/String;Lorg/teleal/cling/model/gena/LocalGENASubscription;>;>;"
    .end local v3    # "listener":Lorg/teleal/cling/registry/RegistryListener;
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_4
.end method

.method removeAll()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/teleal/cling/registry/LocalItems;->removeAll(Z)V

    .line 159
    return-void
.end method

.method removeAll(Z)V
    .locals 4
    .param p1, "shuttingDown"    # Z

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/teleal/cling/registry/LocalItems;->get()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0}, Lorg/teleal/cling/registry/LocalItems;->get()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lorg/teleal/cling/model/meta/LocalDevice;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/teleal/cling/model/meta/LocalDevice;

    .line 163
    .local v0, "allDevices":[Lorg/teleal/cling/model/meta/LocalDevice;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 166
    return-void

    .line 163
    :cond_0
    aget-object v1, v0, v2

    .line 164
    .local v1, "device":Lorg/teleal/cling/model/meta/LocalDevice;
    invoke-virtual {p0, v1, p1}, Lorg/teleal/cling/registry/LocalItems;->remove(Lorg/teleal/cling/model/meta/LocalDevice;Z)Z

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method shutdown()V
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    const-string v1, "Clearing all registered subscriptions to local devices during shutdown"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lorg/teleal/cling/registry/LocalItems;->subscriptionItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 207
    sget-object v0, Lorg/teleal/cling/registry/LocalItems;->log:Ljava/util/logging/Logger;

    const-string v1, "Removing all local devices from registry during shutdown"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/teleal/cling/registry/LocalItems;->removeAll(Z)V

    .line 209
    return-void
.end method
