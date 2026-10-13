.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->rootFloorVideoAndMusicBrowse()V
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
    .line 1195
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;->this$1:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;->access$3900(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14;)V

    .line 1201
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$14$5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1216
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1217
    return-void
.end method
