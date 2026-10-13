.class public interface abstract Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
.super Ljava/lang/Object;
.source "UpnpProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SystemListener"
.end annotation


# virtual methods
.method public abstract onNetworkChanged()V
.end method

.method public abstract onRouterDisabledEvent()V
.end method

.method public abstract onRouterEnabledEvent()V
.end method

.method public abstract onRouterError(Ljava/lang/String;)V
.end method

.method public abstract onStartComplete()V
.end method

.method public abstract onStartFailed()V
.end method
