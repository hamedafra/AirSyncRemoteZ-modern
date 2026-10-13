.class public abstract Lorg/teleal/cling/support/avtransport/callback/SetAVTransportURI;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "SetAVTransportURI.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/teleal/cling/support/avtransport/callback/SetAVTransportURI;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/support/avtransport/callback/SetAVTransportURI;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)V
    .locals 4
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/teleal/cling/support/avtransport/callback/SetAVTransportURI;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "metadata"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/teleal/cling/support/avtransport/callback/SetAVTransportURI;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/teleal/cling/support/avtransport/callback/SetAVTransportURI;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "instanceId"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "metadata"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "SetAVTransportURI"

    invoke-virtual {p2, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 48
    sget-object v0, Lorg/teleal/cling/support/avtransport/callback/SetAVTransportURI;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating SetAVTransportURI action for URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/callback/SetAVTransportURI;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "InstanceID"

    invoke-virtual {v0, v1, p1}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/callback/SetAVTransportURI;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "CurrentURI"

    invoke-virtual {v0, v1, p3}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lorg/teleal/cling/support/avtransport/callback/SetAVTransportURI;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object v0

    const-string v1, "CurrentURIMetaData"

    invoke-virtual {v0, v1, p4}, Lorg/teleal/cling/model/action/ActionInvocation;->setInput(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method


# virtual methods
.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 2
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 56
    sget-object v0, Lorg/teleal/cling/support/avtransport/callback/SetAVTransportURI;->log:Ljava/util/logging/Logger;

    const-string v1, "Execution successful"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 57
    return-void
.end method
