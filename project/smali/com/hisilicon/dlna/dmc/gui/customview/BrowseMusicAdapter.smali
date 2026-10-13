.class public Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;
.super Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;
.source "BrowseMusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter",
        "<",
        "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;",
        ">;"
    }
.end annotation


# static fields
.field private static BM_MUSIC:Landroid/graphics/Bitmap;


# instance fields
.field private context:Landroid/content/Context;

.field private m_inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "theContext"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->context:Landroid/content/Context;

    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 48
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->BM_MUSIC:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->BM_MUSIC:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->BM_MUSIC:Landroid/graphics/Bitmap;

    .line 50
    :cond_1
    return-void
.end method

.method private initContainer(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "container"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;

    .prologue
    const/16 v5, 0x8

    const/4 v6, -0x1

    .line 162
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 163
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "title":Ljava/lang/String;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 170
    .local v0, "currentDMS":Lorg/teleal/cling/model/meta/Device;
    instance-of v4, v0, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v4, :cond_0

    const v4, 0x7f080057

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 172
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->BM_MUSIC:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->BM_MUSIC:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->BM_MUSIC:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v1, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon_box:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    .end local v1    # "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->music_num:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f08004c

    invoke-static {v6}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->loadFirstItemThumb(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;)V

    .line 190
    return-void

    .line 181
    :cond_0
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->BM_MUSIC:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v6, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 182
    .local v2, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private initDIDLObject(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;

    .prologue
    .line 132
    instance-of v2, p2, Lorg/teleal/cling/support/model/container/Container;

    if-eqz v2, :cond_1

    .line 134
    check-cast p2, Lorg/teleal/cling/support/model/container/Container;

    .end local p2    # "object":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->initContainer(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local p2    # "object":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_1
    instance-of v2, p2, Lorg/teleal/cling/support/model/item/AudioItem;

    if-eqz v2, :cond_0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->initMusicItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;)V

    .line 140
    invoke-static {p2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "objectUrl":Ljava/lang/String;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 144
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->getCurrentTrackURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->right_arrow:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->right_arrow:Landroid/widget/ImageView;

    const v3, 0x7f02007e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->right_arrow:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method private initMusicItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;

    .prologue
    const/4 v4, -0x1

    .line 229
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 230
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->BM_MUSIC:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->BM_MUSIC:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->BM_MUSIC:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 236
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon_box:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getCreator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->loadMusicAlbumArt(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;)V

    .line 243
    return-void
.end method

.method private loadFirstItemThumb(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;

    .prologue
    .line 193
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v3

    .line 195
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    .line 197
    .local v1, "device":Lorg/teleal/cling/model/meta/Device;
    instance-of v4, v1, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 200
    .local v0, "container":Lorg/teleal/cling/support/model/container/Container;
    if-nez v0, :cond_1

    .line 210
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_1
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v3

    .line 206
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 207
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/item/Item;

    .line 208
    .local v2, "item":Lorg/teleal/cling/support/model/item/Item;
    invoke-direct {p0, p1, v2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->loadMusicAlbumArt(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method private loadImage(ILcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;
    .param p3, "objectUrl"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 223
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 224
    .local v0, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnImage(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 225
    return-void
.end method

.method private loadMusicAlbumArt(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;

    .prologue
    .line 213
    const-class v2, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p2, v2}, Lorg/teleal/cling/support/model/DIDLObject;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    .line 214
    .local v1, "uri":Ljava/net/URI;
    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "objectUrl":Ljava/lang/String;
    invoke-direct {p0, p1, p3, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->loadImage(ILcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;Ljava/lang/String;)V

    .line 219
    .end local v0    # "objectUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setViewHolder(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$1;)V

    .line 108
    .local v0, "viewHolder":Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;
    iput-object p1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->view:Landroid/view/View;

    .line 109
    const v1, 0x7f0b002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    .line 110
    const v1, 0x7f0b002d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 111
    const v1, 0x7f0b002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->icon_box:Landroid/widget/ImageView;

    .line 112
    const v1, 0x7f0b0030

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0b0031

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0b0033

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->music_num:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f0b0032

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->right_arrow:Landroid/widget/ImageView;

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 66
    if-eqz p2, :cond_0

    instance-of v4, p2, Landroid/widget/ProgressBar;

    if-eqz v4, :cond_1

    .line 68
    :cond_0
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03000c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 71
    :cond_1
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_4

    .line 72
    const v4, 0x7f020001

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 79
    invoke-direct {p0, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->setViewHolder(Landroid/view/View;)V

    .line 82
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;

    .line 84
    .local v1, "holder":Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 86
    .local v3, "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 88
    .local v2, "object":Ljava/lang/Object;
    instance-of v4, v2, Lorg/teleal/cling/support/model/DIDLObject;

    if-eqz v4, :cond_3

    move-object v0, v2

    .line 90
    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    .line 92
    .local v0, "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 94
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030014

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 102
    .end local v0    # "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    .end local p2    # "convertView":Landroid/view/View;
    :cond_3
    :goto_1
    return-object p2

    .line 74
    .end local v1    # "holder":Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4
    const v4, 0x7f020002

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 98
    .restart local v0    # "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    .restart local v1    # "holder":Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local v3    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    :cond_5
    invoke-direct {p0, p1, v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->initDIDLObject(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;)V

    goto :goto_1
.end method

.method public notifyVisibleItemChanged(Landroid/widget/AbsListView;)V
    .locals 6
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 56
    .local v2, "start":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 57
    .local v0, "end":I
    :goto_1
    move v1, v2

    .local v1, "i":I
    :goto_2
    if-gt v1, v0, :cond_3

    .line 59
    sub-int v4, v1, v2

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, "view":Landroid/view/View;
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v1, v3, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 55
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "start":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->getCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    goto :goto_0

    .line 56
    .restart local v2    # "start":I
    :cond_2
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->getCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_1

    .line 63
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method
