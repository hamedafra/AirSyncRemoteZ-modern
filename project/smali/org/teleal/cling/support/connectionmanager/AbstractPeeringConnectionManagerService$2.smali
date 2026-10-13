.class Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;
.super Lorg/teleal/cling/support/connectionmanager/callback/ConnectionComplete;
.source "AbstractPeeringConnectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->closeConnectionWithPeer(Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/ConnectionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

.field private final synthetic val$connectionInfo:Lorg/teleal/cling/support/model/ConnectionInfo;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;ILorg/teleal/cling/support/model/ConnectionInfo;)V
    .locals 0
    .param p2, "$anonymous0"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "$anonymous1"    # Lorg/teleal/cling/controlpoint/ControlPoint;
    .param p4, "$anonymous2"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;->this$0:Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    iput-object p5, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;->val$connectionInfo:Lorg/teleal/cling/support/model/ConnectionInfo;

    .line 207
    invoke-direct {p0, p2, p3, p4}, Lorg/teleal/cling/support/connectionmanager/callback/ConnectionComplete;-><init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;I)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 1
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "defaultMsg"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;->this$0:Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->peerFailure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 2
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 215
    iget-object v0, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;->this$0:Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;

    iget-object v1, p0, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService$2;->val$connectionInfo:Lorg/teleal/cling/support/model/ConnectionInfo;

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/ConnectionInfo;->getConnectionID()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/connectionmanager/AbstractPeeringConnectionManagerService;->removeConnection(I)V

    .line 216
    return-void
.end method
