.class public Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;
.super Landroid/app/Activity;
.source "FoldersActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity$FolderItemClickListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private folderBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;",
            ">;"
        }
    .end annotation
.end field

.field private folders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGridView_Folders:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->folderBeans:Ljava/util/List;

    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 39
    const v1, 0x7f0b0047

    invoke-virtual {p0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->mGridView_Folders:Landroid/widget/GridView;

    .line 40
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->folders:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->subGroupOfImage(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->folderBeans:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->mGridView_Folders:Landroid/widget/GridView;

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;-><init>(Landroid/content/Context;Landroid/widget/GridView;)V

    .line 42
    .local v0, "adapter":Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->folderBeans:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderAdapter;->addFolderBeans(Ljava/util/List;)V

    .line 43
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->mGridView_Folders:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->mGridView_Folders:Landroid/widget/GridView;

    new-instance v2, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity$FolderItemClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity$FolderItemClickListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    return-void
.end method

.method private subGroupOfImage(Ljava/util/HashMap;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "mGruopMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;>;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 71
    :cond_0
    const/4 v3, 0x0

    .line 88
    :cond_1
    return-object v3

    .line 73
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 76
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;>;>;"
    new-instance v4, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;

    invoke-direct {v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;-><init>()V

    .line 79
    .local v4, "mImageBean":Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 82
    .local v5, "value":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;>;"
    invoke-virtual {v4, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;->setFolderName(Ljava/lang/String;)V

    .line 83
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;->setFileCounts(I)V

    .line 84
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;

    invoke-virtual {v6}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;->getPictureNode()Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;->setTopImagePath(Ljava/lang/String;)V

    .line 85
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onBackClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->finish()V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->setContentView(I)V

    .line 33
    iput-object p0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->context:Landroid/content/Context;

    .line 34
    sget-object v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mGruopMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->folders:Ljava/util/HashMap;

    .line 35
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FoldersActivity;->initView()V

    .line 36
    return-void
.end method
