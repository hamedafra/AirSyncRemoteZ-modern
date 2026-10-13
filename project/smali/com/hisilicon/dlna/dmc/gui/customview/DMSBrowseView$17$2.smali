.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->musicBrowseSuccess(Ljava/lang/String;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

.field final synthetic val$haveNext:Z

.field final synthetic val$objectID:Ljava/lang/String;

.field final synthetic val$result:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->val$objectID:Ljava/lang/String;

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->val$result:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->val$haveNext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1606
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1607
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v9}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->remove(Ljava/lang/Object;)V

    .line 1608
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->notifyDataSetChanged()V

    .line 1613
    :goto_0
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4800(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->val$objectID:Ljava/lang/String;

    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->val$result:Ljava/util/Map;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->val$result:Ljava/util/Map;

    const-string v8, "Containers"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1616
    .local v1, "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->val$result:Ljava/util/Map;

    const-string v8, "Items"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1618
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    const/4 v3, 0x0

    .line 1619
    .local v3, "isBrowseAllMusic":Z
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->val$objectID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->val$objectID:Ljava/lang/String;

    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v9}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1621
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    .line 1623
    .local v0, "container":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1624
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 1625
    .local v6, "title":Ljava/lang/String;
    invoke-static {v6}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isAllMusics(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1627
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/FrameLayout;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1628
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1629
    :cond_1
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$5100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1630
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$5100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1632
    :cond_2
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7, v2, v10}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/String;I)V

    .line 1634
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v7

    const-string v8, "ALL_MUSIC"

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    const/4 v3, 0x1

    .line 1642
    .end local v0    # "container":Lorg/teleal/cling/support/model/DIDLObject;
    .end local v2    # "id":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_6

    .line 1644
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    .line 1646
    .restart local v0    # "container":Lorg/teleal/cling/support/model/DIDLObject;
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    move-result-object v8

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 1610
    .end local v0    # "container":Lorg/teleal/cling/support/model/DIDLObject;
    .end local v1    # "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    .end local v3    # "isBrowseAllMusic":Z
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    :cond_4
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$5000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V

    goto/16 :goto_0

    .line 1649
    .restart local v1    # "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    .restart local v3    # "isBrowseAllMusic":Z
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/teleal/cling/support/model/DIDLObject;

    .line 1651
    .local v4, "item":Lorg/teleal/cling/support/model/DIDLObject;
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    move-result-object v8

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 1657
    .end local v4    # "item":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_6
    iget-boolean v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->val$haveNext:Z

    if-eqz v7, :cond_7

    .line 1658
    new-instance v4, Lorg/teleal/cling/support/model/item/Item;

    invoke-direct {v4}, Lorg/teleal/cling/support/model/item/Item;-><init>()V

    .line 1659
    .local v4, "item":Lorg/teleal/cling/support/model/item/Item;
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f080044

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/teleal/cling/support/model/item/Item;->setTitle(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 1660
    const-string v7, "-1"

    invoke-virtual {v4, v7}, Lorg/teleal/cling/support/model/item/Item;->setId(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 1661
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    move-result-object v7

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->add(Ljava/lang/Object;)V

    .line 1664
    .end local v4    # "item":Lorg/teleal/cling/support/model/item/Item;
    :cond_7
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v7, v7, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/widget/GridView;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    .line 1665
    return-void
.end method
