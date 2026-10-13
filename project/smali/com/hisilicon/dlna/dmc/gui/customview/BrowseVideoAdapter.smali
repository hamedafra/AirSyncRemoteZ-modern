.class public Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;
.super Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;
.source "BrowseVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;
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
.field private static BM_VIDEO:Landroid/graphics/Bitmap;


# instance fields
.field private context:Landroid/content/Context;

.field private m_inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "theContext"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->context:Landroid/content/Context;

    .line 46
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 47
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    .line 49
    :cond_1
    return-void
.end method

.method private initContainer(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "container"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;

    .prologue
    const/4 v4, -0x1

    .line 144
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 145
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 148
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon_box:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->title_layout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 155
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->loadFirstItemThumb(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;)V

    .line 159
    return-void
.end method

.method private initDIDLObject(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;

    .prologue
    .line 132
    instance-of v0, p2, Lorg/teleal/cling/support/model/container/Container;

    if-eqz v0, :cond_1

    .line 134
    check-cast p2, Lorg/teleal/cling/support/model/container/Container;

    .end local p2    # "object":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->initContainer(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local p2    # "object":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_1
    instance-of v0, p2, Lorg/teleal/cling/support/model/item/VideoItem;

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->initVideoItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method private initVideoItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;

    .prologue
    const/4 v6, -0x1

    .line 217
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->right_arrow:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 220
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon_box:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getFirstResource()Lorg/teleal/cling/support/model/Res;

    move-result-object v2

    .line 232
    .local v2, "res":Lorg/teleal/cling/support/model/Res;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/teleal/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "time":Ljava/lang/String;
    :goto_0
    iget-object v4, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->timeStringToMinute(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f080047

    invoke-static {v6}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->loadVideoThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;)V

    .line 236
    return-void

    .line 232
    .end local v3    # "time":Ljava/lang/String;
    :cond_0
    const-string v3, "0"

    goto :goto_0
.end method

.method private loadFirstItemThumb(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;

    .prologue
    .line 162
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v3

    .line 164
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    .line 166
    .local v1, "device":Lorg/teleal/cling/model/meta/Device;
    instance-of v4, v1, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 167
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 169
    .local v0, "container":Lorg/teleal/cling/support/model/container/Container;
    if-nez v0, :cond_1

    .line 179
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_0
    :goto_0
    return-void

    .line 172
    .restart local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_1
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v3

    .line 175
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/item/Item;

    .line 177
    .local v2, "item":Lorg/teleal/cling/support/model/item/Item;
    invoke-direct {p0, p1, v2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->loadVideoThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method private loadImage(ILcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;
    .param p3, "objectUrl"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 211
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 212
    .local v0, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnImage(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 213
    return-void
.end method

.method private loadLocalVideo(Lorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;
    .param p3, "objectUrl"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 204
    .local v2, "videoId":J
    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 205
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 206
    .local v0, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p3, v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnLocalVideoThumb(JLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 207
    return-void
.end method

.method private loadVideoThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;

    .prologue
    .line 182
    invoke-static {p2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "objectUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->mediaFromLocal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    :try_start_0
    invoke-direct {p0, p2, p3, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->loadLocalVideo(Lorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v2

    .line 193
    :cond_1
    const-class v2, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p2, v2}, Lorg/teleal/cling/support/model/DIDLObject;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    .line 194
    .local v1, "uri":Ljava/net/URI;
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-direct {p0, p1, p3, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->loadImage(ILcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setViewHolder(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$1;)V

    .line 108
    .local v0, "viewHolder":Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;
    iput-object p1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->view:Landroid/view/View;

    .line 109
    const v1, 0x7f0b002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    .line 110
    const v1, 0x7f0b002d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 111
    const v1, 0x7f0b002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->icon_box:Landroid/widget/ImageView;

    .line 112
    const v1, 0x7f0b002f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->title_layout:Landroid/widget/LinearLayout;

    .line 113
    const v1, 0x7f0b0030

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0b0031

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f0b0032

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->right_arrow:Landroid/widget/ImageView;

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
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03000d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 71
    :cond_1
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_4

    .line 72
    const v4, 0x7f020002

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 79
    invoke-direct {p0, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->setViewHolder(Landroid/view/View;)V

    .line 82
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;

    .line 84
    .local v1, "holder":Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->getItem(I)Ljava/lang/Object;

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
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->m_inflater:Landroid/view/LayoutInflater;

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
    .end local v1    # "holder":Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v3    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4
    const v4, 0x7f020001

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 98
    .restart local v0    # "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    .restart local v1    # "holder":Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local v3    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    :cond_5
    invoke-direct {p0, p1, v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->initDIDLObject(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;)V

    goto :goto_1
.end method

.method public notifyVisibleItemChanged(Landroid/widget/AbsListView;)V
    .locals 6
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 55
    .local v2, "start":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 56
    .local v0, "end":I
    :goto_1
    move v1, v2

    .local v1, "i":I
    :goto_2
    if-gt v1, v0, :cond_3

    .line 58
    sub-int v4, v1, v2

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 59
    .local v3, "view":Landroid/view/View;
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v1, v3, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 54
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "start":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->getCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    goto :goto_0

    .line 55
    .restart local v2    # "start":I
    :cond_2
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->getCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_1

    .line 62
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method
