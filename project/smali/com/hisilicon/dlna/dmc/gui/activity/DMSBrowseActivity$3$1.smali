.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;
.super Ljava/lang/Object;
.source "DMSBrowseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;->onStartComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Come into updateOrCreateShareAMContent--><"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->updateOrCreateShareContent()V

    .line 130
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    new-instance v2, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1$1;

    invoke-direct {v2, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;)V

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
