.class public abstract Lorg/teleal/cling/support/messagebox/AddMessage;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "AddMessage.java"


# instance fields
.field protected final mimeType:Lorg/teleal/common/util/MimeType;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/messagebox/model/Message;)V
    .locals 3
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "message"    # Lorg/teleal/cling/support/messagebox/model/Message;

    .prologue
    .line 34
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "AddMessage"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 31
    const-string v0, "text/xml;charset=\"utf-8\""

    invoke-static {v0}, Lorg/teleal/common/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/teleal/common/util/MimeType;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/messagebox/AddMessage;->mimeType:Lorg/teleal/common/util/MimeType;

    .line 36
    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/AddMessage;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "MessageID"

    invoke-virtual {p2}, Lorg/teleal/cling/support/messagebox/model/Message;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/AddMessage;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "MessageType"

    iget-object v2, p0, Lorg/teleal/cling/support/messagebox/AddMessage;->mimeType:Lorg/teleal/common/util/MimeType;

    invoke-virtual {v2}, Lorg/teleal/common/util/MimeType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Lorg/teleal/cling/support/messagebox/AddMessage;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "Message"

    invoke-virtual {p2}, Lorg/teleal/cling/support/messagebox/model/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-void
.end method
