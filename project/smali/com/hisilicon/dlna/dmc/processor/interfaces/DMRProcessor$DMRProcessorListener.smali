.class public interface abstract Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
.super Ljava/lang/Object;
.source "DMRProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DMRProcessorListener"
.end annotation


# virtual methods
.method public abstract onActionFail(Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
.end method

.method public abstract onCompleted()V
.end method

.method public abstract onErrorEvent(Ljava/lang/String;)V
.end method

.method public abstract onMiddleEndEvent()V
.end method

.method public abstract onPaused()V
.end method

.method public abstract onPlaying()V
.end method

.method public abstract onStoped()V
.end method

.method public abstract onUpdatePosition(JJ)V
.end method
