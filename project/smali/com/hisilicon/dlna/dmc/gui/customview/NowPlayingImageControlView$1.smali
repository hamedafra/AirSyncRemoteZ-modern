.class Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$1;
.super Ljava/lang/Object;
.source "NowPlayingImageControlView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$000(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->setCurrentPosition(I)V

    .line 66
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView$1;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->access$000(Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;)Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/PlayingImageAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
