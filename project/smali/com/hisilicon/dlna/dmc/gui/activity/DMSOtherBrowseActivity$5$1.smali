.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;
.super Ljava/lang/Object;
.source "DMSOtherBrowseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->browseSuccess(Ljava/lang/String;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

.field final synthetic val$haveNext:Z

.field final synthetic val$result:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;Ljava/util/Map;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->val$result:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->val$haveNext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 355
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v3, v3, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1000(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 356
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v3, v3, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v5, v5, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->remove(Ljava/lang/Object;)V

    .line 357
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v3, v3, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->notifyDataSetChanged()V

    .line 362
    :goto_0
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->val$result:Ljava/util/Map;

    const-string v4, "Containers"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    .line 363
    .local v0, "container":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v4

    instance-of v4, v4, Lcom/hisilicon/dlna/dmc/processor/impl/LocalDMSProcessorImpl;

    if-nez v4, :cond_0

    .line 370
    :cond_1
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isAllImages(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isAllVideos(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->isAllMusics(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 371
    :cond_3
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMSProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMSProcessor;

    move-result-object v4

    instance-of v4, v4, Lcom/hisilicon/dlna/dmc/processor/impl/DMSProcessorImpl;

    if-nez v4, :cond_0

    .line 375
    :cond_4
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    move-result-object v4

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 359
    .end local v0    # "container":Lorg/teleal/cling/support/model/DIDLObject;
    .end local v2    # "title":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v3, v3, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1200(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V

    goto/16 :goto_0

    .line 378
    :cond_6
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->val$result:Ljava/util/Map;

    const-string v4, "Items"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/model/DIDLObject;

    .line 379
    .local v1, "item":Lorg/teleal/cling/support/model/DIDLObject;
    instance-of v4, v1, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v4, :cond_7

    .line 380
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$400(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Landroid/widget/GridView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 382
    :cond_7
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    move-result-object v4

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 385
    .end local v1    # "item":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_8
    iget-boolean v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->val$haveNext:Z

    if-eqz v3, :cond_9

    .line 386
    new-instance v1, Lorg/teleal/cling/support/model/item/Item;

    invoke-direct {v1}, Lorg/teleal/cling/support/model/item/Item;-><init>()V

    .line 387
    .local v1, "item":Lorg/teleal/cling/support/model/item/Item;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v3, v3, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    const v4, 0x7f080044

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/teleal/cling/support/model/item/Item;->setTitle(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 388
    const-string v3, "-1"

    invoke-virtual {v1, v3}, Lorg/teleal/cling/support/model/item/Item;->setId(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 389
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v3, v3, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    move-result-object v3

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->add(Ljava/lang/Object;)V

    .line 392
    .end local v1    # "item":Lorg/teleal/cling/support/model/item/Item;
    :cond_9
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v3, v3, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$900(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V

    .line 394
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v3, v3, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;

    iget-object v4, v4, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$400(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    .line 395
    return-void
.end method
