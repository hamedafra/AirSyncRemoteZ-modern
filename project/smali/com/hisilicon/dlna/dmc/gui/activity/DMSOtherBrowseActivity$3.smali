.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$3;
.super Ljava/lang/Object;
.source "DMSOtherBrowseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->progressDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    return-void
.end method
