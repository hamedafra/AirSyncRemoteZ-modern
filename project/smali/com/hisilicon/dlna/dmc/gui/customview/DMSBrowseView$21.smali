.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$21;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 1822
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$21;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChanged(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V
    .locals 1
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .param p2, "changeMode"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$21;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v0, p1, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->playlistItemChanged(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V

    .line 1828
    return-void
.end method
