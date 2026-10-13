.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12;
.super Ljava/lang/Object;
.source "PlayingImageActivity.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor$DMRProcessorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionFail(Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 0
    .param p1, "actionCallback"    # Lorg/teleal/cling/model/meta/Action;
    .param p2, "response"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "cause"    # Ljava/lang/String;

    .prologue
    .line 1036
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 1041
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----pic play completed-----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method public onErrorEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1031
    return-void
.end method

.method public onMiddleEndEvent()V
    .locals 2

    .prologue
    .line 1020
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "---- pic come into onMiddleEndEvent----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$12;)V

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1026
    return-void
.end method

.method public onPaused()V
    .locals 0

    .prologue
    .line 1016
    return-void
.end method

.method public onPlaying()V
    .locals 0

    .prologue
    .line 1012
    return-void
.end method

.method public onStoped()V
    .locals 0

    .prologue
    .line 1008
    return-void
.end method

.method public onUpdatePosition(JJ)V
    .locals 0
    .param p1, "current"    # J
    .param p3, "max"    # J

    .prologue
    .line 1004
    return-void
.end method
