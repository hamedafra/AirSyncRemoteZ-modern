.class public interface abstract Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
.super Ljava/lang/Object;
.source "DMRProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V
.end method

.method public abstract dispose()V
.end method

.method public abstract getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
.end method

.method public abstract getCurrentTrackURI()Ljava/lang/String;
.end method

.method public abstract getMaxVolume()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getVolume()I
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract removeListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;)V
.end method

.method public abstract seek(Ljava/lang/String;)V
.end method

.method public abstract setRunning(Z)V
.end method

.method public abstract setURIandPlay(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V
.end method

.method public abstract setVolume(I)V
.end method

.method public abstract stop()V
.end method
