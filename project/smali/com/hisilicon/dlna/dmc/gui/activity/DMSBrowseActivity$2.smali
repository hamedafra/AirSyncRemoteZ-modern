.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$2;
.super Ljava/lang/Object;
.source "DMSBrowseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;
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
    .line 96
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Come into runnable!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$MyDeviceListener;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$MyDeviceListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$1;)V

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addDevicesListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;)V

    .line 107
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->access$000(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;)Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addSystemListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;)V

    .line 108
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->bindUpnpService()V

    .line 109
    return-void
.end method
