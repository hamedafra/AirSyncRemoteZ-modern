.class Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BrowseVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field icon_box:Landroid/widget/ImageView;

.field icon_layout:Landroid/widget/FrameLayout;

.field right_arrow:Landroid/widget/ImageView;

.field subtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

.field title:Landroid/widget/TextView;

.field title_layout:Landroid/widget/LinearLayout;

.field view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;)V

    return-void
.end method
