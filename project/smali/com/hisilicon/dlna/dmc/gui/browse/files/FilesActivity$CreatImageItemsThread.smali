.class Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$CreatImageItemsThread;
.super Ljava/lang/Thread;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreatImageItemsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$CreatImageItemsThread;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$CreatImageItemsThread;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 312
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 313
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$CreatImageItemsThread;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1400(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/item/ImageItem;

    .line 314
    .local v0, "item":Lorg/teleal/cling/support/model/item/ImageItem;
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$CreatImageItemsThread;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v2

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$CreatImageItemsThread;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v3, v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1500(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 316
    .end local v0    # "item":Lorg/teleal/cling/support/model/item/ImageItem;
    :cond_0
    return-void
.end method
