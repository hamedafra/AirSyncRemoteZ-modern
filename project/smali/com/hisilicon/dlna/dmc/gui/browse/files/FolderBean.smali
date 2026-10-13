.class public Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;
.super Ljava/lang/Object;
.source "FolderBean.java"


# instance fields
.field private fileCounts:I

.field private folderName:Ljava/lang/String;

.field private topImagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileCounts()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;->fileCounts:I

    return v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getTopImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;->topImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public setFileCounts(I)V
    .locals 0
    .param p1, "fileCounts"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;->fileCounts:I

    .line 37
    return-void
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;->folderName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setTopImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "topImagePath"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FolderBean;->topImagePath:Ljava/lang/String;

    .line 21
    return-void
.end method
