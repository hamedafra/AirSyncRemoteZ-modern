.class public abstract Lorg/teleal/cling/support/igd/callback/GetExternalIP;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "GetExternalIP.java"


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;)V
    .locals 2
    .param p1, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 30
    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "GetExternalIPAddress"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected abstract success(Ljava/lang/String;)V
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 1
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    .line 35
    const-string v0, "NewExternalIPAddress"

    invoke-virtual {p1, v0}, Lorg/teleal/cling/model/action/ActionInvocation;->getOutput(Ljava/lang/String;)Lorg/teleal/cling/model/action/ActionArgumentValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/teleal/cling/support/igd/callback/GetExternalIP;->success(Ljava/lang/String;)V

    .line 36
    return-void
.end method
