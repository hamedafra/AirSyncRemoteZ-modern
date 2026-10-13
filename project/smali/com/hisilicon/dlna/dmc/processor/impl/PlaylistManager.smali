.class public Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistManager;
.super Ljava/lang/Object;
.source "PlaylistManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllPlaylistItem()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/hisilicon/dlna/dmc/data/PlaylistProvider;->PLAYLIST_ITEM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method private static contains(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Z
    .locals 5
    .param p0, "currentItem"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    .line 94
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-direct {v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;-><init>()V

    .line 95
    .local v1, "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setTitle(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getType()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    .line 97
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setUrl(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getMetaData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setMetaData(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistManager;->getAllPlaylistItem()Ljava/util/List;

    move-result-object v2

    .line 101
    .local v2, "playlistItems":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 102
    .local v0, "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    const/4 v3, 0x1

    .line 105
    .end local v0    # "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static cursorToPlaylistItem(Landroid/database/Cursor;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 10
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 42
    :try_start_0
    new-instance v4, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-direct {v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;-><init>()V

    .line 44
    .local v4, "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    const-string v8, "_id"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 45
    .local v2, "id":J
    const-string v8, "title"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "title":Ljava/lang/String;
    const-string v8, "url"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, "url":Ljava/lang/String;
    const-string v8, "type"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, "type":Ljava/lang/String;
    const-string v8, "metadata"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "metadata":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setId(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4, v5}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setTitle(Ljava/lang/String;)V

    .line 52
    invoke-static {v6}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->valueOf(Ljava/lang/String;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    .line 53
    invoke-virtual {v4, v7}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setUrl(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v4, v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setMetaData(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->fromLocalType()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 57
    invoke-virtual {v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "metadata":Ljava/lang/String;
    .end local v2    # "id":J
    .end local v4    # "playlistItem":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static deletePlaylistItem(J)Z
    .locals 8
    .param p0, "id"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 109
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/hisilicon/dlna/dmc/data/PlaylistProvider;->PLAYLIST_ITEM_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    new-array v5, v0, [Ljava/lang/String;

    .line 110
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 109
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getAllPlaylistItem()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Come into getAllPlaylistItem--><"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/hisilicon/dlna/dmc/data/PlaylistProvider;->PLAYLIST_ITEM_URI:Landroid/net/Uri;

    sget-object v2, Lcom/hisilicon/dlna/dmc/data/PlaylistSQLiteHelper;->PLALYLISTITEM_ALLCOLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 25
    .local v7, "itemsCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistManager;->cursorToPlaylistItem(Landroid/database/Cursor;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 31
    :cond_1
    if-eqz v7, :cond_2

    .line 32
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 36
    .end local v7    # "itemsCursor":Landroid/database/Cursor;
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    :cond_2
    :goto_0
    return-object v8

    .line 31
    .restart local v7    # "itemsCursor":Landroid/database/Cursor;
    .restart local v8    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 32
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 35
    .end local v7    # "itemsCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/Exception;
    move-object v8, v9

    .line 36
    goto :goto_0
.end method

.method public static insertPlaylistItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Z
    .locals 8
    .param p0, "playlistItem"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 68
    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistManager;->contains(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    :goto_0
    return v4

    .line 71
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "title"

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v6, "url"

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v6, "type"

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getType()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v6, "metadata"

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getMetaData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MyApp;->getResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/hisilicon/dlna/dmc/data/PlaylistProvider;->PLAYLIST_ITEM_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 80
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_1

    move v4, v5

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    const-string v6, "newid"

    invoke-virtual {v2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "newId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v1    # "newId":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    .line 89
    goto :goto_0
.end method
