.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$10;
.super Ljava/lang/Object;
.source "DMSOtherBrowseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->upOneLevel()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

.field final synthetic val$parentID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$10;->val$parentID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1600(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$10;->val$parentID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    return-void
.end method
