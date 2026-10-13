.class Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$2;
.super Ljava/lang/Object;
.source "FileData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x64

    const/4 v13, 0x1

    .line 97
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 98
    .local v1, "mImageUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$300(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const-string v3, "mime_type=? or mime_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "image/jpeg"

    aput-object v12, v4, v5

    const-string v5, "image/png"

    aput-object v5, v4, v13

    const-string v5, "date_modified"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 106
    .local v8, "mCursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 148
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 110
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$400(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 111
    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mGruopMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 112
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 114
    const-string v2, "_data"

    .line 115
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 114
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, "parentName":Ljava/lang/String;
    new-instance v11, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;

    invoke-direct {v11}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;-><init>()V

    .line 120
    .local v11, "picNode":Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;
    invoke-virtual {v11, v10}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->setPath(Ljava/lang/String;)V

    .line 121
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->setId(J)V

    .line 122
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->setTitle(Ljava/lang/String;)V

    .line 123
    const-string v2, "mime_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->setMimeType(Ljava/lang/String;)V

    .line 124
    const-string v2, "_size"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;->setSize(J)V

    .line 126
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v14, :cond_1

    .line 127
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$100(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v14, :cond_2

    .line 131
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$500(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v2, v11}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$600(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;)Lorg/teleal/cling/support/model/item/ImageItem;

    move-result-object v7

    .line 134
    .local v7, "it":Lorg/teleal/cling/support/model/item/ImageItem;
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->access$400(Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mGruopMap:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 138
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v6, "chileList":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;>;"
    new-instance v2, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;

    invoke-direct {v2, v11, v7}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;Lorg/teleal/cling/support/model/item/ImageItem;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mGruopMap:Ljava/util/HashMap;

    invoke-virtual {v2, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 143
    .end local v6    # "chileList":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;>;"
    :cond_3
    sget-object v2, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileData;->mGruopMap:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;

    invoke-direct {v3, v11, v7}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FileNode;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;Lorg/teleal/cling/support/model/item/ImageItem;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 147
    .end local v7    # "it":Lorg/teleal/cling/support/model/item/ImageItem;
    .end local v9    # "parentName":Ljava/lang/String;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "picNode":Lcom/hisilicon/dlna/dmc/gui/browse/files/PictureNode;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
