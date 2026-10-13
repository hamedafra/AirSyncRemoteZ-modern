.class Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;
.super Ljava/lang/Object;
.source "RemoteDMRProcessorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->playingSeek(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

.field final synthetic val$time:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->val$time:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 254
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$2100(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 256
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_1
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1900(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$500(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$000(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$000(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v3

    const-string v4, "GetTransportInfo"

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/meta/Service;->getAction(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object v0

    .line 268
    .local v0, "action":Lorg/teleal/cling/model/meta/Action;
    if-eqz v0, :cond_0

    .line 272
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1902(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 273
    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2$1;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$000(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2$1;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;Lorg/teleal/cling/model/meta/Service;)V

    .line 293
    .local v2, "getTransportInfo":Lorg/teleal/cling/support/avtransport/callback/GetTransportInfo;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$500(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    goto :goto_0

    .line 257
    .end local v0    # "action":Lorg/teleal/cling/model/meta/Action;
    .end local v2    # "getTransportInfo":Lorg/teleal/cling/support/avtransport/callback/GetTransportInfo;
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 296
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
