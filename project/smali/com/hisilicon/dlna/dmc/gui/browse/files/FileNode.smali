.class public Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;
.super Ljava/lang/Object;
.source "FileNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private imageItem:Lorg/teleal/cling/support/model/item/ImageItem;

.field private picNode:Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;


# direct methods
.method public constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;Lorg/teleal/cling/support/model/item/ImageItem;)V
    .locals 0
    .param p1, "picNode"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;
    .param p2, "imageItem"    # Lorg/teleal/cling/support/model/item/ImageItem;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;->picNode:Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;

    .line 14
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;->imageItem:Lorg/teleal/cling/support/model/item/ImageItem;

    .line 15
    return-void
.end method


# virtual methods
.method public getImageItem()Lorg/teleal/cling/support/model/item/ImageItem;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;->imageItem:Lorg/teleal/cling/support/model/item/ImageItem;

    return-object v0
.end method

.method public getPictureNode()Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;->picNode:Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;

    return-object v0
.end method

.method public setImageItem(Lorg/teleal/cling/support/model/item/ImageItem;)V
    .locals 0
    .param p1, "imageItem"    # Lorg/teleal/cling/support/model/item/ImageItem;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;->imageItem:Lorg/teleal/cling/support/model/item/ImageItem;

    .line 28
    return-void
.end method

.method public setPictureNode(Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;)V
    .locals 0
    .param p1, "picNode"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;->picNode:Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;

    .line 22
    return-void
.end method
