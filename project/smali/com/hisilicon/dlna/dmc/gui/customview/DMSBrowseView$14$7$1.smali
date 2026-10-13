.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;)V
    .locals 0
    .param p1, "this$2"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->access$4400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    .line 1265
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;->FAILURE:Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v1, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$4500(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->access$4300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    .line 1268
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->access$4400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;->this$2:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$7$1;)V

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$3200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Ljava/lang/Runnable;)V

    .line 1283
    return-void
.end method
