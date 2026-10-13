.class Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BrowseMusicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field icon_box:Landroid/widget/ImageView;

.field icon_layout:Landroid/widget/FrameLayout;

.field music_num:Landroid/widget/TextView;

.field right_arrow:Landroid/widget/ImageView;

.field subtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

.field title:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;)V

    return-void
.end method
