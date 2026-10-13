.class public abstract Lorg/teleal/cling/support/connectionmanager/callback/ConnectionComplete;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "ConnectionComplete.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;I)V
    .locals 1
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "connectionID"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/teleal/cling/support/connectionmanager/callback/ConnectionComplete;-><init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;I)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;I)V
    .locals 3
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;
    .param p3, "connectionID"    # I

    .prologue
    .line 35
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "ConnectionComplete"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0, p2}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    .line 36
    invoke-virtual {p0}, Lorg/teleal/cling/support/connectionmanager/callback/ConnectionComplete;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "ConnectionID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void
.end method
