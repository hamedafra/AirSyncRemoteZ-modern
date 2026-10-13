.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5$1;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;)V
    .locals 0
    .param p1, "this$2"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->access$4000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    .line 1207
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->FAILURE:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4100(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->access$3900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    .line 1210
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->access$4000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->access$4200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    .line 1214
    return-void
.end method
