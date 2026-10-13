.class Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;
.super Lorg/teleal/cling/support/avtransport/callback/Stop;
.source "RemoteDMRProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->setUriAndPlay(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

.field final synthetic val$metaData:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Lorg/teleal/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;
    .param p2, "x0"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;->val$metaData:Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/teleal/cling/support/avtransport/callback/Stop;-><init>(Lorg/teleal/cling/model/meta/Service;)V

    return-void
.end method


# virtual methods
.method public failure(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/model/message/UpnpResponse;Ljava/lang/String;)V
    .locals 4
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;
    .param p2, "response"    # Lorg/teleal/cling/model/message/UpnpResponse;
    .param p3, "defaultMsg"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 656
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v0, v2, v3, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$400(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;JJ)V

    .line 658
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;->val$metaData:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$2300(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1902(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 661
    return-void
.end method

.method public success(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 4
    .param p1, "invocation"    # Lorg/teleal/cling/model/action/ActionInvocation;

    .prologue
    const-wide/16 v2, 0x0

    .line 646
    invoke-super {p0, p1}, Lorg/teleal/cling/support/avtransport/callback/Stop;->success(Lorg/teleal/cling/model/action/ActionInvocation;)V

    .line 647
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    invoke-static {v0, v2, v3, v2, v3}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$400(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;JJ)V

    .line 649
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;->val$metaData:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$2300(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl$8;->this$0:Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;->access$1902(Lcom/hisilicon/dlna/dmc/processor/impl/RemoteDMRProcessorImpl;Z)Z

    .line 652
    return-void
.end method
