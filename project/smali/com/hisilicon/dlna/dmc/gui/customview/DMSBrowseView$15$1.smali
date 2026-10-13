.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$1;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->imageBrowseFailure(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15$1;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;

    iget-object v0, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$15;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->progressDismiss()V

    .line 1341
    return-void
.end method
