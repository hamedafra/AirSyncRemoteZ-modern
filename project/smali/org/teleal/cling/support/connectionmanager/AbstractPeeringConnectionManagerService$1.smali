.class Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;
.super Lorg/teleal/cling/support/connectionmanager/callback/PrepareForConnection;
.source "AbstractPeeringConnectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->createConnectionWithPeer(Lorg/teleal/cling/model/ServiceReference;Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/support/model/ConnectionInfo$Direction;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

.field private final synthetic val$direction:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

.field private final synthetic val$failed:[Z

.field private final synthetic val$localConnectionID:I

.field private final synthetic val$peerService:Lorg/teleal/cling/model/meta/Service;

.field private final synthetic val$protInfo:Lorg/teleal/cling/support/model/ProtocolInfo;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/model/ServiceReference;ILorg/teleal/cling/support/model/ConnectionInfo$Direction;ILorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/ConnectionInfo$Direction;[Z)V
    .locals 8
    .param p2, "$anonymous0"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "$anonymous1"    # Lorg/teleal/cling/controlpoint/ControlPoint;
    .param p4, "$anonymous2"    # Lorg/teleal/cling/support/model/ProtocolInfo;
    .param p5, "$anonymous3"    # Lorg/teleal/cling/model/ServiceReference;
    .param p6, "$anonymous4"    # I
    .param p7, "$anonymous5"    # Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->this$0:Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    move/from16 v0, p8

    iput v0, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$localConnectionID:I

    move-object/from16 v0, p9

    iput-object v0, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$protInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$peerService:Lorg/teleal/cling/model/meta/Service;

    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$direction:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$failed:[Z

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    .line 154
    invoke-direct/range {v1 .. v7}, Lorg/teleal/cling/support/connectionmanager/callback/PrepareForConnection;-><init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/model/ServiceReference;ILorg/teleal/cling/support/model/ConnectionInfo$Direction;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 3
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "defaultMsg"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->this$0:Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->peerFailure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$failed:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 183
    return-void
.end method

.method public received(Lorg/teleal/cling/model/action/ActionInvocation;III)V
    .locals 9
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "peerConnectionID"    # I
    .param p3, "rcsID"    # I
    .param p4, "avTransportID"    # I

    .prologue
    .line 164
    new-instance v0, Lorg/teleal/cling/support/model/ConnectionInfo;

    .line 165
    iget v1, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$localConnectionID:I

    .line 168
    iget-object v4, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$protInfo:Lorg/teleal/cling/support/model/ProtocolInfo;

    .line 169
    iget-object v2, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$peerService:Lorg/teleal/cling/model/meta/Service;

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/Service;->getReference()Lorg/teleal/cling/model/ServiceReference;

    move-result-object v5

    .line 171
    iget-object v2, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->val$direction:Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    invoke-virtual {v2}, Lorg/teleal/cling/support/model/ConnectionInfo$Direction;->getOpposite()Lorg/teleal/cling/support/model/ConnectionInfo$Direction;

    move-result-object v7

    .line 172
    sget-object v8, Lorg/teleal/cling/support/model/ConnectionInfo$Status;->OK:Lorg/teleal/cling/support/model/ConnectionInfo$Status;

    move v2, p3

    move v3, p4

    move v6, p2

    .line 164
    invoke-direct/range {v0 .. v8}, Lorg/teleal/cling/support/model/ConnectionInfo;-><init>(IIILorg/teleal/cling/support/model/ProtocolInfo;Lorg/teleal/cling/model/ServiceReference;ILorg/teleal/cling/support/model/ConnectionInfo$Direction;Lorg/teleal/cling/support/model/ConnectionInfo$Status;)V

    .line 174
    .local v0, "info":Lorg/teleal/cling/support/model/ConnectionInfo;
    iget-object v1, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$1;->this$0:Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    invoke-virtual {v1, v0}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->storeConnection(Lorg/teleal/cling/support/model/ConnectionInfo;)V

    .line 175
    return-void
.end method
