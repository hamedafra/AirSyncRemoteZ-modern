.class Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;
.super Ljava/lang/Object;
.source "LiveTVActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->liveTVBrowseSuccess(Ljava/lang/String;ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

.field final synthetic val$haveNext:Z

.field final synthetic val$result:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;Ljava/util/Map;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->val$result:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->val$haveNext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 503
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$2100(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 504
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v9}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v10, v10, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v10}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->remove(Ljava/lang/Object;)V

    .line 505
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->notifyDataSetChanged()V

    .line 510
    :goto_0
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->val$result:Ljava/util/Map;

    const-string v9, "Containers"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 511
    .local v1, "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->val$result:Ljava/util/Map;

    const-string v9, "Items"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 513
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    .line 515
    .local v0, "container":Lorg/teleal/cling/support/model/DIDLObject;
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v9}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v9

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 507
    .end local v0    # "container":Lorg/teleal/cling/support/model/DIDLObject;
    .end local v1    # "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    :cond_0
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$2200(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    goto :goto_0

    .line 518
    .restart local v1    # "containers":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    .restart local v3    # "items":Ljava/util/List;, "Ljava/util/List<+Lorg/teleal/cling/support/model/DIDLObject;>;"
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v6, "playlistItems":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/DIDLObject;

    .line 521
    .local v2, "item":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v5

    .line 522
    .local v5, "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v9}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 526
    .end local v2    # "item":Lorg/teleal/cling/support/model/DIDLObject;
    .end local v5    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    :cond_2
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$2100(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 527
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v8, v6}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$2300(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Ljava/util/List;)V

    .line 528
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v8

    invoke-interface {v8}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v7

    .line 529
    .local v7, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    sget-object v8, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->VIDEO_ONLY:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;

    invoke-interface {v7, v8}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getItemsByViewMode(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;)Ljava/util/List;

    move-result-object v4

    .line 530
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 531
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 532
    .restart local v5    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-virtual {v5}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$2400(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;Ljava/lang/String;)V

    .line 536
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    .end local v5    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .end local v7    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    :cond_3
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$400(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)V

    .line 538
    iget-boolean v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->val$haveNext:Z

    if-eqz v8, :cond_4

    .line 539
    new-instance v2, Lorg/teleal/cling/support/model/item/Item;

    invoke-direct {v2}, Lorg/teleal/cling/support/model/item/Item;-><init>()V

    .line 540
    .local v2, "item":Lorg/teleal/cling/support/model/item/Item;
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$1900(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f080044

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/teleal/cling/support/model/item/Item;->setTitle(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 541
    const-string v8, "-1"

    invoke-virtual {v2, v8}, Lorg/teleal/cling/support/model/item/Item;->setId(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    .line 542
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v8

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->add(Ljava/lang/Object;)V

    .line 545
    .end local v2    # "item":Lorg/teleal/cling/support/model/item/Item;
    :cond_4
    iget-object v8, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v8, v8, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v8}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11$2;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;

    iget-object v9, v9, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;

    invoke-static {v9}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVActivity;)Landroid/widget/GridView;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->notifyVisibleItemChanged(Landroid/widget/AbsListView;)V

    .line 546
    return-void
.end method
