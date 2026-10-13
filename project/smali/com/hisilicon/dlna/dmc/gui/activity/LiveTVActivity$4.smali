.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$4;
.super Ljava/lang/Object;
.source "LiveTVActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->isNetWork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    const v1, 0x7f080077

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$100(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    .line 169
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addDevicesListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$DevicesListener;)V

    .line 170
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$300(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->addSystemListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;)V

    .line 171
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->bindUpnpService()V

    goto :goto_0
.end method
