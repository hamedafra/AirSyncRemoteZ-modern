.class public abstract Lorg/teleal/cling/support/avtransport/callback/GetPositionInfo;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "GetPositionInfo.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/teleal/cling/support/avtransport/callback/GetPositionInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/avtransport/callback/GetPositionInfo;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;)V
    .locals 4
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 37
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, v0, p1}, Lorg/teleal/cling/support/avtransport/callback/GetPositionInfo;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;)V
    .locals 2
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 41
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "GetPositionInfo"

    invoke-virtual {p2, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 42
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/callback/GetPositionInfo;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "InstanceID"

    invoke-virtual {v0, v1, p1}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    return-void
.end method


# virtual methods
.method public abstract received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/PositionInfo;)V
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 2
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 46
    new-instance v0, Lorg/teleal/cling/support/model/PositionInfo;

    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutputMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/support/model/PositionInfo;-><init>(Ljava/util/Map;)V

    .line 47
    .local v0, "positionInfo":Lorg/teleal/cling/support/model/PositionInfo;
    invoke-virtual {p0, p1, v0}, Lorg/teleal/cling/support/avtransport/callback/GetPositionInfo;->received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/PositionInfo;)V

    .line 48
    return-void
.end method
