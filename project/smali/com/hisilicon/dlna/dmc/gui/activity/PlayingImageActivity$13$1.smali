.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13$1;
.super Ljava/lang/Object;
.source "PlayingImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1077
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$13;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$2500(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1079
    .local v0, "view":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1081
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
