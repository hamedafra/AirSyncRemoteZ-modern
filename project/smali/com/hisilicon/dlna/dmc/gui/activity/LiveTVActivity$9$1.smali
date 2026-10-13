.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9$1;
.super Ljava/lang/Object;
.source "LiveTVActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9;->onNetworkChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->refreshDevicesList()V

    .line 315
    return-void
.end method
