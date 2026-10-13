.class public Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;
.super Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;
.source "CustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;
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
.field private static BM_AUDIO:Landroid/graphics/Bitmap;

.field private static BM_IMAGE:Landroid/graphics/Bitmap;

.field private static BM_IMAGE_LARGE:Landroid/graphics/Bitmap;

.field private static BM_VIDEO:Landroid/graphics/Bitmap;


# instance fields
.field private isOtherBrowse:Z

.field private m_inflater:Landroid/view/LayoutInflater;

.field private type:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->isOtherBrowse:Z

    .line 57
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->type:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 59
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020009

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    .line 61
    :cond_1
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE_LARGE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE_LARGE:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE_LARGE:Landroid/graphics/Bitmap;

    .line 63
    :cond_3
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    .line 65
    :cond_5
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_AUDIO:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_AUDIO:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_AUDIO:Landroid/graphics/Bitmap;

    .line 68
    :cond_7
    return-void
.end method

.method private getDeviceIconUrl(Lorg/teleal/cling/model/meta/Device;)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getIcons()[Lorg/teleal/cling/model/meta/Icon;

    move-result-object v0

    .line 184
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

    .line 186
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

    .line 187
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initContainer(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "container"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 262
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 263
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->subname:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->subname:Landroid/widget/TextView;

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

    .line 265
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->subname:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 267
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->title_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 269
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-boolean v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->isOtherBrowse:Z

    if-eqz v3, :cond_2

    .line 273
    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->MUSIC:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->type:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->subname:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->music_num:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->music_num:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getChildCount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f08004c

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v0

    .line 279
    .local v0, "currentDMS":Lorg/teleal/cling/model/meta/Device;
    instance-of v3, v0, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v3, :cond_0

    .line 280
    const v3, 0x7f080057

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    .end local v0    # "currentDMS":Lorg/teleal/cling/model/meta/Device;
    :cond_0
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->playing:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->playing:Landroid/widget/ImageView;

    const v4, 0x7f02008f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    :goto_0
    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->VIDEO:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->type:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 293
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sget-object v6, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->loadFirstItemThumb(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    .line 310
    return-void

    .line 287
    :cond_2
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->music_num:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->playing:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 294
    :cond_3
    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->MUSIC:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->type:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 295
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_AUDIO:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 296
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_AUDIO:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sget-object v6, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_AUDIO:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_AUDIO:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v8, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 298
    .local v1, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->parent:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 299
    .end local v1    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    :cond_4
    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->IMAGE:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->type:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 300
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 301
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sget-object v6, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 302
    :cond_5
    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->LIVETV:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->type:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->subname:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v8, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 306
    .restart local v1    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget-object v3, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->parent:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method private initDIDLObject(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 194
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 197
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->playing:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    .end local p2    # "object":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_0
    :goto_0
    return-void

    .line 202
    .restart local p2    # "object":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_1
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    instance-of v2, p2, Lorg/teleal/cling/support/model/container/Container;

    if-eqz v2, :cond_2

    .line 206
    check-cast p2, Lorg/teleal/cling/support/model/container/Container;

    .end local p2    # "object":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->initContainer(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    goto :goto_0

    .line 210
    .restart local p2    # "object":Lorg/teleal/cling/support/model/DIDLObject;
    :cond_2
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->subname:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->playing:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->VIDEO:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->type:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-virtual {v2, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 214
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    :cond_3
    :goto_1
    invoke-static {p2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "objectUrl":Ljava/lang/String;
    instance-of v2, p2, Lorg/teleal/cling/support/model/item/AudioItem;

    if-nez v2, :cond_4

    instance-of v2, p2, Lorg/teleal/cling/support/model/item/MusicTrack;

    if-eqz v2, :cond_9

    .line 232
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->initMusicItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    .line 234
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 235
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->getCurrentTrackURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 237
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->playing:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->subname:Landroid/widget/TextView;

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 216
    .end local v0    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    .end local v1    # "objectUrl":Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->MUSIC:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->type:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-virtual {v2, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 217
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_AUDIO:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 218
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_AUDIO:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_AUDIO:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 219
    :cond_6
    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->IMAGE:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->type:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-virtual {v2, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 220
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE_LARGE:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE_LARGE:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE_LARGE:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 222
    :cond_7
    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->LIVETV:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->type:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    invoke-virtual {v2, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->subname:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->parent:Landroid/view/View;

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 243
    .restart local v0    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    .restart local v1    # "objectUrl":Ljava/lang/String;
    :cond_8
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->playing:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->subname:Landroid/widget/TextView;

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 248
    .end local v0    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    :cond_9
    instance-of v2, p2, Lorg/teleal/cling/support/model/item/VideoItem;

    if-eqz v2, :cond_a

    .line 250
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->initVideoItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    goto/16 :goto_0

    .line 252
    :cond_a
    instance-of v2, p2, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v2, :cond_0

    .line 254
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->initImageItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    goto/16 :goto_0
.end method

.method private initDeviceItem(Lorg/teleal/cling/model/meta/Device;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V
    .locals 3
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;

    .prologue
    const v2, 0x7f020039

    const/16 v1, 0x8

    .line 138
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->subname:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->playing:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    instance-of v0, p1, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->loadDeviceIcon(Lorg/teleal/cling/model/meta/Device;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method private initImageItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;

    .prologue
    .line 429
    iget-object v0, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 430
    iget-object v0, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 431
    iget-object v0, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->name_play_layout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 433
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->loadImageThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    .line 434
    return-void
.end method

.method private initMusicItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;

    .prologue
    .line 407
    iget-object v0, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 408
    iget-object v0, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_AUDIO:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 409
    iget-object v0, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v0, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->subname:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getCreator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->loadMusicAlbumArt(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    .line 413
    return-void
.end method

.method private initPlaylistItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "object"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;
    .param p3, "position"    # I

    .prologue
    const/16 v6, 0x8

    .line 438
    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "imageUrl":Ljava/lang/String;
    sget-object v4, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$1;->$SwitchMap$com$hisilicon$dlna$dmc$processor$model$PlaylistItem$Type:[I

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getType()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 473
    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 443
    :pswitch_0
    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 444
    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_AUDIO:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 446
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v2

    .line 447
    .local v2, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->getCurrentTrackURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 448
    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->playing:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 450
    :cond_1
    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->playing:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 455
    .end local v2    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    :pswitch_1
    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 456
    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 457
    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->playing:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 461
    :pswitch_2
    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->playing:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 464
    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_IMAGE:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 465
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v1, v4}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 466
    .local v1, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnBitMap(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 468
    .local v0, "cachedImage":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 469
    iget-object v4, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private initVideoItem(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;

    .prologue
    .line 417
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 418
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->BM_VIDEO:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 419
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getFirstResource()Lorg/teleal/cling/support/model/Res;

    move-result-object v0

    .line 421
    .local v0, "res":Lorg/teleal/cling/support/model/Res;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "time":Ljava/lang/String;
    :goto_0
    iget-object v2, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->subname:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/Utility;->timeStringToMinute(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f080047

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    invoke-direct {p0, p1, p2, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->loadVideoThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    .line 425
    return-void

    .line 421
    .end local v1    # "time":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private loadDeviceIcon(Lorg/teleal/cling/model/meta/Device;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V
    .locals 7
    .param p1, "device"    # Lorg/teleal/cling/model/meta/Device;
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->getDeviceIconUrl(Lorg/teleal/cling/model/meta/Device;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "iconUrl":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 164
    check-cast v3, Lorg/teleal/cling/model/meta/RemoteDevice;

    .line 166
    .local v3, "remoteDevice":Lorg/teleal/cling/model/meta/RemoteDevice;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
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

    .line 168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 169
    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/RemoteDevice;->getIdentity()Lorg/teleal/cling/model/meta/DeviceIdentity;

    move-result-object v5

    check-cast v5, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;

    invoke-virtual {v5}, Lorg/teleal/cling/model/meta/RemoteDeviceIdentity;->getDescriptorURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 170
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "urlString":Ljava/lang/String;
    iget-object v5, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 173
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v5, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v0, v5}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 174
    .local v0, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnBitMap(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 175
    .local v1, "catchBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 177
    iget-object v5, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private loadFirstItemThumb(ILorg/teleal/cling/support/model/container/Container;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/container/Container;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;

    .prologue
    .line 313
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v4

    .line 314
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/model/item/Item;>;"
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v5

    invoke-interface {v5}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getCurrentDMS()Lorg/teleal/cling/model/meta/Device;

    move-result-object v2

    .line 315
    .local v2, "device":Lorg/teleal/cling/model/meta/Device;
    instance-of v5, v2, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 316
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getNode(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;

    move-result-object v1

    .line 317
    .local v1, "contentNode":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
    if-nez v1, :cond_1

    .line 334
    .end local v1    # "contentNode":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
    :cond_0
    :goto_0
    return-void

    .line 319
    .restart local v1    # "contentNode":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
    :cond_1
    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->getContainer()Lorg/teleal/cling/support/model/container/Container;

    move-result-object v0

    .line 320
    .local v0, "container":Lorg/teleal/cling/support/model/container/Container;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lorg/teleal/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v4

    .line 325
    .end local v0    # "container":Lorg/teleal/cling/support/model/container/Container;
    .end local v1    # "contentNode":Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 326
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/teleal/cling/support/model/item/Item;

    .line 327
    .local v3, "item":Lorg/teleal/cling/support/model/item/Item;
    instance-of v5, v3, Lorg/teleal/cling/support/model/item/AudioItem;

    if-eqz v5, :cond_3

    .line 328
    invoke-direct {p0, p1, v3, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->loadMusicAlbumArt(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    goto :goto_0

    .line 329
    :cond_3
    instance-of v5, v3, Lorg/teleal/cling/support/model/item/VideoItem;

    if-eqz v5, :cond_4

    .line 330
    invoke-direct {p0, p1, v3, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->loadVideoThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    goto :goto_0

    .line 331
    :cond_4
    instance-of v5, v3, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v5, :cond_0

    .line 332
    invoke-direct {p0, p1, v3, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->loadImageThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method private loadImage(ILcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;
    .param p3, "objectUrl"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 347
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 348
    .local v0, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnImage(ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 349
    return-void
.end method

.method private loadImageThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;

    .prologue
    .line 380
    invoke-static {p2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "objectUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->mediaFromLocal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->loadLocalImage(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v2

    .line 391
    :cond_0
    const-class v2, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p2, v2}, Lorg/teleal/cling/support/model/DIDLObject;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    .line 392
    .local v1, "uri":Ljava/net/URI;
    if-eqz v1, :cond_1

    .line 393
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    :cond_1
    invoke-direct {p0, p1, p3, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->loadImage(ILcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadLocalImage(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;
    .param p4, "objectUrl"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-virtual {p2}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 400
    .local v2, "videoId":J
    iget-object v0, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 401
    new-instance v5, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v0, p3, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 402
    .local v5, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v0

    move v1, p1

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnLocalImageThumb(IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 403
    return-void
.end method

.method private loadLocalVideo(Lorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p2, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;
    .param p3, "objectUrl"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 374
    .local v2, "videoId":J
    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 375
    new-instance v0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;

    iget-object v1, p2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;-><init>(Landroid/widget/ImageView;)V

    .line 376
    .local v0, "callback":Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v1

    invoke-virtual {v1, v2, v3, p3, v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnLocalVideoThumb(JLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 377
    return-void
.end method

.method private loadMusicAlbumArt(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;

    .prologue
    .line 337
    const-class v2, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p2, v2}, Lorg/teleal/cling/support/model/DIDLObject;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    .line 338
    .local v1, "uri":Ljava/net/URI;
    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "objectUrl":Ljava/lang/String;
    invoke-direct {p0, p1, p3, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->loadImage(ILcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;Ljava/lang/String;)V

    .line 343
    .end local v0    # "objectUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private loadVideoThumb(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "object"    # Lorg/teleal/cling/support/model/DIDLObject;
    .param p3, "holder"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;

    .prologue
    .line 352
    invoke-static {p2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "objectUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->mediaFromLocal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    :try_start_0
    invoke-direct {p0, p2, p3, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->loadLocalVideo(Lorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v2

    .line 363
    :cond_1
    const-class v2, Lorg/teleal/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;

    invoke-virtual {p2, v2}, Lorg/teleal/cling/support/model/DIDLObject;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    .line 364
    .local v1, "uri":Ljava/net/URI;
    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-direct {p0, p1, p3, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->loadImage(ILcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 77
    if-eqz p2, :cond_0

    instance-of v4, p2, Landroid/widget/ProgressBar;

    if-eqz v4, :cond_1

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03000f

    invoke-virtual {v4, v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 82
    :cond_1
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_4

    .line 83
    const v4, 0x7f020001

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 90
    invoke-virtual {p0, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->setViewHolder(Landroid/view/View;)V

    .line 93
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;

    .line 95
    .local v2, "holder":Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    .line 97
    .local v0, "adapterItem":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v3

    .line 99
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {p2, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 100
    instance-of v4, v3, Lorg/teleal/cling/model/meta/Device;

    if-eqz v4, :cond_5

    .line 102
    const/16 v4, 0xa

    invoke-virtual {p2, v4, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 103
    check-cast v3, Lorg/teleal/cling/model/meta/Device;

    .end local v3    # "object":Ljava/lang/Object;
    invoke-direct {p0, v3, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->initDeviceItem(Lorg/teleal/cling/model/meta/Device;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    .line 118
    .end local p2    # "convertView":Landroid/view/View;
    :cond_3
    :goto_1
    return-object p2

    .line 85
    .end local v0    # "adapterItem":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .end local v2    # "holder":Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4
    const v4, 0x7f020002

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 105
    .restart local v0    # "adapterItem":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    .restart local v2    # "holder":Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;
    .restart local v3    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v4, v3, Lorg/teleal/cling/support/model/DIDLObject;

    if-eqz v4, :cond_3

    move-object v1, v3

    .line 107
    check-cast v1, Lorg/teleal/cling/support/model/DIDLObject;

    .line 108
    .local v1, "didlObject":Lorg/teleal/cling/support/model/DIDLObject;
    invoke-virtual {v1}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 110
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030014

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 114
    :cond_6
    invoke-direct {p0, p1, v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->initDIDLObject(ILorg/teleal/cling/support/model/DIDLObject;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;)V

    goto :goto_1
.end method

.method public notifyVisibleItemChanged(Landroid/widget/AbsListView;)V
    .locals 6
    .param p1, "gridView"    # Landroid/widget/AbsListView;

    .prologue
    .line 492
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 493
    .local v2, "start":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 494
    .local v0, "end":I
    :goto_1
    move v1, v2

    .local v1, "i":I
    :goto_2
    if-gt v1, v0, :cond_3

    .line 496
    sub-int v4, v1, v2

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 497
    .local v3, "view":Landroid/view/View;
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 498
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v1, v3, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 494
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 492
    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "start":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->getCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    goto :goto_0

    .line 493
    .restart local v2    # "start":I
    :cond_2
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->getCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_1

    .line 500
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public setOtherBrowse(Z)V
    .locals 0
    .param p1, "isOtherBrowse"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;->isOtherBrowse:Z

    .line 72
    return-void
.end method

.method public setViewHolder(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 123
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$1;)V

    .line 124
    .local v0, "viewHolder":Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;
    iput-object p1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->parent:Landroid/view/View;

    .line 125
    const v1, 0x7f0b003f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->name_play_layout:Landroid/widget/RelativeLayout;

    .line 126
    const v1, 0x7f0b002f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->title_layout:Landroid/widget/LinearLayout;

    .line 127
    const v1, 0x7f0b0040

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 128
    const v1, 0x7f0b0041

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->subname:Landroid/widget/TextView;

    .line 129
    const v1, 0x7f0b002d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 130
    const v1, 0x7f0b0033

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->music_num:Landroid/widget/TextView;

    .line 131
    const v1, 0x7f0b0042

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->playing:Landroid/widget/ImageView;

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    return-void
.end method
