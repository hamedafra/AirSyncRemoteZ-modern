.class Lorg/teleal/cling/support/igd/PortMappingListener$2;
.super Lorg/teleal/cling/support/igd/callback/PortMappingDelete;
.source "PortMappingListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/cling/support/igd/PortMappingListener;->beforeShutdown(Lorg/teleal/cling/registry/Registry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/support/igd/PortMappingListener;

.field private final synthetic val$it:Ljava/util/Iterator;

.field private final synthetic val$pm:Lorg/teleal/cling/support/model/PortMapping;


# direct methods
.method constructor <init>(Lorg/teleal/cling/support/igd/PortMappingListener;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/support/model/PortMapping;Lorg/teleal/cling/support/model/PortMapping;Ljava/util/Iterator;)V
    .locals 0
    .param p2, "$anonymous0"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "$anonymous1"    # Lorg/teleal/cling/controlpoint/ControlPoint;
    .param p4, "$anonymous2"    # Lorg/teleal/cling/support/model/PortMapping;

    .prologue
    .line 1
    iput-object p1, p0, Lorg/teleal/cling/support/igd/PortMappingListener$2;->this$0:Lorg/teleal/cling/support/igd/PortMappingListener;

    iput-object p5, p0, Lorg/teleal/cling/support/igd/PortMappingListener$2;->val$pm:Lorg/teleal/cling/support/model/PortMapping;

    iput-object p6, p0, Lorg/teleal/cling/support/igd/PortMappingListener$2;->val$it:Ljava/util/Iterator;

    .line 148
    invoke-direct {p0, p2, p3, p4}, Lorg/teleal/cling/support/igd/callback/PortMappingDelete;-><init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/support/model/PortMapping;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 3
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "defaultMsg"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lorg/teleal/cling/support/igd/PortMappingListener$2;->this$0:Lorg/teleal/cling/support/igd/PortMappingListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to delete port mapping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/teleal/cling/support/igd/PortMappingListener$2;->val$pm:Lorg/teleal/cling/support/model/PortMapping;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/igd/PortMappingListener;->handleFailureMessage(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lorg/teleal/cling/support/igd/PortMappingListener$2;->this$0:Lorg/teleal/cling/support/igd/PortMappingListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/teleal/cling/support/igd/PortMappingListener;->handleFailureMessage(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 3
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 152
    invoke-static {}, Lorg/teleal/cling/support/igd/PortMappingListener;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Port mapping deleted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/teleal/cling/support/igd/PortMappingListener$2;->val$pm:Lorg/teleal/cling/support/model/PortMapping;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lorg/teleal/cling/support/igd/PortMappingListener$2;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 154
    return-void
.end method
