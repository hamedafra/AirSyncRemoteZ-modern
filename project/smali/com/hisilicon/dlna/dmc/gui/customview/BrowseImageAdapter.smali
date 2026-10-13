.class public Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;
.super Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;
.source "BrowseImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;
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
.field private static BM_IMAGE:Landroid/graphics/Bitmap;

.field private static BM_IMAGE_CONTAINER:Landroid/graphics/Bitmap;


# instance fields
.field private context:Landroid/content/Context;

.field private mPoint:Landroid/graphics/Point;

.field private m_inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "theContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->mPoint:Landroid/graphics/Point;

    .line 49
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->context:Landroid/content/Context;

    .line 50
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 51
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    .line 53
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->mPoint:Landroid/graphics/Point;

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 55
    :cond_1
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE_CONTAINER:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE_CONTAINER:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020009

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE_CONTAINER:Landroid/graphics/Bitmap;

    .line 57
    :cond_3
    return-void
.end method

.method private initContainer(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "container"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;

    .prologue
    const/4 v5, -0x1

    .line 168
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 169
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE_CONTAINER:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE_CONTAINER:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE_CONTAINER:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon_box:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->loadFirstItemThumb(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;)V

    .line 183
    return-void
.end method

.method private initDIDLObject(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;

    .prologue
    .line 156
    instance-of v0, p2, Lorg/teleal/cling/support/model/container/Container;

    if-eqz v0, :cond_1

    .line 158
    check-cast p2, Lorg/teleal/cling/support/model/container/Container;

    .end local p2    # "object":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->initContainer(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    .restart local p2    # "object":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_1
    instance-of v0, p2, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->initImageItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method private initImageItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;

    .prologue
    const/16 v3, 0x8

    const/4 v4, -0x1

    .line 207
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->title_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->right_arrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 211
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 217
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon_box:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->loadImageThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;)V

    .line 221
    return-void
.end method

.method private loadFirstItemThumb(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;

    .prologue
    .line 186
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v3

    .line 188
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    .line 190
    .local v1, "device":Lorg/teleal/cling/model/meta/Device;
    instance-of v4, v1, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 193
    .local v0, "container":Lorg/teleal/cling/support/model/container/Container;
    if-nez v0, :cond_1

    .line 203
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_0
    :goto_0
    return-void

    .line 196
    .restart local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_1
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v3

    .line 199
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 200
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/item/Item;

    .line 201
    .local v2, "item":Lorg/teleal/cling/support/model/item/Item;
    invoke-direct {p0, p1, v2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->loadImageThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method private loadImage(ILcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;
    .param p3, "objectUrl"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 268
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v0, v1, p4}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 269
    .local v0, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnImage(ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 270
    return-void
.end method

.method private loadImageThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;

    .prologue
    .line 224
    invoke-static {p2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "objectUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->mediaFromLocal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->loadLocalImage(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v2

    .line 235
    :cond_0
    const-class v2, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p2, v2}, Lorg/teleal/cling/support/model/DIDLObject;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    .line 236
    .local v1, "uri":Ljava/net/URI;
    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_1
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p3, v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->loadImage(ILcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadLocalImage(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;
    .param p4, "objectUrl"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 243
    .local v2, "videoId":J
    iget-object v0, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 244
    new-instance v5, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v0, p3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 245
    .local v5, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v0

    move v1, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnLocalImageThumb(IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 246
    return-void
.end method

.method private loadPic(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "picUrl"    # Ljava/lang/String;
    .param p2, "mImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 249
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->getInstance()Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->mPoint:Landroid/graphics/Point;

    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->loadNativeImage(Ljava/lang/String;Landroid/graphics/Point;Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 259
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setViewHolder(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$1;)V

    .line 132
    .local v0, "viewHolder":Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;
    iput-object p1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->view:Landroid/view/View;

    .line 133
    const v1, 0x7f0b002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    .line 134
    const v1, 0x7f0b002d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 135
    const v1, 0x7f0b002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->icon_box:Landroid/widget/ImageView;

    .line 136
    const v1, 0x7f0b002f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->title_layout:Landroid/widget/LinearLayout;

    .line 137
    const v1, 0x7f0b0030

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 138
    const v1, 0x7f0b0031

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 139
    const v1, 0x7f0b0032

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->right_arrow:Landroid/widget/ImageView;

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 74
    if-eqz p2, :cond_0

    instance-of v5, p2, Landroid/widget/ProgressBar;

    if-eqz v5, :cond_1

    .line 76
    :cond_0
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03000b

    invoke-virtual {v5, v6, v11, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    :cond_1
    rem-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_4

    .line 80
    const v5, 0x7f020001

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 87
    invoke-direct {p0, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->setViewHolder(Landroid/view/View;)V

    .line 90
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;

    .line 92
    .local v2, "holder":Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 94
    .local v4, "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v3

    .line 96
    .local v3, "object":Ljava/lang/Object;
    instance-of v5, v3, Lorg/teleal/cling/support/model/DIDLObject;

    if-eqz v5, :cond_3

    move-object v0, v3

    .line 98
    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    .line 100
    .local v0, "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 102
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030014

    invoke-virtual {v5, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 126
    .end local v0    # "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    .end local p2    # "convertView":Landroid/view/View;
    :cond_3
    :goto_1
    return-object p2

    .line 82
    .end local v2    # "holder":Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4
    const v5, 0x7f020002

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 106
    .restart local v0    # "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    .restart local v2    # "holder":Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;
    .restart local v3    # "object":Ljava/lang/Object;
    .restart local v4    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    :cond_5
    instance-of v5, v0, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v5, :cond_6

    move-object v1, p3

    .line 107
    check-cast v1, Landroid/widget/GridView;

    .line 108
    .local v1, "gridview":Landroid/widget/GridView;
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 109
    invoke-virtual {v1, v10}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 110
    invoke-virtual {v1, v10}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 112
    iget-object v5, v2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 122
    :goto_2
    invoke-direct {p0, p1, v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->initDIDLObject(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;)V

    goto :goto_1

    .end local v1    # "gridview":Landroid/widget/GridView;
    :cond_6
    move-object v1, p3

    .line 114
    check-cast v1, Landroid/widget/GridView;

    .line 115
    .restart local v1    # "gridview":Landroid/widget/GridView;
    invoke-virtual {v1, v7, v8, v7, v8}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 116
    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 117
    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 119
    iget-object v5, v2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v5, v8, v9, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2
.end method

.method public notifyVisibleItemChanged(Landroid/widget/AbsListView;)V
    .locals 6
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 63
    .local v2, "start":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 64
    .local v0, "end":I
    :goto_1
    move v1, v2

    .local v1, "i":I
    :goto_2
    if-gt v1, v0, :cond_3

    .line 66
    sub-int v4, v1, v2

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 67
    .local v3, "view":Landroid/view/View;
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v1, v3, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 62
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "start":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    goto :goto_0

    .line 63
    .restart local v2    # "start":I
    :cond_2
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_1

    .line 70
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method
