.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$3;
.super Ljava/lang/Object;
.source "PlayingMusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->hideWarnLayout()V

    .line 216
    return-void
.end method
