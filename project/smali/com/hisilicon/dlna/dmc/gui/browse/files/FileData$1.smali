.class Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$1;
.super Landroid/os/Handler;
.source "FileData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "---------SCAN_OK---------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The pictures size is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->setList(Ljava/util/List;)V

    .line 81
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->notifyDataSetChanged()V

    .line 82
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$200(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$LoadComplete;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$LoadComplete;->success()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
