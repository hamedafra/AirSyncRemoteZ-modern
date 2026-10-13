.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1$1;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1$1;->this$3:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1$1;->this$3:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    move-result-object v0

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->VOID:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1$1;->this$3:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    move-result-object v0

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->VOID:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1$1;->this$3:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4500(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    move-result-object v0

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->VOID:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    if-ne v0, v1, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1$1;->this$3:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080033

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1281
    :cond_0
    return-void
.end method
