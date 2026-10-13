.class public abstract Lorg/teleal/cling/support/avtransport/callback/Play;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "Play.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/teleal/cling/support/avtransport/callback/Play;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/avtransport/callback/Play;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;)V
    .locals 4
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 36
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    const-string v1, "1"

    invoke-direct {p0, v0, p1, v1}, Lorg/teleal/cling/support/avtransport/callback/Play;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)V
    .locals 4
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "speed"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, v0, p1, p2}, Lorg/teleal/cling/support/avtransport/callback/Play;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;)V
    .locals 1
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 44
    const-string v0, "1"

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/support/avtransport/callback/Play;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)V
    .locals 2
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "speed"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "Play"

    invoke-virtual {p2, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 49
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/callback/Play;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "InstanceID"

    invoke-virtual {v0, v1, p1}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/callback/Play;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "Speed"

    invoke-virtual {v0, v1, p3}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    return-void
.end method


# virtual methods
.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 2
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 55
    sget-object v0, Lorg/teleal/cling/support/avtransport/callback/Play;->log:Ljava/util/logging/Logger;

    const-string v1, "Execution successful"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 56
    return-void
.end method
