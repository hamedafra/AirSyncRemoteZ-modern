.class Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;
.super Ljava/lang/Object;
.source "BrowseImageAdapter_New.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon_layout:Landroid/widget/FrameLayout;

.field item:Landroid/widget/ImageView;

.field item_box:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;)V

    return-void
.end method
