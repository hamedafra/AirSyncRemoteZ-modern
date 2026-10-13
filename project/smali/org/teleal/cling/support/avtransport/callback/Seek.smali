.class public abstract Lorg/teleal/cling/support/avtransport/callback/Seek;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "Seek.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/teleal/cling/support/avtransport/callback/Seek;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/avtransport/callback/Seek;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)V
    .locals 4
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "relativeTimeTarget"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    sget-object v1, Lorg/teleal/cling/support/model/SeekMode;->REL_TIME:Lorg/teleal/cling/support/model/SeekMode;

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/teleal/cling/support/avtransport/callback/Seek;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/SeekMode;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/SeekMode;Ljava/lang/String;)V
    .locals 4
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "mode"    # Lorg/teleal/cling/support/model/SeekMode;
    .param p3, "target"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/teleal/cling/support/avtransport/callback/Seek;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/SeekMode;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "relativeTimeTarget"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lorg/teleal/cling/support/model/SeekMode;->REL_TIME:Lorg/teleal/cling/support/model/SeekMode;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/teleal/cling/support/avtransport/callback/Seek;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/SeekMode;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Lorg/teleal/cling/support/model/SeekMode;Ljava/lang/String;)V
    .locals 3
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "mode"    # Lorg/teleal/cling/support/model/SeekMode;
    .param p4, "target"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "Seek"

    invoke-virtual {p2, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 50
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/callback/Seek;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "InstanceID"

    invoke-virtual {v0, v1, p1}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/callback/Seek;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "Unit"

    invoke-virtual {p3}, Lorg/teleal/cling/support/model/SeekMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/callback/Seek;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "Target"

    invoke-virtual {v0, v1, p4}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-void
.end method


# virtual methods
.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 2
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 57
    sget-object v0, Lorg/teleal/cling/support/avtransport/callback/Seek;->log:Ljava/util/logging/Logger;

    const-string v1, "Execution successful"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 58
    return-void
.end method
