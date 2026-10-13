.class public abstract Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;
.super Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;
.source "AbstractPeeringConnectionManagerService.java"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected varargs constructor <init>(Ljava/beans/PropertyChangeSupport;Lorg/teleal/cling/support/model/ProtocolInfos;Lorg/teleal/cling/support/model/ProtocolInfos;[Lorg/teleal/cling/support/model/ConnectionInfo;)V
    .locals 0
    .param p1, "propertyChangeSupport"    # Ljava/beans/PropertyChangeSupport;
    .param p2, "sourceProtocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfos;
    .param p3, "sinkProtocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfos;
    .param p4, "activeConnections"    # [Lorg/teleal/cling/support/model/ConnectionInfo;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;-><init>(Ljava/beans/PropertyChangeSupport;Lorg/teleal/cling/support/model/ProtocolInfos;Lorg/teleal/cling/support/model/ProtocolInfos;[Lorg/teleal/cling/support/model/ConnectionInfo;)V

    .line 64
    return-void
.end method

.method protected varargs constructor <init>(Lorg/teleal/cling/support/model/ProtocolInfos;Lorg/teleal/cling/support/model/ProtocolInfos;[Lorg/teleal/cling/support/model/ConnectionInfo;)V
    .locals 0
    .param p1, "sourceProtocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfos;
    .param p2, "sinkProtocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfos;
    .param p3, "activeConnections"    # [Lorg/teleal/cling/support/model/ConnectionInfo;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;-><init>(Lorg/teleal/cling/support/model/ProtocolInfos;Lorg/teleal/cling/support/model/ProtocolInfos;[Lorg/teleal/cling/support/model/ConnectionInfo;)V

    .line 58
    return-void
.end method

.method protected varargs constructor <init>([Lorg/teleal/cling/support/model/ConnectionInfo;)V
    .locals 0
    .param p1, "activeConnections"    # [Lorg/teleal/cling/support/model/ConnectionInfo;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerService;-><init>([Lorg/teleal/cling/support/model/ConnectionInfo;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected abstract closeConnection(Lorg/teleal/cling/support/model/ConnectionInfo;)V
.end method

.method public declared-synchronized closeConnectionWithPeer(Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/model/meta/Service;I)V
    .locals 1
    .param p1, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;
    .param p2, "peerService"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "connectionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p3}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getCurrentConnectionInfo(I)Lorg/teleal/cling/support/model/ConnectionInfo;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->closeConnectionWithPeer(Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/ConnectionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeConnectionWithPeer(Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/ConnectionInfo;)V
    .locals 6
    .param p1, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;
    .param p2, "peerService"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "connectionInfo"    # Lorg/teleal/cling/support/model/ConnectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Closing connection ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with peer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 207
    new-instance v0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;

    .line 210
    invoke-virtual {p3}, Lorg/teleal/cling/support/model/ConnectionInfo;->getPeerConnectionID()I

    move-result v4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    .line 207
    invoke-direct/range {v0 .. v5}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;-><init>(Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;ILorg/teleal/cling/support/model/ConnectionInfo;)V

    .line 224
    invoke-virtual {v0}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionComplete(I)V
    .locals 4
    .param p1, "connectionID"    # I
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "ConnectionID"
            stateVariable = "A_ARG_TYPE_ConnectionID"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation

    .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpAction;
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getCurrentConnectionInfo(I)Lorg/teleal/cling/support/model/ConnectionInfo;

    move-result-object v0

    .line 130
    .local v0, "info":Lorg/teleal/cling/support/model/ConnectionInfo;
    sget-object v1, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Closing connection ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->closeConnection(Lorg/teleal/cling/support/model/ConnectionInfo;)V

    .line 132
    invoke-virtual {p0, p1}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->removeConnection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 129
    .end local v0    # "info":Lorg/teleal/cling/support/model/ConnectionInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract createConnection(IILorg/teleal/cling/model/ServiceReference;Lorg/teleal/cling/support/model/ConnectionInfo$Direction;Lorg/teleal/cling/support/model/ProtocolInfo;)Lorg/teleal/cling/support/model/ConnectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/teleal/cling/model/action/ActionException;
        }
    .end annotation
.end method

.method public declared-synchronized createConnectionWithPeer(Lorg/teleal/cling/model/ServiceReference;Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/support/model/ConnectionInfo$Direction;)I
    .locals 14
    .param p1, "localServiceReference"    # Lorg/teleal/cling/model/ServiceReference;
    .param p2, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;
    .param p3, "peerService"    # Lorg/teleal/cling/model/meta/Service;
    .param p4, "protInfo"    # Lorg/teleal/cling/support/model/ProtocolInfo;
    .param p5, "direction"    # Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getNewConnectionId()I

    move-result v7

    .line 152
    .local v7, "localConnectionID":I
    sget-object v1, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating new connection ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with peer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 153
    const/4 v1, 0x1

    new-array v13, v1, [Z

    .line 154
    .local v13, "failed":[Z
    new-instance v1, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object v6, p1

    move-object/from16 v8, p5

    move v9, v7

    move-object/from16 v10, p4

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    invoke-direct/range {v1 .. v13}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;-><init>(Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/model/ServiceReference;ILorg/teleal/cling/support/model/ConnectionInfo$Direction;ILorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/ConnectionInfo$Direction;[Z)V

    .line 184
    invoke-virtual {v1}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->run()V

    .line 186
    const/4 v1, 0x0

    aget-boolean v1, v13, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v7, -0x1

    .end local v7    # "localConnectionID":I
    :cond_0
    monitor-exit p0

    return v7

    .line 150
    .end local v13    # "failed":[Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized getNewConnectionId()I
    .locals 4

    .prologue
    .line 67
    monitor-enter p0

    const/4 v0, -0x1

    .line 68
    .local v0, "currentHighestID":I
    :try_start_0
    iget-object v2, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 71
    add-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 68
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 69
    .local v1, "key":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 67
    .end local v1    # "key":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected abstract peerFailure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
.end method

.method public declared-synchronized prepareForConnection(Lorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/model/ServiceReference;ILjava/lang/String;)Lorg/teleal/cling/support/model/ConnectionInfo;
    .locals 8
    .param p1, "remoteProtocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfo;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "RemoteProtocolInfo"
            stateVariable = "A_ARG_TYPE_ProtocolInfo"
        .end annotation
    .end param
    .param p2, "peerConnectionManager"    # Lorg/teleal/cling/model/ServiceReference;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "PeerConnectionManager"
            stateVariable = "A_ARG_TYPE_ConnectionManager"
        .end annotation
    .end param
    .param p3, "peerConnectionId"    # I
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "PeerConnectionID"
            stateVariable = "A_ARG_TYPE_ConnectionID"
        .end annotation
    .end param
    .param p4, "direction"    # Ljava/lang/String;
        .annotation runtime Lorg/teleal/cling/binding/annotations/UpnpInputArgument;
            name = "Direction"
            stateVariable = "A_ARG_TYPE_Direction"
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
                getterName = "getConnectionID"
                name = "ConnectionID"
                stateVariable = "A_ARG_TYPE_ConnectionID"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getAvTransportID"
                name = "AVTransportID"
                stateVariable = "A_ARG_TYPE_AVTransportID"
            .end subannotation,
            .subannotation Lorg/teleal/cling/binding/annotations/UpnpOutputArgument;
                getterName = "getRcsID"
                name = "RcsID"
                stateVariable = "A_ARG_TYPE_RcsID"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getNewConnectionId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 106
    .local v1, "connectionId":I
    :try_start_1
    invoke-static {p4}, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/ConnectionInfo$Direction;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 111
    .local v4, "dir":Lorg/teleal/cling/support/model/ConnectionInfo$Direction;
    :try_start_2
    sget-object v0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preparing for connection with local new ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and peer connection ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move-object v0, p0

    move v2, p3

    move-object v3, p2

    move-object v5, p1

    .line 113
    invoke-virtual/range {v0 .. v5}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->createConnection(IILorg/teleal/cling/model/ServiceReference;Lorg/teleal/cling/support/model/ConnectionInfo$Direction;Lorg/teleal/cling/support/model/ProtocolInfo;)Lorg/teleal/cling/support/model/ConnectionInfo;

    move-result-object v7

    .line 121
    .local v7, "newConnectionInfo":Lorg/teleal/cling/support/model/ConnectionInfo;
    invoke-virtual {p0, v7}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->storeConnection(Lorg/teleal/cling/support/model/ConnectionInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    monitor-exit p0

    return-object v7

    .line 107
    .end local v4    # "dir":Lorg/teleal/cling/support/model/ConnectionInfo$Direction;
    .end local v7    # "newConnectionInfo":Lorg/teleal/cling/support/model/ConnectionInfo;
    :catch_0
    move-exception v6

    .line 108
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_3
    new-instance v0, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerException;

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported direction: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/support/connectionmanager/ConnectionManagerException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    .end local v1    # "connectionId":I
    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized removeConnection(I)V
    .locals 5
    .param p1, "connectionID"    # I

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getCurrentConnectionIDs()Lorg/teleal/cling/model/types/csv/CSV;

    move-result-object v1

    .line 84
    .local v1, "oldConnectionIDs":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;>;"
    iget-object v2, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v2, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection removed, firing event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getCurrentConnectionIDs()Lorg/teleal/cling/model/types/csv/CSV;

    move-result-object v0

    .line 87
    .local v0, "newConnectionIDs":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v2

    const-string v3, "CurrentConnectionIDs"

    invoke-virtual {v2, v3, v1, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 83
    .end local v0    # "newConnectionIDs":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;>;"
    .end local v1    # "oldConnectionIDs":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized storeConnection(Lorg/teleal/cling/support/model/ConnectionInfo;)V
    .locals 5
    .param p1, "info"    # Lorg/teleal/cling/support/model/ConnectionInfo;

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getCurrentConnectionIDs()Lorg/teleal/cling/model/types/csv/CSV;

    move-result-object v1

    .line 76
    .local v1, "oldConnectionIDs":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;>;"
    iget-object v2, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->activeConnections:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v2, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection stored, firing event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/teleal/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getCurrentConnectionIDs()Lorg/teleal/cling/model/types/csv/CSV;

    move-result-object v0

    .line 79
    .local v0, "newConnectionIDs":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v2

    const-string v3, "CurrentConnectionIDs"

    invoke-virtual {v2, v3, v1, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 75
    .end local v0    # "newConnectionIDs":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;>;"
    .end local v1    # "oldConnectionIDs":Lorg/teleal/cling/model/types/csv/CSV;, "Lorg/teleal/cling/model/types/csv/CSV<Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
