.class public Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;
.super Ljava/lang/Object;
.source "PictureNode.java"


# instance fields
.field private id:J

.field private mimeType:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->id:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->size:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->id:J

    .line 26
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->mimeType:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->path:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->size:J

    .line 38
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->title:Ljava/lang/String;

    .line 20
    return-void
.end method
