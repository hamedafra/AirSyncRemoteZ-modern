.class public abstract Lorg/teleal/cling/controlpoint/ActionCallback;
.super Ljava/lang/Object;
.source "ActionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/controlpoint/ActionCallback$Default;
    }
.end annotation


# instance fields
.field protected final actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

.field protected controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;


# direct methods
.method protected constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 0
    .param p1, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    .line 102
    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V
    .locals 0
    .param p1, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    .line 97
    iput-object p2, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;

    .line 98
    return-void
.end method


# virtual methods
.method protected createDefaultFailureMessage(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)Ljava/lang/String;
    .locals 4
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;

    .prologue
    .line 162
    const-string v1, "Error: "

    .line 163
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getFailure()Lorg/teleal/cling/model/action/ActionException;

    move-result-object v0

    .line 164
    .local v0, "exception":Lorg/teleal/cling/model/action/ActionException;
    if-eqz v0, :cond_0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_0
    if-eqz p2, :cond_1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " (HTTP response was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/teleal/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    :cond_1
    return-object v1
.end method

.method protected failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V
    .locals 1
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/controlpoint/ActionCallback;->createDefaultFailureMessage(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public abstract failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
.end method

.method public getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    return-object v0
.end method

.method public declared-synchronized getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 118
    iget-object v6, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {v6}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v6

    invoke-virtual {v6}, Lorg/teleal/cling/model/meta/Action;->getService()Lorg/teleal/cling/model/meta/Service;

    move-result-object v5

    .line 121
    .local v5, "service":Lorg/teleal/cling/model/meta/Service;
    instance-of v6, v5, Lorg/teleal/cling/model/meta/LocalService;

    if-eqz v6, :cond_2

    move-object v1, v5

    .line 122
    check-cast v1, Lorg/teleal/cling/model/meta/LocalService;

    .line 125
    .local v1, "localService":Lorg/teleal/cling/model/meta/LocalService;
    iget-object v6, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {v6}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/teleal/cling/model/meta/LocalService;->getExecutor(Lorg/teleal/cling/model/meta/Action;)Lorg/teleal/cling/model/action/ActionExecutor;

    move-result-object v6

    iget-object v7, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-interface {v6, v7}, Lorg/teleal/cling/model/action/ActionExecutor;->execute(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 127
    iget-object v6, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {v6}, Lorg/teleal/cling/model/action/ActionInvocation;->getFailure()Lorg/teleal/cling/model/action/ActionException;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 128
    iget-object v6, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {p0, v6, v8}, Lorg/teleal/cling/controlpoint/ActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 159
    .end local v1    # "localService":Lorg/teleal/cling/model/meta/LocalService;
    :cond_0
    :goto_0
    return-void

    .line 130
    .restart local v1    # "localService":Lorg/teleal/cling/model/meta/LocalService;
    :cond_1
    iget-object v6, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {p0, v6}, Lorg/teleal/cling/controlpoint/ActionCallback;->success(Lorg/teleal/cling/model/action/ActionInvocation;)V

    goto :goto_0

    .line 134
    .end local v1    # "localService":Lorg/teleal/cling/model/meta/LocalService;
    :cond_2
    instance-of v6, v5, Lorg/teleal/cling/model/meta/RemoteService;

    if-eqz v6, :cond_0

    .line 136
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v6

    if-nez v6, :cond_3

    .line 137
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Callback must be executed through ControlPoint"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    move-object v3, v5

    .line 140
    check-cast v3, Lorg/teleal/cling/model/meta/RemoteService;

    .line 143
    .local v3, "remoteService":Lorg/teleal/cling/model/meta/RemoteService;
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/RemoteService;->getDevice()Lorg/teleal/cling/model/meta/Device;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/meta/RemoteDevice;

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/RemoteService;->getControlURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/teleal/cling/model/meta/RemoteDevice;->normalizeURI(Ljava/net/URI;)Ljava/net/URL;

    move-result-object v0

    .line 146
    .local v0, "controLURL":Ljava/net/URL;
    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getControlPoint()Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v6

    invoke-interface {v6}, Lorg/teleal/cling/controlpoint/ControlPoint;->getProtocolFactory()Lorg/teleal/cling/protocol/ProtocolFactory;

    move-result-object v6

    iget-object v7, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-interface {v6, v7, v0}, Lorg/teleal/cling/protocol/ProtocolFactory;->createSendingAction(Lorg/teleal/cling/model/action/ActionInvocation;Ljava/net/URL;)Lorg/teleal/cling/protocol/sync/SendingAction;

    move-result-object v2

    .line 147
    .local v2, "prot":Lorg/teleal/cling/protocol/sync/SendingAction;
    invoke-virtual {v2}, Lorg/teleal/cling/protocol/sync/SendingAction;->run()V

    .line 149
    invoke-virtual {v2}, Lorg/teleal/cling/protocol/sync/SendingAction;->getOutputMessage()Lorg/teleal/cling/model/message/StreamResponseMessage;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;

    .line 151
    .local v4, "response":Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;
    if-nez v4, :cond_4

    .line 152
    iget-object v6, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {p0, v6, v8}, Lorg/teleal/cling/controlpoint/ActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {v4}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {v6}, Lorg/teleal/cling/model/message/UpnpResponse;->isFailed()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 154
    iget-object v7, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {v4}, Lorg/teleal/cling/model/message/control/IncomingActionResponseMessage;->getOperation()Lorg/teleal/cling/model/message/UpnpOperation;

    move-result-object v6

    check-cast v6, Lorg/teleal/cling/model/message/UpnpResponse;

    invoke-virtual {p0, v7, v6}, Lorg/teleal/cling/controlpoint/ActionCallback;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto :goto_0

    .line 156
    :cond_5
    iget-object v6, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {p0, v6}, Lorg/teleal/cling/controlpoint/ActionCallback;->success(Lorg/teleal/cling/model/action/ActionInvocation;)V

    goto :goto_0
.end method

.method public declared-synchronized setControlPoint(Lorg/teleal/cling/controlpoint/ControlPoint;)Lorg/teleal/cling/controlpoint/ActionCallback;
    .locals 1
    .param p1, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->controlPoint:Lorg/teleal/cling/controlpoint/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-object p0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract success(Lorg/teleal/cling/model/action/ActionInvocation;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(ActionCallback) "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/teleal/cling/controlpoint/ActionCallback;->actionInvocation:Lorg/teleal/cling/model/action/ActionInvocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
