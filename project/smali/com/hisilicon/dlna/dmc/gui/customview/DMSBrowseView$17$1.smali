.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$1;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->musicBrowseFailure(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressDismiss()V

    .line 1589
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$17;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1590
    return-void
.end method
