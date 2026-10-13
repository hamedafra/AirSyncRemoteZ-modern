.class public Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;
.super Ljava/lang/Object;
.source "ConnectionManagerService.java"


# annotations
.annotation runtime Lorg/teleal/cling/binding/annotations/UpnpService;
    serviceId = .subannotation Lorg/teleal/cling/binding/annotations/UpnpServiceId;
        value = "ConnectionManager"
    .end subannotation
    serviceType = .subannotation Lorg/teleal/cling/binding/annotations/UpnpServiceType;
        value = "ConnectionManager"
        version = 0x1
    .end subannotation
    stringConvertibleTypes = {
        Lorg/teleal/cling/support/model/ProtocolInfo;,
        Lorg/teleal/cling/support/model/ProtocolInfos;,
        Lorg/teleal/cling/model/ServiceReference;
    }
.end annotation

.annotation runtime Lorg/teleal/cling/binding/annotations/UpnpStateVariables;
    value = {
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "SourceProtocolInfo"
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "SinkProtocolInfo"
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "CurrentConnectionIDs"
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/teleal/cling/support/model/ConnectionInfo$Status;
            name = "A_ARG_TYPE_ConnectionStatus"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_ConnectionManager"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            allowedValuesEnum = Lorg/teleal/cling/support/model/ConnectionInfo$Direction;
            name = "A_ARG_TYPE_Direction"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "string"
            name = "A_ARG_TYPE_ProtocolInfo"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "i4"
            name = "A_ARG_TYPE_ConnectionID"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "i4"
            name = "A_ARG_TYPE_AVTransportID"
            sendEvents = false
        .end subannotation,
        .subannotation Lorg/teleal/cling/binding/annotations/UpnpStateVariable;
            datatype = "i4"
            name = "A_ARG_TYPE_RcsID"
            sendEvents = false
        .end subannotation
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final activeConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/teleal/cling/support/model/ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

.field protected final sinkProtocolInfo:Lorg/teleal/cling/support/model/ProtocolInfos;

.field protected final sourceProtocolInfo:Lorg/teleal/cling/support/model/ProtocolInfos;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/teleal/cling/support/model/ConnectionInfo;

    const/4 v1, 0x0

    new-instance v2, Lorg/teleal/cling/support/model/ConnectionInfo;

    invoke-direct {v2}, Lorg/teleal/cling/support/model/ConnectionInfo;-><init>()V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;-><init>([Lorg/teleal/cling/support/model/ConnectionInfo;)V

    .line 79
    return-void
.end method

.method public varargs constructor <init>(Ljava/beans/PropertyChangeSupport;Lorg/teleal/cling/support/model/ProtocolInfos;Lorg/teleal/cling/support/model/ProtocolInfos;[Lorg/teleal/cling/support/model/ConnectionInfo;)V
    .locals 5
    .param p1, "propertyChangeSupport"    # Ljava/beans/PropertyChangeSupport;
    .param p2, "sourceProtocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfos;
    .param p3, "sinkProtocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfos;
    .param p4, "activeConnections"    # [Lorg/teleal/cling/support/model/ConnectionInfo;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance p1, Ljava/beans/PropertyChangeSupport;

    .end local p1    # "propertyChangeSupport":Ljava/beans/PropertyChangeSupport;
    invoke-direct {p1, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    .line 99
    :cond_0
    iput-object p1, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    .line 103
    iput-object p2, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;->sourceProtocolInfo:Lorg/teleal/cling/support/model/ProtocolInfos;

    .line 104
    iput-object p3, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;->sinkProtocolInfo:Lorg/teleal/cling/support/model/ProtocolInfos;

    .line 106
    array-length v2, p4

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 109
    return-void

    .line 106
    :cond_1
    aget-object v0, p4, v1

    .line 107
    .local v0, "activeConnection":Lorg/teleal/cling/support/model/ConnectionInfo;
    iget-object v3, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/ProtocolInfos;Lorg/teleal/cling/support/model/ProtocolInfos;)V
    .locals 3
    .param p1, "sourceProtocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfos;
    .param p2, "sinkProtocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfos;

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/teleal/cling/support/model/ConnectionInfo;

    const/4 v1, 0x0

    new-instance v2, Lorg/teleal/cling/support/model/ConnectionInfo;

    invoke-direct {v2}, Lorg/teleal/cling/support/model/ConnectionInfo;-><init>()V

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;-><init>(Lorg/teleal/cling/support/model/ProtocolInfos;Lorg/teleal/cling/support/model/ProtocolInfos;[Lorg/teleal/cling/support/model/ConnectionInfo;)V

    .line 86
    return-void
.end method

.method public varargs constructor <init>(Lorg/teleal/cling/support/model/ProtocolInfos;Lorg/teleal/cling/support/model/ProtocolInfos;[Lorg/teleal/cling/support/model/ConnectionInfo;)V
    .locals 1
    .param p1, "sourceProtocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfos;
    .param p2, "sinkProtocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfos;
    .param p3, "activeConnections"    # [Lorg/teleal/cling/support/model/ConnectionInfo;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;-><init>(Ljava/beans/PropertyChangeSupport;Lorg/teleal/cling/support/model/ProtocolInfos;Lorg/teleal/cling/support/model/ProtocolInfos;[Lorg/teleal/cling/support/model/ConnectionInfo;)V

    .line 94
    return-void
.end method

.method public varargs constructor <init>([Lorg/teleal/cling/support/model/ConnectionInfo;)V
    .locals 4
    .param p1, "activeConnections"    # [Lorg/teleal/cling/support/model/ConnectionInfo;

    .prologue
    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x0

    new-instance v1, Lorg/teleal/cling/support/model/ProtocolInfos;

    new-array v2, v3, [Lorg/teleal/cling/support/model/ProtocolInfo;

    invoke-direct {v1, v2}, Lorg/teleal/cling/support/model/ProtocolInfos;-><init>([Lorg/teleal/cling/support/model/ProtocolInfo;)V

    new-instance v2, Lorg/teleal/cling/support/model/ProtocolInfos;

    new-array v3, v3, [Lorg/teleal/cling/support/model/ProtocolInfo;

    invoke-direct {v2, v3}, Lorg/teleal/cling/support/model/ProtocolInfos;-><init>([Lorg/teleal/cling/support/model/ProtocolInfo;)V

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;-><init>(Ljava/beans/PropertyChangeSupport;Lorg/teleal/cling/support/model/ProtocolInfos;Lorg/teleal/cling/support/model/ProtocolInfos;[Lorg/teleal/cling/support/model/ConnectionInfo;)V

    .line 90
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentConnectionIDs()Lorg/teleal/cling/model/types/csv/CSV;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/teleal/cling/model/types/csv/CSV",
            "<",
            "Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                name = "ConnectionIDs"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/teleal/cling/model/types/csv/CSVUnsignedIntegerFourBytes;

    invoke-direct {v1}, Lorg/teleal/cling/model/types/csv/CSVUnsignedIntegerFourBytes;-><init>()V

    .line 142
    .local v1, "csv":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;>;"
    iget-object v2, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    sget-object v2, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Returning current connection IDs: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/teleal/cling/model/types/csv/CSV;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-object v1

    .line 142
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 143
    .local v0, "connectionID":Ljava/lang/Integer;
    new-instance v3, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-virtual {v1, v3}, Lorg/teleal/cling/model/types/csv/CSV;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    .end local v0    # "connectionID":Ljava/lang/Integer;
    .end local v1    # "csv":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCurrentConnectionInfo(I)Lorg/teleal/cling/support/model/ConnectionInfo;
    .locals 5
    .param p1, "connectionId"    # I
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "ConnectionID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRcsID"
                name = "RcsID"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getAvTransportID"
                name = "AVTransportID"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getProtocolInfo"
                name = "ProtocolInfo"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getPeerConnectionManager"
                name = "PeerConnectionManager"
                stateVariable = "A_ARG_TYPE_ConnectionManager"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getPeerConnectionID"
                name = "PeerConnectionID"
                stateVariable = "A_ARG_TYPE_ConnectionID"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getDirection"
                name = "Direction"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getConnectionStatus"
                name = "Status"
                stateVariable = "A_ARG_TYPE_ConnectionStatus"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting connection information of connection ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/ConnectionInfo;

    .local v0, "info":Lorg/teleal/cling/support/model/ConnectionInfo;
    if-nez v0, :cond_0

    .line 129
    new-instance v1, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerException;

    .line 130
    sget-object v2, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;->INVALID_CONNECTION_REFERENCE:Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Non-active connection ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerException;-><init>(Lorg/teleal/cling/support/connectionmanager/ConnectionManagerErrorCode;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v0    # "info":Lorg/teleal/cling/support/model/ConnectionInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 134
    .restart local v0    # "info":Lorg/teleal/cling/support/model/ConnectionInfo;
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;->propertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    return-object v0
.end method

.method public declared-synchronized getProtocolInfo()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
        out = {
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getSourceProtocolInfo"
                name = "Source"
                stateVariable = "SourceProtocolInfo"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getSinkProtocolInfo"
                name = "Sink"
                stateVariable = "SinkProtocolInfo"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 155
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getSinkProtocolInfo()Lorg/teleal/cling/support/model/ProtocolInfos;
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;->sinkProtocolInfo:Lorg/teleal/cling/support/model/ProtocolInfos;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSourceProtocolInfo()Lorg/teleal/cling/support/model/ProtocolInfos;
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;->sourceProtocolInfo:Lorg/teleal/cling/support/model/ProtocolInfos;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
