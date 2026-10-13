.class public interface abstract Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService$CoreUpnpServiceListener;
.super Ljava/lang/Object;
.source "CoreUpnpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/upnp/CoreUpnpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CoreUpnpServiceListener"
.end annotation


# virtual methods
.method public abstract onNetworkChanged(Ljava/net/NetworkInterface;)V
.end method

.method public abstract onRouterDisabled()V
.end method

.method public abstract onRouterEnabled()V
.end method

.method public abstract onRouterError(Ljava/lang/String;)V
.end method
