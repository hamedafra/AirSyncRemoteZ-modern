.class Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field count:Landroid/widget/TextView;

.field folderName:Landroid/widget/TextView;

.field icon_layout:Landroid/widget/FrameLayout;

.field item:Landroid/widget/ImageView;

.field item_box:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$1;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;)V

    return-void
.end method
