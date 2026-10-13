.class Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;
.super Lorg/teleal/cling/support/avtransport/callback/GetTransportInfo;
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
    .line 118
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

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
    .line 122
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-virtual {p1}, Lorg/teleal/cling/model/action/ActionInvocation;->getAction()Lorg/teleal/cling/model/meta/Action;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$200(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/model/meta/Action;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$602(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 124
    return-void
.end method

.method public received(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/support/model/TransportInfo;)V
    .locals 3
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "transportInfo"    # Lorg/teleal/cling/support/model/TransportInfo;

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/TransportInfo;->getCurrentTransportState()Lorg/teleal/cling/support/model/TransportState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$702(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/support/model/TransportState;)Lorg/teleal/cling/support/model/TransportState;

    .line 130
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$10;->$SwitchMap$org$teleal$cling$support$model$TransportState:[I

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/TransportInfo;->getCurrentTransportState()Lorg/teleal/cling/support/model/TransportState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/support/model/TransportState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v0, v2}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$602(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 165
    return-void

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$800(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 134
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$900(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$800(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 140
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1000(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$800(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setPlayStatue(I)V

    .line 147
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1100(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)V

    .line 149
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1200(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----STOPPED---- fireOnEndTrackEvent"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1300(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread$2;->this$1:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$UpdateThread;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1400(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
