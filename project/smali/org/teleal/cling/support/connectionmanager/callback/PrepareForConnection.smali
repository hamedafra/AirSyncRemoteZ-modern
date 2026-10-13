.class public abstract Lorg/teleal/cling/support/connectionmanager/callback/PrepareForConnection;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "PrepareForConnection.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/model/ServiceReference;ILorg/teleal/cling/support/model/ConnectionInfo$Direction;)V
    .locals 3
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;
    .param p3, "remoteProtocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfo;
    .param p4, "peerConnectionManager"    # Lorg/teleal/cling/model/ServiceReference;
    .param p5, "peerConnectionID"    # I
    .param p6, "direction"    # Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    .prologue
    .line 43
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "PrepareForConnection"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0, p2}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    .line 45
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/callback/PrepareForConnection;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "RemoteProtocolInfo"

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/ProtocolInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/callback/PrepareForConnection;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "PeerConnectionManager"

    invoke-virtual {p4}, Lorg/teleal/cling/model/ServiceReference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/callback/PrepareForConnection;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "PeerConnectionID"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/callback/PrepareForConnection;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "Direction"

    invoke-virtual {p6}, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/model/ServiceReference;ILorg/teleal/cling/support/model/ConnectionInfo$Direction;)V
    .locals 7
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "remoteProtocolInfo"    # Lorg/teleal/cling/support/model/ProtocolInfo;
    .param p3, "peerConnectionManager"    # Lorg/teleal/cling/model/ServiceReference;
    .param p4, "peerConnectionID"    # I
    .param p5, "direction"    # Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    .prologue
    .line 37
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/teleal/cling/support/connectionmanager/callback/PrepareForConnection;-><init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/model/ServiceReference;ILorg/teleal/cling/support/model/ConnectionInfo$Direction;)V

    .line 38
    return-void
.end method


# virtual methods
.method public abstract received(Lorg/teleal/cling/model/action/ActionInvocation;III)V
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 3
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 53
    .line 55
    const-string v0, "ConnectionID"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 56
    const-string v0, "RcsID"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 57
    const-string v0, "AVTransportID"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 53
    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/teleal/cling/support/connectionmanager/callback/PrepareForConnection;->received(Lorg/teleal/cling/model/action/ActionInvocation;III)V

    .line 59
    return-void
.end method
