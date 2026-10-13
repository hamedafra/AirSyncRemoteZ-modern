.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1$1;
.super Ljava/lang/Object;
.source "DMSBrowseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->updateDMRDevice()V

    .line 136
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->updateDMSDevice()V

    .line 137
    return-void
.end method
