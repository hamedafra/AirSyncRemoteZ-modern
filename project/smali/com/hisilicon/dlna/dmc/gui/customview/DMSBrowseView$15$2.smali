.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->imageBrowseSuccess(Ljava/lang/String;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

.field final synthetic val$haveNext:Z

.field final synthetic val$objectID:Ljava/lang/String;

.field final synthetic val$result:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->val$objectID:Ljava/lang/String;

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->val$result:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->val$haveNext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1357
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1358
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v11, v11, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v11}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    move-result-object v11

    iget-object v12, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v12, v12, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v12}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->remove(Ljava/lang/Object;)V

    .line 1359
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->notifyDataSetChanged()V

    .line 1364
    :goto_0
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4800(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->val$objectID:Ljava/lang/String;

    iget-object v12, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->val$result:Ljava/util/Map;

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->val$result:Ljava/util/Map;

    const-string v11, "Containers"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1367
    .local v3, "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->val$result:Ljava/util/Map;

    const-string v11, "Items"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1369
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    const/4 v6, 0x0

    .line 1373
    .local v6, "isBrowseAllImage":Z
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->val$objectID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->val$objectID:Ljava/lang/String;

    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v11, v11, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v11}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v12, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v12, v12, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v12}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1375
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v10

    invoke-interface {v10}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v4

    .line 1376
    .local v4, "device":Lorg/teleal/cling/model/meta/Device;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "image_folder_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f08001d

    invoke-static {v11}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1377
    .local v1, "cameraID":Ljava/lang/String;
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 1379
    .local v0, "cameraContainer":Lorg/teleal/cling/support/model/container/Container;
    instance-of v10, v4, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v10, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1381
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/FrameLayout;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1382
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1384
    :cond_0
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10, v1, v13}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/String;I)V

    .line 1386
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "ALL_IMAGE"

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    const/4 v6, 0x1

    .line 1413
    .end local v0    # "cameraContainer":Lorg/teleal/cling/support/model/container/Container;
    .end local v1    # "cameraID":Ljava/lang/String;
    .end local v4    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_1
    :goto_1
    if-nez v6, :cond_8

    .line 1416
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/DIDLObject;

    .line 1422
    .local v2, "container":Lorg/teleal/cling/support/model/DIDLObject;
    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v11, v11, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v11}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    move-result-object v11

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 1361
    .end local v2    # "container":Lorg/teleal/cling/support/model/DIDLObject;
    .end local v3    # "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    .end local v6    # "isBrowseAllImage":Z
    .end local v8    # "items":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    :cond_2
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    goto/16 :goto_0

    .line 1392
    .restart local v0    # "cameraContainer":Lorg/teleal/cling/support/model/container/Container;
    .restart local v1    # "cameraID":Ljava/lang/String;
    .restart local v3    # "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    .restart local v4    # "device":Lorg/teleal/cling/model/meta/Device;
    .restart local v6    # "isBrowseAllImage":Z
    .restart local v8    # "items":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/DIDLObject;

    .line 1394
    .restart local v2    # "container":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-virtual {v2}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1395
    .local v5, "id":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 1397
    .local v9, "title":Ljava/lang/String;
    invoke-static {v9}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isAllImages(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1399
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/FrameLayout;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1400
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1402
    :cond_5
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10, v5, v13}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/String;I)V

    .line 1404
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "ALL_IMAGE"

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    const/4 v6, 0x1

    .line 1407
    goto :goto_1

    .line 1425
    .end local v0    # "cameraContainer":Lorg/teleal/cling/support/model/container/Container;
    .end local v1    # "cameraID":Ljava/lang/String;
    .end local v2    # "container":Lorg/teleal/cling/support/model/DIDLObject;
    .end local v4    # "device":Lorg/teleal/cling/model/meta/Device;
    .end local v5    # "id":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1427
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/GridView;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1431
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/support/model/DIDLObject;

    .line 1433
    .local v7, "item":Lorg/teleal/cling/support/model/DIDLObject;
    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v11, v11, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v11}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    move-result-object v11

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 1439
    .end local v7    # "item":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_7
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressDismiss()V

    .line 1442
    :cond_8
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The haveNext:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->val$haveNext:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1443
    iget-boolean v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->val$haveNext:Z

    if-eqz v10, :cond_9

    .line 1444
    new-instance v7, Lorg/teleal/cling/support/model/item/Item;

    invoke-direct {v7}, Lorg/teleal/cling/support/model/item/Item;-><init>()V

    .line 1445
    .local v7, "item":Lorg/teleal/cling/support/model/item/Item;
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f080044

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/teleal/cling/support/model/item/Item;->setTitle(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 1446
    const-string v10, "-1"

    invoke-virtual {v7, v10}, Lorg/teleal/cling/support/model/item/Item;->setId(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 1447
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    move-result-object v10

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->add(Ljava/lang/Object;)V

    .line 1449
    .end local v7    # "item":Lorg/teleal/cling/support/model/item/Item;
    :cond_9
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The pictures size is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v12, v12, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v12}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getItemList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1450
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v11, v11, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v11}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/GridView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    .line 1451
    return-void
.end method
