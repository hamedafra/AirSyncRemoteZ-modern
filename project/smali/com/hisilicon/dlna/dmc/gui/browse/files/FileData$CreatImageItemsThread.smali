.class Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$CreatImageItemsThread;
.super Ljava/lang/Thread;
.source "FileData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreatImageItemsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$CreatImageItemsThread;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 158
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$CreatImageItemsThread;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$400(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/item/ImageItem;

    .line 161
    .local v0, "item":Lorg/teleal/cling/support/model/item/ImageItem;
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .end local v1    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-direct {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;-><init>(Ljava/lang/Object;)V

    .line 163
    .restart local v1    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/item/ImageItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setId(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/item/ImageItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setTitle(Ljava/lang/String;)V

    .line 166
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setUrl(Ljava/lang/String;)V

    .line 168
    sget-object v4, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v1, v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    .line 176
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$CreatImageItemsThread;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->add(Ljava/lang/Object;)V

    .line 177
    const/4 v1, 0x0

    .line 178
    goto :goto_0

    .line 179
    .end local v0    # "item":Lorg/teleal/cling/support/model/item/ImageItem;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method
