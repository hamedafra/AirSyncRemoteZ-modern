.class public Lorg/teleal/cling/model/Namespace;
.super Ljava/lang/Object;
.source "Namespace.java"


# static fields
.field public static final CALLBACK_FILE:Ljava/lang/String; = "/cb.xml"

.field public static final CONTROL:Ljava/lang/String; = "/action"

.field public static final DESCRIPTOR_FILE:Ljava/lang/String; = "/desc.xml"

.field public static final DEVICE:Ljava/lang/String; = "/dev"

.field public static final EVENTS:Ljava/lang/String; = "/event"

.field public static final SERVICE:Ljava/lang/String; = "/svc"

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final basePath:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/teleal/cling/model/Namespace;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/model/Namespace;->log:Ljava/util/logging/Logger;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, ""

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/Namespace;->basePath:Ljava/net/URI;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "basePath"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/teleal/cling/model/Namespace;-><init>(Ljava/net/URI;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "basePath"    # Ljava/net/URI;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/teleal/cling/model/Namespace;->basePath:Ljava/net/URI;

    .line 82
    return-void
.end method


# virtual methods
.method public getBasePath()Ljava/net/URI;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/teleal/cling/model/Namespace;->basePath:Ljava/net/URI;

    return-object v0
.end method

.method public getControlPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;
    .locals 2
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/Namespace;->getPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorPath(Lorg/teleal/cling/model/meta/Device;)Ljava/net/URI;
    .locals 2
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getRoot()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/teleal/cling/model/Namespace;->getPath(Lorg/teleal/cling/model/meta/Device;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/desc.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;
    .locals 2
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/Namespace;->getPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/desc.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getEventCallbackPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;
    .locals 2
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/Namespace;->getEventSubscriptionPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/cb.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getEventSubscriptionPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;
    .locals 2
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/Namespace;->getPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Lorg/teleal/cling/model/meta/Device;)Ljava/net/URI;
    .locals 3
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    .line 89
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t generate local URI prefix without UDN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "/dev"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/DeviceIdentity;->getUdn()Lorg/teleal/cling/model/types/UDN;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/UDN;->getIdentifierString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/teleal/common/util/URIUtil;->encodePathSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/teleal/cling/model/Namespace;->getBasePath()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    return-object v1
.end method

.method public getPath(Lorg/teleal/cling/model/meta/Service;)Ljava/net/URI;
    .locals 3
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 123
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Service;->getServiceId()Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t generate local URI prefix without service ID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "/svc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Service;->getServiceId()Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/ServiceId;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Service;->getServiceId()Lorg/teleal/cling/model/types/ServiceId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/ServiceId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Service;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/teleal/cling/model/Namespace;->getPath(Lorg/teleal/cling/model/meta/Device;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    return-object v1
.end method

.method public getResources(Lorg/teleal/cling/model/meta/Device;)[Lorg/teleal/cling/model/resource/Resource;
    .locals 11
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->isRoot()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 196
    :goto_0
    return-object v4

    .line 177
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 178
    .local v3, "resources":Ljava/util/Set;, "Ljava/util/Set<Lorg/teleal/cling/model/resource/Resource;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/ValidationError;>;"
    sget-object v4, Lorg/teleal/cling/model/Namespace;->log:Ljava/util/logging/Logger;

    const-string v5, "Discovering local resources of device graph"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1, p0}, Lorg/teleal/cling/model/meta/Device;->discoverResources(Lorg/teleal/cling/model/Namespace;)[Lorg/teleal/cling/model/resource/Resource;

    move-result-object v0

    .line 182
    .local v0, "discoveredResources":[Lorg/teleal/cling/model/resource/Resource;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v5, :cond_1

    .line 193
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 194
    new-instance v4, Lorg/teleal/cling/model/ValidationException;

    const-string v5, "Validation of device graph failed, call getErrors() on exception"

    invoke-direct {v4, v5, v1}, Lorg/teleal/cling/model/ValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v4

    .line 182
    :cond_1
    aget-object v2, v0, v4

    .line 183
    .local v2, "resource":Lorg/teleal/cling/model/resource/Resource;
    sget-object v6, Lorg/teleal/cling/model/Namespace;->log:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Discovered: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 184
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 185
    sget-object v6, Lorg/teleal/cling/model/Namespace;->log:Ljava/util/logging/Logger;

    const-string v7, "Local resource already exists, queueing validation error"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 186
    new-instance v6, Lorg/teleal/cling/model/ValidationError;

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 188
    const-string v8, "resources"

    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Local URI namespace conflict between resources of device: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lorg/teleal/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 196
    .end local v2    # "resource":Lorg/teleal/cling/model/resource/Resource;
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Lorg/teleal/cling/model/resource/Resource;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/teleal/cling/model/resource/Resource;

    goto :goto_0
.end method

.method public isControlPath(Ljava/net/URI;)Z
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 163
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEventCallbackPath(Ljava/net/URI;)Z
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 171
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/cb.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEventSubscriptionPath(Ljava/net/URI;)Z
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public prefixIfRelative(Lorg/teleal/cling/model/meta/Device;Ljava/net/URI;)Ljava/net/URI;
    .locals 2
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;
    .param p2, "uri"    # Ljava/net/URI;

    .prologue
    .line 156
    invoke-virtual {p2}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/teleal/cling/model/Namespace;->getPath(Lorg/teleal/cling/model/meta/Device;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    .line 159
    .end local p2    # "uri":Ljava/net/URI;
    :cond_0
    return-object p2
.end method
