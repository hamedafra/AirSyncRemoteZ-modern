.class Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field music_num:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field name_play_layout:Landroid/widget/RelativeLayout;

.field parent:Landroid/view/View;

.field playing:Landroid/widget/ImageView;

.field subname:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;

.field title_layout:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$1;

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/CustomAdapter;)V

    return-void
.end method
