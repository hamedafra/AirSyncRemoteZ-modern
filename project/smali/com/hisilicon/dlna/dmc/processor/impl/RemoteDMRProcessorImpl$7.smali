.class Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$7;
.super Ljava/lang/Object;
.source "RemoteDMRProcessorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->setURIandPlay(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

.field final synthetic val$item:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$7;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$7;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$7;->val$item:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$7;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$7;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$7;->val$item:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getMetaData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$2200(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-void
.end method
