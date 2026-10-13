.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->videoBrowseSuccess(Ljava/lang/String;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

.field final synthetic val$haveNext:Z

.field final synthetic val$objectID:Ljava/lang/String;

.field final synthetic val$result:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->val$objectID:Ljava/lang/String;

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->val$result:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->val$haveNext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1491
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1492
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v11, v11, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v11}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    move-result-object v11

    iget-object v12, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v12, v12, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v12}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->remove(Ljava/lang/Object;)V

    .line 1493
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->notifyDataSetChanged()V

    .line 1498
    :goto_0
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4800(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->val$objectID:Ljava/lang/String;

    iget-object v12, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->val$result:Ljava/util/Map;

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->val$result:Ljava/util/Map;

    const-string v11, "Containers"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1501
    .local v3, "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->val$result:Ljava/util/Map;

    const-string v11, "Items"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1503
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    const/4 v6, 0x0

    .line 1504
    .local v6, "isBrowseAllVideo":Z
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->val$objectID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->val$objectID:Ljava/lang/String;

    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v11, v11, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v11}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v12, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v12, v12, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v12}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/ArrayList;

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

    .line 1506
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "video_folder_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f08001d

    invoke-static {v11}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1507
    .local v1, "cameraID":Ljava/lang/String;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v10

    invoke-interface {v10}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v4

    .line 1508
    .local v4, "device":Lorg/teleal/cling/model/meta/Device;
    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 1510
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

    .line 1512
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/FrameLayout;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1513
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1515
    :cond_0
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10, v1, v13}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/String;I)V

    .line 1517
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "ALL_VIDEO"

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    const/4 v6, 0x1

    .line 1543
    .end local v0    # "cameraContainer":Lorg/teleal/cling/support/model/container/Container;
    .end local v1    # "cameraID":Ljava/lang/String;
    .end local v4    # "device":Lorg/teleal/cling/model/meta/Device;
    :cond_1
    :goto_1
    if-nez v6, :cond_7

    .line 1545
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/DIDLObject;

    .line 1547
    .local v2, "container":Lorg/teleal/cling/support/model/DIDLObject;
    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v11, v11, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v11}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    move-result-object v11

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 1495
    .end local v2    # "container":Lorg/teleal/cling/support/model/DIDLObject;
    .end local v3    # "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    .end local v6    # "isBrowseAllVideo":Z
    .end local v8    # "items":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    :cond_2
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    goto/16 :goto_0

    .line 1523
    .restart local v0    # "cameraContainer":Lorg/teleal/cling/support/model/container/Container;
    .restart local v1    # "cameraID":Ljava/lang/String;
    .restart local v3    # "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    .restart local v4    # "device":Lorg/teleal/cling/model/meta/Device;
    .restart local v6    # "isBrowseAllVideo":Z
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

    .line 1525
    .restart local v2    # "container":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-virtual {v2}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1526
    .local v5, "id":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 1527
    .local v9, "title":Ljava/lang/String;
    invoke-static {v9}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isAllVideos(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1529
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/FrameLayout;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1530
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/FrameLayout;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1532
    :cond_5
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10, v5, v13}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/String;I)V

    .line 1534
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v10

    const-string v11, "ALL_VIDEO"

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    const/4 v6, 0x1

    .line 1537
    goto :goto_1

    .line 1550
    .end local v0    # "cameraContainer":Lorg/teleal/cling/support/model/container/Container;
    .end local v1    # "cameraID":Ljava/lang/String;
    .end local v2    # "container":Lorg/teleal/cling/support/model/DIDLObject;
    .end local v4    # "device":Lorg/teleal/cling/model/meta/Device;
    .end local v5    # "id":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/teleal/cling/support/model/DIDLObject;

    .line 1552
    .local v7, "item":Lorg/teleal/cling/support/model/DIDLObject;
    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v11, v11, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v11}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    move-result-object v11

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 1558
    .end local v7    # "item":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_7
    iget-boolean v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->val$haveNext:Z

    if-eqz v10, :cond_8

    .line 1559
    new-instance v7, Lorg/teleal/cling/support/model/item/Item;

    invoke-direct {v7}, Lorg/teleal/cling/support/model/item/Item;-><init>()V

    .line 1560
    .local v7, "item":Lorg/teleal/cling/support/model/item/Item;
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f080044

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/teleal/cling/support/model/item/Item;->setTitle(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 1561
    const-string v10, "-1"

    invoke-virtual {v7, v10}, Lorg/teleal/cling/support/model/item/Item;->setId(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 1562
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    move-result-object v10

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->add(Ljava/lang/Object;)V

    .line 1565
    .end local v7    # "item":Lorg/teleal/cling/support/model/item/Item;
    :cond_8
    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;

    iget-object v11, v11, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$16;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v11}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/GridView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    .line 1566
    return-void
.end method
