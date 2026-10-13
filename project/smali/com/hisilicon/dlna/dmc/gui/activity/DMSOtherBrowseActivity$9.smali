.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$9;
.super Ljava/lang/Object;
.source "DMSOtherBrowseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->playlistItemChanged(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

.field final synthetic val$changeMode:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

.field final synthetic val$dmrProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

.field final synthetic val$item:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$9;->val$changeMode:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$9;->val$dmrProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    iput-object p4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$9;->val$item:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 569
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->UNKNOW:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$9;->val$changeMode:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    if-eq v0, v1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$9;->val$dmrProcessor:Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$9;->val$item:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->setURIandPlay(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$9;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->notifyDataSetChanged()V

    .line 572
    return-void
.end method
