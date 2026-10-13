.class Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemClickListener;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemClickListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v2, 0x7f020003

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 188
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 190
    .local v1, "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Ljava/util/List;)V

    .line 191
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v2, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1200(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Ljava/lang/Object;)V

    .line 193
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1300(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "LONGCLICK"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1300(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method
