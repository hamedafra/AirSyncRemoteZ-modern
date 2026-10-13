.class public abstract Lorg/teleal/cling/support/messagebox/RemoveMessage;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "RemoveMessage.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;I)V
    .locals 3
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "id"    # I

    .prologue
    .line 37
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "RemoveMessage"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 38
    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/RemoveMessage;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "MessageID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/messagebox/model/Message;)V
    .locals 1
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "message"    # Lorg/teleal/cling/support/messagebox/model/Message;

    .prologue
    .line 33
    invoke-virtual {p2}, Lorg/teleal/cling/support/messagebox/model/Message;->getId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/messagebox/RemoveMessage;-><init>(Lorg/teleal/cling/model/meta/Service;I)V

    .line 34
    return-void
.end method
