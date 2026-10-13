.class Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity$FolderItemClickListener;
.super Ljava/lang/Object;
.source "FoldersActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity$FolderItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity$FolderItemClickListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 54
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity$FolderItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "FolderTitle"

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity$FolderItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;->getFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity$FolderItemClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method
