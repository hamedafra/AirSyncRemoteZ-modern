.class Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$3;
.super Lorg/teleal/cling/support/renderingcontrol/callback/GetVolume;
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
    .line 171
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$3;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    invoke-direct {p0, p2}, Lorg/teleal/cling/support/renderingcontrol/callback/GetVolume;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 2
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "defaultMsg"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$3;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$200(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$3;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1602(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 177
    return-void
.end method

.method public received(Lorg/teleal/cling/model/action/ActionInvocation;I)V
    .locals 2
    .param p1, "actionInvocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "currentVolume"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$3;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v0, p2}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1702(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;I)I

    .line 184
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$3;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1602(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 185
    return-void
.end method
