.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$6;
.super Ljava/lang/Object;
.source "PlayingVideoActivity.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChanged(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V
    .locals 1
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .param p2, "changeMode"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$6;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->access$100(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    :cond_0
    return-void
.end method
