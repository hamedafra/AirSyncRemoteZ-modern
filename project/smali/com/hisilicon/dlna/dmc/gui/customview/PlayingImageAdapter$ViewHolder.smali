.class Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PlayingImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field icon_box:Landroid/widget/ImageView;

.field icon_layout:Landroid/widget/FrameLayout;

.field parent:Landroid/view/View;

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$1;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;)V

    return-void
.end method
