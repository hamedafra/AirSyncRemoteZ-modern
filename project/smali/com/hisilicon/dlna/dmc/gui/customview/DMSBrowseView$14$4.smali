.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$4;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->rootImageBrowse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$4;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1170
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$4;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "IMAGE"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1171
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$4;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->UNKOWN:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3602(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .line 1174
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$4;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$2900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/String;I)V

    .line 1179
    :goto_0
    return-void

    .line 1176
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$4;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->VOID:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    invoke-static {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3602(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    .line 1177
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$4;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressDismiss()V

    goto :goto_0
.end method
