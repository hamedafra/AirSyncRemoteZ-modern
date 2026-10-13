.class public Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;
.super Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;
.source "LiveTVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter",
        "<",
        "Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;",
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
    .line 45
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->context:Landroid/content/Context;

    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 48
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    .line 50
    :cond_1
    return-void
.end method

.method private getDeviceIconUrl(Lorg/teleal/cling/model/meta/Device;)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    const/4 v3, 0x0

    .line 182
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v0

    .line 183
    .local v0, "icons":[Lorg/teleal/cling/model/meta/Icon;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initContainer(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "container"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;

    .prologue
    const/4 v4, -0x1

    .line 205
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 206
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 208
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 212
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon_box:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->title_layout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 216
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

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

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->loadFirstItemThumb(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V

    .line 220
    return-void
.end method

.method private initDIDLObject(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;

    .prologue
    .line 193
    instance-of v0, p2, Lorg/teleal/cling/support/model/container/Container;

    if-eqz v0, :cond_1

    .line 195
    check-cast p2, Lorg/teleal/cling/support/model/container/Container;

    .end local p2    # "object":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->initContainer(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    .restart local p2    # "object":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_1
    instance-of v0, p2, Lorg/teleal/cling/support/model/item/VideoItem;

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->initVideoItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method private initDeviceItem(Lorg/teleal/cling/model/meta/Device;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V
    .locals 2
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;

    .prologue
    const/16 v1, 0x8

    .line 138
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->right_arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    instance-of v0, p1, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getDMSToastName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->loadDeviceIcon(Lorg/teleal/cling/model/meta/Device;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method private initVideoItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;

    .prologue
    const/16 v2, 0x8

    .line 278
    iget-object v1, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->right_arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v1, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 280
    iget-object v1, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v1, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 284
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 285
    .local v0, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget-object v1, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v1, p3, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->loadVideoThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V

    .line 290
    return-void
.end method

.method private loadDeviceIcon(Lorg/teleal/cling/model/meta/Device;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V
    .locals 7
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getDeviceIconUrl(Lorg/teleal/cling/model/meta/Device;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "iconUrl":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 163
    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 165
    .local v3, "remoteDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 168
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 169
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "urlString":Ljava/lang/String;
    iget-object v5, p2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 172
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v5, p2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v0, v5}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 173
    .local v0, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnBitMap(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 174
    .local v1, "catchBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 176
    iget-object v5, p2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private loadFirstItemThumb(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;

    .prologue
    .line 223
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v3

    .line 225
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v1

    .line 227
    .local v1, "device":Lorg/teleal/cling/model/meta/Device;
    instance-of v4, v1, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getContainer(Ljava/lang/String;)Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 230
    .local v0, "container":Lorg/teleal/cling/support/model/container/Container;
    if-nez v0, :cond_1

    .line 240
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_0
    :goto_0
    return-void

    .line 233
    .restart local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_1
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v3

    .line 236
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 237
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/cling/support/model/item/Item;

    .line 238
    .local v2, "item":Lorg/teleal/cling/support/model/item/Item;
    invoke-direct {p0, p1, v2, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->loadVideoThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method private loadImage(ILcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;
    .param p3, "objectUrl"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 272
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 273
    .local v0, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnImage(ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 274
    return-void
.end method

.method private loadLocalVideo(Lorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;
    .param p3, "objectUrl"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 265
    .local v2, "videoId":J
    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 266
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 267
    .local v0, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p3, v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnLocalVideoThumb(JLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 268
    return-void
.end method

.method private loadVideoThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;

    .prologue
    .line 243
    invoke-static {p2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "objectUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->mediaFromLocal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    :try_start_0
    invoke-direct {p0, p2, p3, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->loadLocalVideo(Lorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v2

    .line 254
    :cond_1
    const-class v2, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p2, v2}, Lorg/teleal/cling/support/model/DIDLObject;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    .line 255
    .local v1, "uri":Ljava/net/URI;
    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-direct {p0, p1, p3, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->loadImage(ILcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setViewHolder(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$1;)V

    .line 113
    .local v0, "viewHolder":Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;
    iput-object p1, v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->view:Landroid/view/View;

    .line 114
    const v1, 0x7f0b002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    .line 115
    const v1, 0x7f0b002d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 116
    const v1, 0x7f0b002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->icon_box:Landroid/widget/ImageView;

    .line 117
    const v1, 0x7f0b002f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->title_layout:Landroid/widget/LinearLayout;

    .line 118
    const v1, 0x7f0b0030

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 119
    const v1, 0x7f0b0031

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 120
    const v1, 0x7f0b0032

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;->right_arrow:Landroid/widget/ImageView;

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
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

    .line 67
    if-eqz p2, :cond_0

    instance-of v4, p2, Landroid/widget/ProgressBar;

    if-eqz v4, :cond_1

    .line 69
    :cond_0
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030013

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 72
    :cond_1
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_4

    .line 73
    const v4, 0x7f020002

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 80
    invoke-direct {p0, p2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->setViewHolder(Landroid/view/View;)V

    .line 83
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;

    .line 85
    .local v2, "holder":Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    .line 87
    .local v0, "adapterItem":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v3

    .line 88
    .local v3, "object":Ljava/lang/Object;
    instance-of v4, v3, Lorg/teleal/cling/model/meta/Device;

    if-eqz v4, :cond_5

    .line 90
    check-cast v3, Lorg/teleal/cling/model/meta/Device;

    .end local v3    # "object":Ljava/lang/Object;
    invoke-direct {p0, v3, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->initDeviceItem(Lorg/teleal/cling/model/meta/Device;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V

    .line 107
    .end local p2    # "convertView":Landroid/view/View;
    :cond_3
    :goto_1
    return-object p2

    .line 75
    .end local v0    # "adapterItem":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .end local v2    # "holder":Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4
    const v4, 0x7f020001

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 92
    .restart local v0    # "adapterItem":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .restart local v2    # "holder":Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v4, v3, Lorg/teleal/cling/support/model/DIDLObject;

    if-eqz v4, :cond_3

    move-object v1, v3

    .line 95
    check-cast v1, Lorg/teleal/cling/support/model/DIDLObject;

    .line 97
    .local v1, "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030014

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 103
    :cond_6
    invoke-direct {p0, p1, v1, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->initDIDLObject(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter$ViewHolder;)V

    goto :goto_1
.end method

.method public notifyVisibleItemChanged(Landroid/widget/AbsListView;)V
    .locals 6
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 55
    .local v2, "start":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getCount()I

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

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getCount()I

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
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    goto :goto_0

    .line 55
    .restart local v2    # "start":I
    :cond_2
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/LiveTVAdapter;->getCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_1

    .line 63
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method
