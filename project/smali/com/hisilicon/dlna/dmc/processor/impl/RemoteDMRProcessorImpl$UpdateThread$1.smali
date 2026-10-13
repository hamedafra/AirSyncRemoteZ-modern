.class Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$1;
.super Lorg/teleal/cling/support/avtransport/callback/GetPositionInfo;
.source "RemoteDMRProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;Lorg/teleal/cling/model/meta/Service;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;
    .param p2, "x0"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    invoke-direct {p0, p2}, Lorg/teleal/cling/support/avtransport/callback/GetPositionInfo;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 2
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "response"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "defaultMsg"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$200(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$102(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 103
    return-void
.end method

.method public received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/PositionInfo;)V
    .locals 6
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "positionInfo"    # Lorg/teleal/cling/support/model/PositionInfo;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/PositionInfo;->getTrackElapsedSeconds()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$302(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;I)I

    .line 109
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/PositionInfo;->getTrackElapsedSeconds()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/PositionInfo;->getTrackDurationSeconds()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$400(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;JJ)V

    .line 110
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$102(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 111
    return-void
.end method
