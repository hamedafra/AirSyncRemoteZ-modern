.class Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$1;
.super Ljava/lang/Object;
.source "LocalDMRProcessorImpl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v4, 0x1

    .line 265
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getPlayPosition()I

    move-result v0

    .line 266
    .local v0, "position":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    if-lez v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/teleal/cling/model/ModelUtil;->toTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$800(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;Ljava/lang/String;)V

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$300(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 273
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 274
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-virtual {v1, v4}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->setRunning(Z)V

    .line 275
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$1;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$202(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;I)I

    .line 276
    return-void
.end method
