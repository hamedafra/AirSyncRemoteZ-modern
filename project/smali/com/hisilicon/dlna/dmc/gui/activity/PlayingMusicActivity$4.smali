.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$4;
.super Ljava/lang/Object;
.source "PlayingMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 224
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getShuffle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setShuffle(Z)V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity$4;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setShuffle(Z)V

    goto :goto_0
.end method
