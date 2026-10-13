.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$14;
.super Ljava/lang/Object;
.source "LiveTVActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->removeDMS(Lorg/teleal/cling/model/meta/Device;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

.field final synthetic val$device:Lorg/teleal/cling/model/meta/Device;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Lorg/teleal/cling/model/meta/Device;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$14;->val$device:Lorg/teleal/cling/model/meta/Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 663
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v1

    monitor-enter v1

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v0

    new-instance v2, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$14;->val$device:Lorg/teleal/cling/model/meta/Device;

    invoke-direct {v2, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->remove(Ljava/lang/Object;)V

    .line 665
    monitor-exit v1

    .line 666
    return-void

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
