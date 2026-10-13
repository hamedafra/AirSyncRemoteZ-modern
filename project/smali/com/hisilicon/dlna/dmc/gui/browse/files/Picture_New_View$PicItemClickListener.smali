.class Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;
.super Ljava/lang/Object;
.source "Picture_New_View.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)V

    return-void
.end method

.method private addToPlaylistAndPlay(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "added":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    instance-of v2, p1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 139
    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 142
    :cond_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v1

    .line 143
    .local v1, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v1, :cond_1

    .line 144
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;

    .end local v1    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-direct {v1}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;-><init>()V

    .line 145
    .restart local v1    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V

    .line 148
    :cond_1
    if-nez v0, :cond_2

    instance-of v2, p1, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v2, :cond_2

    .line 149
    check-cast p1, Lorg/teleal/cling/support/model/DIDLObject;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->addDIDLObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    .line 152
    :cond_2
    if-eqz v0, :cond_3

    .line 153
    invoke-interface {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setCurrentItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)I

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_3
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$800(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080019

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setAllItem(Ljava/util/List;)V
    .locals 2
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 124
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v0

    .line 125
    .local v0, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;

    .end local v0    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-direct {v0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;-><init>()V

    .line 127
    .restart local v0    # "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V

    .line 129
    :cond_0
    invoke-interface {v0, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setItems(Ljava/util/List;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v2, 0x7f020003

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$600(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;->setAllItem(Ljava/util/List;)V

    .line 114
    invoke-direct {p0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;->addToPlaylistAndPlay(Ljava/lang/Object;)V

    .line 116
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$800(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "LONGCLICK"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$800(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "object":Ljava/lang/Object;
    :cond_0
    return-void
.end method
