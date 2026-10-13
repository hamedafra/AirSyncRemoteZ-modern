.class Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$2;
.super Ljava/lang/Object;
.source "LocalDMRProcessorImpl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 280
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 285
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setPlayPosition(I)V

    .line 286
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$002(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;I)I

    .line 287
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;->access$900(Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMRProcessorImpl;)V

    .line 291
    return-void
.end method
