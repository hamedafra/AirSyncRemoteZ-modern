.class Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;
.super Ljava/lang/Thread;
.source "RemoteDMRProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field private running:Z

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;


# direct methods
.method public constructor <init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)V
    .locals 1

    .prologue
    .line 80
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->running:Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->running:Z

    .line 82
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 91
    :goto_0
    iget-boolean v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->running:Z

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$000(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    if-nez v1, :cond_1

    .line 195
    :cond_0
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$100(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v1, v4}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$102(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 96
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$500(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v1

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$1;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$000(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$1;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;Lorg/teleal/cling/model/meta/Service;)V

    invoke-interface {v1, v2}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$600(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v1, v4}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$602(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 118
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$500(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v1

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$000(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;Lorg/teleal/cling/model/meta/Service;)V

    invoke-interface {v1, v2}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1500(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1600(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 170
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v1, v4}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1602(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 171
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$500(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/controlpoint/ControlPoint;

    move-result-object v1

    new-instance v2, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$3;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1500(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lorg/teleal/cling/model/meta/Service;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$3;-><init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;Lorg/teleal/cling/model/meta/Service;)V

    invoke-interface {v1, v2}, Lorg/teleal/cling/controlpoint/ControlPoint;->execute(Lorg/teleal/cling/controlpoint/ActionCallback;)V

    .line 190
    :cond_4
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->running:Z

    .line 86
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->interrupt()V

    .line 87
    return-void
.end method
