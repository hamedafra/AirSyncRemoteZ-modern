.class public abstract Lorg/teleal/cling/support/renderingcontrol/callback/GetVolume;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "GetVolume.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/teleal/cling/support/renderingcontrol/callback/GetVolume;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/renderingcontrol/callback/GetVolume;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;)V
    .locals 4
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 39
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, v0, p1}, Lorg/teleal/cling/support/renderingcontrol/callback/GetVolume;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;)V
    .locals 3
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 43
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "GetVolume"

    invoke-virtual {p2, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 44
    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/callback/GetVolume;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "InstanceID"

    invoke-virtual {v0, v1, p1}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Lorg/teleal/cling/support/renderingcontrol/callback/GetVolume;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "Channel"

    sget-object v2, Lorg/teleal/cling/support/model/Channel;->Master:Lorg/teleal/cling/support/model/Channel;

    invoke-virtual {v2}, Lorg/teleal/cling/support/model/Channel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method


# virtual methods
.method public abstract received(Lorg/teleal/cling/model/action/ActionInvocation;I)V
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 7
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 49
    const/4 v2, 0x1

    .line 50
    .local v2, "ok":Z
    const/4 v0, 0x0

    .line 52
    .local v0, "currentVolume":I
    :try_start_0
    const-string v3, "CurrentVolume"

    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 60
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/support/renderingcontrol/callback/GetVolume;->received(Lorg/teleal/cling/model/action/ActionInvocation;I)V

    .line 61
    :cond_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 55
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/teleal/cling/model/action/ActionException;

    sget-object v4, Lorg/teleal/cling/model/types/ErrorCode;->ACTION_FAILED:Lorg/teleal/cling/model/types/ErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t parse ProtocolInfo response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lorg/teleal/cling/model/action/ActionException;-><init>(Lorg/teleal/cling/model/types/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    invoke-virtual {p1, v3}, Lorg/teleal/cling/model/action/ActionInvocation;->setFailure(Lorg/teleal/cling/model/action/ActionException;)V

    .line 57
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lorg/teleal/cling/support/renderingcontrol/callback/GetVolume;->failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;)V

    .line 58
    const/4 v2, 0x0

    goto :goto_0
.end method
