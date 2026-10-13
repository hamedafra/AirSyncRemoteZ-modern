.class public abstract Lorg/teleal/cling/support/igd/callback/PortMappingAdd;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "PortMappingAdd.java"


# instance fields
.field protected final portMapping:Lorg/teleal/cling/support/model/PortMapping;


# direct methods
.method protected constructor <init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/support/model/PortMapping;)V
    .locals 3
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;
    .param p3, "portMapping"    # Lorg/teleal/cling/support/model/PortMapping;

    .prologue
    .line 38
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "AddPortMapping"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0, p2}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    .line 40
    iput-object p3, p0, Lorg/teleal/cling/support/igd/callback/PortMappingAdd;->portMapping:Lorg/teleal/cling/support/model/PortMapping;

    .line 42
    invoke-virtual {p0}, Lorg/teleal/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "NewExternalPort"

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/PortMapping;->getExternalPort()Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lorg/teleal/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "NewProtocol"

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/PortMapping;->getProtocol()Lorg/teleal/cling/support/model/PortMapping$Protocol;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lorg/teleal/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "NewInternalClient"

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/PortMapping;->getInternalClient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Lorg/teleal/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "NewInternalPort"

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/PortMapping;->getInternalPort()Lorg/teleal/cling/model/types/UnsignedIntegerTwoBytes;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0}, Lorg/teleal/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "NewLeaseDuration"

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/PortMapping;->getLeaseDurationSeconds()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Lorg/teleal/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "NewEnabled"

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/PortMapping;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p3}, Lorg/teleal/cling/support/model/PortMapping;->hasRemoteHost()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lorg/teleal/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "NewRemoteHost"

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/PortMapping;->getRemoteHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    :cond_0
    invoke-virtual {p3}, Lorg/teleal/cling/support/model/PortMapping;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lorg/teleal/cling/support/igd/callback/PortMappingAdd;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "NewPortMappingDescription"

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/PortMapping;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/PortMapping;)V
    .locals 1
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "portMapping"    # Lorg/teleal/cling/support/model/PortMapping;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/teleal/cling/support/igd/callback/PortMappingAdd;-><init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;Lorg/teleal/cling/support/model/PortMapping;)V

    .line 35
    return-void
.end method
