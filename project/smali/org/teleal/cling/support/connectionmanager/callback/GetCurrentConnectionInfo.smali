.class public abstract Lorg/teleal/cling/support/connectionmanager/callback/GetCurrentConnectionInfo;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "GetCurrentConnectionInfo.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;I)V
    .locals 1
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "connectionID"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/teleal/cling/support/connectionmanager/callback/GetCurrentConnectionInfo;-><init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;I)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;I)V
    .locals 3
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;
    .param p3, "connectionID"    # I

    .prologue
    .line 41
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "GetCurrentConnectionInfo"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0, p2}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    .line 42
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/callback/GetCurrentConnectionInfo;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "ConnectionID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    return-void
.end method


# virtual methods
.method public abstract received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/ConnectionInfo;)V
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 10
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 49
    :try_start_0
    new-instance v0, Lorg/teleal/cling/support/model/ConnectionInfo;

    .line 50
    const-string v1, "ConnectionID"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/action/ActionInvocation;->getInput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 51
    const-string v2, "RcsID"

    invoke-virtual {p1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 52
    const-string v3, "AVTransportID"

    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 53
    new-instance v4, Lorg/teleal/cling/support/model/ProtocolInfo;

    const-string v5, "ProtocolInfo"

    invoke-virtual {p1, v5}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v5

    invoke-virtual {v5}, Lorg/teleal/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/teleal/cling/support/model/ProtocolInfo;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v5, Lorg/teleal/cling/model/ServiceReference;

    const-string v6, "PeerConnectionManager"

    invoke-virtual {p1, v6}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/teleal/cling/model/ServiceReference;-><init>(Ljava/lang/String;)V

    .line 55
    const-string v6, "PeerConnectionID"

    invoke-virtual {p1, v6}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 56
    const-string v7, "Direction"

    invoke-virtual {p1, v7}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v7

    invoke-virtual {v7}, Lorg/teleal/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    move-result-object v7

    .line 57
    const-string v8, "Status"

    invoke-virtual {p1, v8}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v8

    invoke-virtual {v8}, Lorg/teleal/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/teleal/cling/support/model/ConnectionInfo$Status;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/ConnectionInfo$Status;

    move-result-object v8

    .line 49
    invoke-direct/range {v0 .. v8}, Lorg/teleal/cling/support/model/ConnectionInfo;-><init>(IIILorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/model/ServiceReference;ILorg/teleal/cling/support/model/ConnectionInfo$Direction;Lorg/teleal/cling/support/model/ConnectionInfo$Status;)V

    .line 60
    .local v0, "info":Lorg/teleal/cling/support/model/ConnectionInfo;
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/support/connectionmanager/callback/GetCurrentConnectionInfo;->received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/ConnectionInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "info":Lorg/teleal/cling/support/model/ConnectionInfo;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v9

    .line 64
    .local v9, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/teleal/cling/model/action/ActionException;

    sget-object v2, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t parse ConnectionInfo response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v9}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/action/ActionInvocation;->setFailure(Lorg/teleal/cling/model/action/ActionException;)V

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/teleal/cling/support/connectionmanager/callback/GetCurrentConnectionInfo;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto :goto_0
.end method
