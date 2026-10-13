.class public Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;
.super Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;
.source "PlayingImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;
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


# instance fields
.field private context:Landroid/content/Context;

.field private currentPosition:I

.field private m_inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "theContext"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->currentPosition:I

    .line 35
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->context:Landroid/content/Context;

    .line 36
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 37
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020009

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    .line 39
    :cond_1
    return-void
.end method

.method private initImageItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;

    .prologue
    const/4 v4, -0x1

    .line 116
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 117
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->currentPosition:I

    if-ne v2, p1, :cond_0

    .line 121
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v1, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .line 122
    .local v1, "layoutParams":Landroid/widget/Gallery$LayoutParams;
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->icon_box:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->loadImageThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;)V

    .line 135
    return-void

    .line 126
    .end local v0    # "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "layoutParams":Landroid/widget/Gallery$LayoutParams;
    :cond_0
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .line 127
    .restart local v1    # "layoutParams":Landroid/widget/Gallery$LayoutParams;
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private loadImage(ILcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;
    .param p3, "objectUrl"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 164
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 165
    .local v0, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnThumbImage(ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 166
    return-void
.end method

.method private loadImageThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;

    .prologue
    .line 138
    invoke-static {p2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "objectUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->mediaFromLocal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->loadLocalImage(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v2

    .line 149
    :cond_0
    const-class v2, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p2, v2}, Lorg/teleal/cling/support/model/DIDLObject;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    .line 150
    .local v1, "uri":Ljava/net/URI;
    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_1
    invoke-direct {p0, p1, p3, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->loadImage(ILcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadLocalImage(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;
    .param p4, "objectUrl"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 157
    .local v2, "videoId":J
    iget-object v0, p3, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 158
    new-instance v5, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v0, p3, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 159
    .local v5, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v0

    move v1, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnLocalImageThumb(IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 160
    return-void
.end method

.method private setViewHolder(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$1;)V

    .line 99
    .local v0, "viewHolder":Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;
    iput-object p1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->parent:Landroid/view/View;

    .line 100
    const v1, 0x7f0b002c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->icon_layout:Landroid/widget/FrameLayout;

    .line 101
    const v1, 0x7f0b002d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 102
    const v1, 0x7f0b002e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->icon_box:Landroid/widget/ImageView;

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
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

    .line 60
    if-eqz p2, :cond_0

    instance-of v4, p2, Landroid/widget/ProgressBar;

    if-eqz v4, :cond_1

    .line 62
    :cond_0
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030015

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 67
    invoke-direct {p0, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->setViewHolder(Landroid/view/View;)V

    .line 70
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;

    .line 72
    .local v1, "holder":Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 74
    .local v3, "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 76
    .local v2, "object":Ljava/lang/Object;
    instance-of v4, v2, Lorg/teleal/cling/support/model/DIDLObject;

    if-eqz v4, :cond_3

    move-object v0, v2

    .line 78
    check-cast v0, Lorg/teleal/cling/support/model/DIDLObject;

    .line 80
    .local v0, "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 82
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030014

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 93
    .end local v0    # "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    .end local p2    # "convertView":Landroid/view/View;
    :cond_3
    :goto_0
    return-object p2

    .line 86
    .restart local v0    # "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4
    instance-of v4, v0, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v4, :cond_3

    .line 88
    invoke-direct {p0, p1, v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->initImageItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method public notifyVisibleItemChanged(Landroid/widget/AbsListView;)V
    .locals 6
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 45
    .local v2, "start":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 46
    .local v0, "end":I
    :goto_1
    move v1, v2

    .local v1, "i":I
    :goto_2
    if-gt v1, v0, :cond_3

    .line 48
    sub-int v4, v1, v2

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 49
    .local v3, "view":Landroid/view/View;
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v1, v3, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 44
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "start":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->getCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    goto :goto_0

    .line 45
    .restart local v2    # "start":I
    :cond_2
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->getCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_1

    .line 52
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->currentPosition:I

    .line 56
    return-void
.end method
