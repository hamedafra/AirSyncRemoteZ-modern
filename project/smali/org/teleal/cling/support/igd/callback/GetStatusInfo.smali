.class public abstract Lorg/teleal/cling/support/igd/callback/GetStatusInfo;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "GetStatusInfo.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;)V
    .locals 2
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 34
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "GetStatusInfo"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 35
    return-void
.end method


# virtual methods
.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 7
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 42
    :try_start_0
    const-string v3, "NewConnectionStatus"

    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/teleal/cling/support/model/Connection$Status;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/Connection$Status;

    move-result-object v2

    .line 45
    .local v2, "status":Lorg/teleal/cling/support/model/Connection$Status;
    const-string v3, "NewLastConnectionError"

    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/teleal/cling/support/model/Connection$Error;->valueOf(Ljava/lang/String;)Lorg/teleal/cling/support/model/Connection$Error;

    move-result-object v1

    .line 47
    .local v1, "lastError":Lorg/teleal/cling/support/model/Connection$Error;
    new-instance v4, Lorg/teleal/cling/support/model/Connection$StatusInfo;

    const-string v3, "NewUptime"

    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-direct {v4, v2, v3, v1}, Lorg/teleal/cling/support/model/Connection$StatusInfo;-><init>(Lorg/teleal/cling/support/model/Connection$Status;Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/support/model/Connection$Error;)V

    invoke-virtual {p0, v4}, Lorg/teleal/cling/support/igd/callback/GetStatusInfo;->success(Lorg/teleal/cling/support/model/Connection$StatusInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "lastError":Lorg/teleal/cling/support/model/Connection$Error;
    .end local v2    # "status":Lorg/teleal/cling/support/model/Connection$Status;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 51
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/teleal/cling/model/action/ActionException;

    .line 52
    sget-object v4, Lorg/teleal/cling/model/types/ErrorCode;->ARGUMENT_VALUE_INVALID:Lorg/teleal/cling/model/types/ErrorCode;

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid status or last error string: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-direct {v3, v4, v5, v0}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/action/ActionInvocation;->setFailure(Lorg/teleal/cling/model/action/ActionException;)V

    .line 57
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lorg/teleal/cling/support/igd/callback/GetStatusInfo;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    goto :goto_0
.end method

.method protected abstract success(Lorg/teleal/cling/support/model/Connection$StatusInfo;)V
.end method
