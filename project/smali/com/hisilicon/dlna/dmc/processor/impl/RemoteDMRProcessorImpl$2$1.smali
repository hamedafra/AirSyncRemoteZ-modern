.class Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2$1;
.super Lorg/teleal/cling/support/avtransport/callback/GetTransportInfo;
.source "RemoteDMRProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;Lorg/teleal/cling/model/meta/Service;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;
    .param p2, "x0"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;

    invoke-direct {p0, p2}, Lorg/teleal/cling/support/avtransport/callback/GetTransportInfo;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 2
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "operation"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "defaultMsg"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1902(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 278
    return-void
.end method

.method public received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/TransportInfo;)V
    .locals 2
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "transportInfo"    # Lorg/teleal/cling/support/model/TransportInfo;

    .prologue
    .line 283
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$10;->$SwitchMap$org$teleal$cling$support$model$TransportState:[I

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/TransportInfo;->getCurrentTransportState()Lorg/teleal/cling/support/model/TransportState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/TransportState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1902(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 290
    return-void

    .line 285
    :pswitch_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->val$time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->seek(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2$1;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$2;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$2102(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
