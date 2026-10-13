.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$1;
.super Ljava/lang/Object;
.source "DMSBrowseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->startRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Come into runnable!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->access$000(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;)Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addSystemListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;)V

    .line 92
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->bindUpnpService()V

    .line 93
    return-void
.end method
