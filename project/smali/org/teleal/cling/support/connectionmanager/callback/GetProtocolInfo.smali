.class public abstract Lorg/teleal/cling/support/connectionmanager/callback/GetProtocolInfo;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "GetProtocolInfo.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;)V
    .locals 1
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/connectionmanager/callback/GetProtocolInfo;-><init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/controlpoint/ControlPoint;)V
    .locals 2
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "controlPoint"    # Lorg/teleal/cling/controlpoint/ControlPoint;

    .prologue
    .line 39
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "GetProtocolInfo"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0, p2}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    .line 40
    return-void
.end method


# virtual methods
.method public abstract received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/ProtocolInfos;Lorg/teleal/cling/support/model/ProtocolInfos;)V
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 8
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    const/4 v4, 0x0

    .line 45
    :try_start_0
    const-string v3, "Sink"

    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v1

    .line 46
    .local v1, "sink":Lorg/teleal/cling/model/action/ActionArgumentValue;
    const-string v3, "Source"

    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v2

    .line 50
    .local v2, "source":Lorg/teleal/cling/model/action/ActionArgumentValue;
    if-eqz v1, :cond_0

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfos;

    invoke-virtual {v1}, Lorg/teleal/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/teleal/cling/support/model/ProtocolInfos;-><init>(Ljava/lang/String;)V

    move-object v5, v3

    .line 51
    :goto_0
    if-eqz v2, :cond_1

    new-instance v3, Lorg/teleal/cling/support/model/ProtocolInfos;

    invoke-virtual {v2}, Lorg/teleal/cling/model/action/ActionArgumentValue;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/teleal/cling/support/model/ProtocolInfos;-><init>(Ljava/lang/String;)V

    .line 48
    :goto_1
    invoke-virtual {p0, p1, v5, v3}, Lorg/teleal/cling/support/connectionmanager/callback/GetProtocolInfo;->received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/ProtocolInfos;Lorg/teleal/cling/support/model/ProtocolInfos;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "sink":Lorg/teleal/cling/model/action/ActionArgumentValue;
    .end local v2    # "source":Lorg/teleal/cling/model/action/ActionArgumentValue;
    :goto_2
    return-void

    .restart local v1    # "sink":Lorg/teleal/cling/model/action/ActionArgumentValue;
    .restart local v2    # "source":Lorg/teleal/cling/model/action/ActionArgumentValue;
    :cond_0
    move-object v5, v4

    .line 50
    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 51
    goto :goto_1

    .line 54
    .end local v1    # "sink":Lorg/teleal/cling/model/action/ActionArgumentValue;
    .end local v2    # "source":Lorg/teleal/cling/model/action/ActionArgumentValue;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/teleal/cling/model/action/ActionException;

    sget-object v5, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t parse ProtocolInfo response: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, v0}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/action/ActionInvocation;->setFailure(Lorg/teleal/cling/model/action/ActionException;)V

    .line 58
    invoke-virtual {p0, p1, v4}, Lorg/teleal/cling/support/connectionmanager/callback/GetProtocolInfo;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto :goto_2
.end method
